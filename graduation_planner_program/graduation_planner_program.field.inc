<?php

/**
 * @file
 * Field include file for graduation_planner_program.
 */

/**
 * Implements hook_field_is_empty().
 */
function graduation_planner_program_field_is_empty($item, $field) {

  switch ($field['type']) {
    case 'course':
      if (!isset($item['course_id']) || (isset($item['course_id']) && empty($item['course_id']) && (string) $item['course_id'] == '0' || !is_numeric($item['course_id']))) {
        return TRUE;
      }
      break;
  }

  return FALSE;
}

/**
 * Implements hook_field_info().
 */
function graduation_planner_program_field_info() {
  $fields = array();
  $fields['course'] = array(
    'label' => t('Courses'),
    'description' => t('Courses'),
    'default_widget' => 'course_widget',
    'default_formatter' => 'graduation_planner_program_course_formatter',
  );

  return $fields;
}

/**
 * Implements hook_field_widget_info().
 */
function graduation_planner_program_field_widget_info() {
  $widgets = array();
  $widgets['course_widget'] = array(
    'label' => t('Course widget'),
    'field types' => array('course'),
    'behaviors' => array(
      'multiple values' => FIELD_BEHAVIOR_DEFAULT,
      'default value' => FIELD_BEHAVIOR_DEFAULT,
    ),
  );
  return $widgets;
}

/**
 * Implements hook_field_formatter_info().
 */
function graduation_planner_program_field_formatter_info() {
  return array(
    'graduation_planner_program_course_formatter' => array(
      'label' => t('Courses'),
      'field types' => array('course'),
    ),
  );
}

/**
 * Implements hook_field_formatter_view().
 */
function graduation_planner_program_field_formatter_view($entity_type, $entity, $field, $instance, $langcode, $items, $display) {
  $element = array();
  $settings = $display['settings'];

  switch ($display['type']) {
    case 'graduation_planner_program_course_formatter':

      foreach ($items as $delta => $item) {
        $class = graduation_planner_class_load($item['course_id']);
        $element[$delta] = array('#markup' => graduation_planner_class_title($class));
      }
      break;
  }
  return $element;
}

/**
 * Get class options, given a department object.
 *
 * @param object $department
 *   The department to locate classes for.
 *
 * @return array
 *   An array of classes within a department.
 */
function graduation_planner_program_get_class_options($department = NULL) {

  if (isset($department)) {
    $result = db_query('SELECT class_id FROM {graduation_planner_class} gpc WHERE gpc.class_department = :department', array('department' => $department));
  }
  else {
    $result = db_query('SELECT class_id FROM {graduation_planner_class} gpc');
  }
  $class_ids = $result->fetchAllAssoc('class_id');
  $classes = graduation_planner_class_load_multiple(array_keys($class_ids));
  $options = array();
  foreach ($classes as $class) {
    $options[$class->class_id] = t('@class_title', array('@class_title' => check_plain(graduation_planner_class_title($class))));
  }
  return $options;
}

/**
 * Implements hook_field_widget_form().
 */
function graduation_planner_program_field_widget_form(&$form, &$form_state, $field, $instance, $langcode, $items, $delta, $base_element) {

  $element = $base_element;
  switch ($instance['widget']['type']) {
    case 'course_widget':

      if (isset($items[$delta]['course_id'])) {
        $class = graduation_planner_class_load($items[$delta]['course_id']);
      }
      if (isset($items[$delta]['department_id'])) {
        $department_id = $items[$delta]['department_id'];
      }
      elseif (isset($class->class_department)) {
        $department_id = $class->class_department;
      }
      else {
        $department_id = NULL;
      }

      $element['#prefix'] = '<div class="course_widget">';
      $element['#suffix'] = '</div>';
      $element['department_id'] = array(
        '#type' => 'select',
        '#default_value' => isset($class->class_department) ? $class->class_department : NULL,
        '#empty_option' => t('-Select-'),
        '#empty_value' => 0,
        '#prefix' => '<div class="text-full-wrapper">',
        '#title' => t('Department'),
        '#options' => graduation_planner_department_get_departments(),
        '#suffix' => '</div>',
        '#ajax' => array(
          'callback' => 'graduation_planner_program_field_class_ajax_callback',
          'wrapper' => 'course_id-' . $field['field_name'] . '-' . $delta,
        ),
      );

      if (isset($form_state['values'][$instance['field_name']][LANGUAGE_NONE][$delta])) {
        $department_id = $form_state['values'][$instance['field_name']][LANGUAGE_NONE][$delta]['department_id'];
      }
      $element['course_id'] = array(
        '#type' => 'select',
        '#default_value' => isset($items[$delta]['course_id']) ? $items[$delta]['course_id'] : NULL,
        '#disabled' => !isset($department_id),
        '#empty_option' => t('-Select-'),
        '#empty_value' => 0,
        '#prefix' => '<div class="text-full-wrapper" id="course_id-' . $field['field_name'] . '-' . $delta . '">',
        '#title' => t('Course'),
        '#options' => graduation_planner_program_get_class_options($department_id),
        '#suffix' => '</div>',
      );
      $element['ordered'] = array(
        '#type' => 'checkbox',
        '#default_value' => isset($items[$delta]['ordered']) ? $items[$delta]['ordered'] : 0,
        '#title' => t('Ordered'),
      );
      $element['place'] = array(
        '#type' => 'select',
        '#title' => t('Placement'),
        '#options' => array(
          0 => t('Do not place.'),
          1 => t('Place earlier'),
          2 => t('Place normally'),
          3 => t('Place later'),
        ),
        '#default_value' => isset($items[$delta]['place']) ? $items[$delta]['place'] : 2,
      );
      break;
  }

  return $element;
}

/**
 * Get the course_id from the widget.
 *
 * @param array $form
 *   Form array generated by form builder functions.
 * @param array $form_state
 *   Current form_state, passed by reference.
 *
 * @return int
 *   Return the course_id selected.
 */
function graduation_planner_program_field_class_ajax_callback($form, &$form_state) {

  $parents = $form_state['triggering_element']['#parents'];
  array_pop($parents);
  $element = drupal_array_get_nested_value($form, $parents);
  return $element['course_id'];
}

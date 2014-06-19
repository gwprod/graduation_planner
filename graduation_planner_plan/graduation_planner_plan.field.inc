<?php

/**
 * @file
 * Include file for graduation planner plan fields.
 */

/**
 * Implements hook_field_is_empty().
 */
function graduation_planner_plan_field_is_empty($item, $field) {

  switch ($field['type']) {
    case 'plan_courses':
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
function graduation_planner_plan_field_info() {
  $fields = array();
  $fields['plan_courses'] = array(
    'label' => t('Plan courses'),
    'description' => t('Plan courses'),
    'default_widget' => 'plan_courses_widget',
    'default_formatter' => 'graduation_planner_plan_plan_courses_formatter',
  );

  return $fields;
}

/**
 * Implements hook_field_widget_info().
 */
function graduation_planner_plan_field_widget_info() {
  $widgets = array();
  $widgets['plan_courses_widget'] = array(
    'label' => t('Plan course widget'),
    'field types' => array('plan_courses'),
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
function graduation_planner_plan_field_formatter_info() {
  return array(
    'graduation_planner_plan_plan_courses_formatter' => array(
      'label' => t('Plan courses'),
      'field types' => array('plan_courses'),
    ),
  );
}

/**
 * Implements hook_field_formatter_view().
 */
function graduation_planner_plan_field_formatter_view($entity_type, $entity, $field, $instance, $langcode, $items, $display) {
  $element = array();
  $settings = $display['settings'];

  switch ($display['type']) {
    case 'graduation_planner_plan_plan_courses_formatter':
      foreach ($items as $delta => $item) {
        $class = graduation_planner_class_load($item['course_id']);
        $element[$delta] = array('#markup' => graduation_planner_class_title($class));
      }
      break;
  }
  return $element;
}

/**
 * Implements hook_field_widget_form().
 */
function graduation_planner_plan_field_widget_form(&$form, &$form_state, $field, $instance, $langcode, $items, $delta, $base_element) {

  $element = $base_element;
  switch ($instance['widget']['type']) {
    case 'plan_courses_widget':

      $element['#prefix'] = '<div class="course_requirement_widget" id="' . $field['field_name'] . '-' . $delta . '">';
      $element['#suffix'] = '</div>';
      $courses = graduation_planner_class_get_class_options();
      $element['course_name'] = array(
        '#markup' => isset($items[$delta]['course_id']) ? $courses[$items[$delta]['course_id']] : NULL,
      );
      $element['course_id'] = array(
        '#type' => 'hidden',
        '#value' => isset($items[$delta]['course_id']) ? $items[$delta]['course_id'] : NULL,
      );
      $element['course_term'] = array(
        '#type' => 'hidden',
        '#value' => isset($items[$delta]['course_term']) ? $items[$delta]['course_term'] : NULL,
      );
      $element['course_year'] = array(
        '#type' => 'hidden',
        '#value' => isset($items[$delta]['course_year']) ? $items[$delta]['course_year'] : NULL,
      );
      $element['course_placed'] = array(
        '#type' => 'hidden',
        '#value' => isset($items[$delta]['course_placed']) ? $items[$delta]['course_placed'] : NULL,
      );

      break;
  }

  return $element;
}

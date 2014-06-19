<?php

/**
 * @file
 * Field include file for graduation_planner_class
 */

/**
 * Utility function to determine if this field value is empty.
 *
 * @param array $item
 *   The item array
 * @param array $field
 *   The field array
 *
 * @return bool
 *   Returns whether or not the field is empty
 */
function graduation_planner_class_field_is_empty($item, $field) {

  // Based on the field type, choose the method of determining emptiness.
  switch ($field['type']) {

    // If 'course_requirements'...
    case 'course_requirement':

      if (!isset($item['course_id']) || (isset($item['course_id']) && empty($item['course_id']) && (string) $item['course_id'] == '0' || !is_numeric($item['course_id']))) {
        return TRUE;
      }
      break;

    case 'quarters_available':
      break;
  }

  // Otherwise, return false.

  return FALSE;
}

/**
 * Implements hook_field_info().
 */
function graduation_planner_class_field_info() {
  $fields = array();
  $fields['course_requirement'] = array(
    'label' => t('Course requirements'),
    'description' => t('Course requirements'),
    'default_widget' => 'course_requirement_widget',
    'default_formatter' => 'graduation_planner_class_course_requirement_formatter',
  );
  $fields['quarters_available'] = array(
    'label' => t('Quarters available'),
    'description' => t('Quarters available'),
    'default_widget' => 'quarters_available_widget',
    'default_formatter' => 'graduation_planner_class_quarters_available_formatter',
  );
  return $fields;
}

/**
 * Implements hook_field_widget_info().
 */
function graduation_planner_class_field_widget_info() {
  $widgets = array();
  $widgets['course_requirement_widget'] = array(
    'label' => t('Course requirement widget'),
    'field types' => array('course_requirement'),
    'behaviors' => array(
      'multiple values' => FIELD_BEHAVIOR_DEFAULT,
      'default value' => FIELD_BEHAVIOR_DEFAULT,
    ),
  );
  $widgets['quarters_available_widget'] = array(
    'label' => t('Quarters available widget'),
    'field types' => array('quarters_available'),
    'behaviors' => array(
      'multiple values' => FIELD_BEHAVIOR_DEFAULT,
      'default value' => FIELD_BEHAVIOR_DEFAULT,
    ),
  );
  return $widgets;
}

/**
 * Retrieve the quarters available from the field_quarters_available field.
 *
 * @param object $class
 *   The graduation planner class.
 *
 * @return array
 *   Return the quarters available.
 */
function graduation_planner_class_quarters_available_field_data($class) {
  if (isset($class->field_quarters_available[LANGUAGE_NONE][0])) {
    $quarters_available = array(
      0 => $class->field_quarters_available[LANGUAGE_NONE][0]['fall_quarter'],
      1 => $class->field_quarters_available[LANGUAGE_NONE][0]['winter_quarter'],
      2 => $class->field_quarters_available[LANGUAGE_NONE][0]['spring_quarter'],
      3 => $class->field_quarters_available[LANGUAGE_NONE][0]['summer_quarter'],
    );
    return $quarters_available;
  }
  return array(
    0, 0, 0, 0,
  );
}

/**
 * Implements hook_field_formatter_info().
 */
function graduation_planner_class_field_formatter_info() {
  return array(
    'graduation_planner_class_course_requirement_formatter' => array(
      'label' => t('Course requirements'),
      'field types' => array('course_requirement'),
    ),
    'graduation_planner_class_quarters_available_formatter' => array(
      'label' => t('Quarters available'),
      'field types' => array('quarters_available'),
    ),
  );
}

/**
 * Function which generates view arrays based upon a specific formatter.
 *
 * @param string $entity_type
 *   The entity type.
 * @param object $entity
 *   The entity object.
 * @param array $field
 *   The field specification array.
 * @param array $instance
 *   The field instance array.
 * @param string $langcode
 *   The language code.
 * @param array $items
 *   An array of items.
 * @param string $display
 *   The display type
 *
 * @return array
 *   The modified element
 */
function graduation_planner_class_field_formatter_view($entity_type, $entity, $field, $instance, $langcode, $items, $display) {
  $element = array();
  $settings = $display['settings'];

  switch ($display['type']) {
    case 'graduation_planner_class_course_requirement_formatter':

      // Common case: each value is displayed individually in a sub-element
      // keyed by delta. The field.tpl.php template specifies the markup
      // wrapping each value.

      foreach ($items as $delta => $item) {
        $class = graduation_planner_class_load($item['course_id']);
        $element[$delta] = array('#markup' => graduation_planner_class_title($class));
      }
      break;

    case 'graduation_planner_class_quarters_available_formatter':

      // More elaborate formatters can defer to a theme function for easier
      // customization.

      foreach ($items as $delta => $item) {
        $quarters = array(
          !empty($item['fall_quarter']) ? t('Fall') : NULL,
          !empty($item['winter_quarter']) ? t('Winter') : NULL,
          !empty($item['spring_quarter']) ? t('Spring') : NULL,
          !empty($item['summer_quarter']) ? t('Summer') : NULL,
        );
        $element[$delta] = array(
          '#markup' => implode(', ', array_filter($quarters)),
        );
      }
      break;
  }
  return $element;
}

/**
 * Get the class options available.
 *
 * @param array $exclude
 *   Options to exclude from display.
 *
 * @return array
 *   The class options available.
 */
function graduation_planner_class_get_class_options($exclude = array()) {

  // Use the advanced drupal_static pattern for caching across the request.
  $options = &drupal_static(__FUNCTION__);

  // If this has not already been calculated...
  if (!isset($options)) {

    // Retrieve the class_ids from graduation_planner_class.
    $result = db_query('SELECT class_id FROM {graduation_planner_class} gpc');
    $class_ids = $result->fetchAllAssoc('class_id');

    // Load the classes by class_id.
    $classes = graduation_planner_class_load_multiple(array_keys($class_ids));
    $options = array();

    // Iterate over the class array...
    foreach ($classes as $class) {

      // Adding titles into options.
      $options[$class->class_id] = t('@title', array('@title' => graduation_planner_class_title($class)));
    }
  }

  // Return options.
  return $options;
}

/**
 * Doesn't do much.  For debugging purposes as of now.
 *
 * @param array $element
 *   The element array.
 *
 * @param array $form_state
 *   The current form_state, passed by reference.
 */
function _course_requirement_widget_validate($element, &$form_state) {
  watchdog('_course_requirement_widget_validate', print_r($form_state, TRUE));
}

/**
 * Generates the widget for fields.
 *
 * @param array $form
 *   The form array, generated by the form builder functions.
 *
 * @param array $form_state
 *   The current form_state, passed by reference.
 *
 * @param array $field
 *   The field array.
 *
 * @param array $instance
 *   The specific instance of the field.
 *
 * @param string $langcode
 *   The language code.
 *
 * @param array $items
 *   An array of specific items for the field.
 *
 * @param int $delta
 *   The specific item ID.
 *
 * @param array $base_element
 *   The underlying element to be modified.
 *
 * @return array
 *   The modified form element.
 */
function graduation_planner_class_field_widget_form(&$form, &$form_state, $field, $instance, $langcode, $items, $delta, $base_element) {

  $element = $base_element;
  switch ($instance['widget']['type']) {
    case 'course_requirement_widget':

      $element['#prefix'] = '<div class="course_requirement_widget">';
      $element['#suffix'] = '</div>';
      $element['course_id'] = array(
        '#type' => 'select',
        '#default_value' => isset($items[$delta]['course_id']) ? $items[$delta]['course_id'] : NULL,
        '#empty_option' => t('-Select-'),
        '#empty_value' => 0,
        '#prefix' => '<div class="text-full-wrapper">',
        '#title' => t('Course requirement'),
        '#options' => graduation_planner_class_get_class_options(),
        '#element_validate' => array('_course_requirement_widget_validate'),
        '#suffix' => '</div>',
      );

      $element['co_requisite'] = array(
        '#type' => 'checkbox',
        '#default_value' => isset($items[$delta]['co_requisite']) ? $items[$delta]['co_requisite'] : NULL,
        '#title' => t('Co-Requisite Requirement?'),
      );
      break;

    case 'quarters_available_widget':

      $element += array(
        '#type' => 'fieldset',
        '#title' => t('@title', array('@title' => check_plain($element['#title']))),
      );
      $element['fall_quarter'] = array(
        '#type' => 'checkbox',
        '#default_value' => isset($items[$delta]['fall_quarter']) ? $items[$delta]['fall_quarter'] : NULL,
        '#title' => t('Fall quarter'),
      );
      $element['winter_quarter'] = array(
        '#type' => 'checkbox',
        '#default_value' => isset($items[$delta]['winter_quarter']) ? $items[$delta]['winter_quarter'] : NULL,
        '#title' => t('Winter quarter'),
      );
      $element['spring_quarter'] = array(
        '#type' => 'checkbox',
        '#default_value' => isset($items[$delta]['spring_quarter']) ? $items[$delta]['spring_quarter'] : NULL,
        '#title' => t('Spring quarter'),
      );
      $element['summer_quarter'] = array(
        '#type' => 'checkbox',
        '#default_value' => isset($items[$delta]['summer_quarter']) ? $items[$delta]['summer_quarter'] : NULL,
        '#title' => t('Summer quarter'),
      );
      break;
  }

  return $element;
}

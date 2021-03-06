<?php

/**
 * @file
 * Administration include file for graduation planner
 */

/**
 * Graduation Planner Admin Form.
 *
 * @param array $form
 *   The initial form provided by the form builder functions
 * @param array $form_state
 *   The current state of the form, passed by reference
 *
 * @return array
 *   The renderable form array
 */
function graduation_planner_admin_form($form, &$form_state) {

  // Retrieve the graduation planner variables.

  $variables = graduation_planner_variables();

  // Create the debug control group as a tree.

  $form['debug'] = array(
    '#tree' => TRUE,
  );

  // Display debugging messages.

  $form['debug']['show_debug'] = array(
    '#type' => 'checkbox',
    '#default_value' => isset($variables['debug']['show_debug']) ? $variables['debug']['show_debug'] : 0,
    '#title' => t('Display debug information'),
  );

  /*
   * Method to display debugging messages,
   * either watchdog or drupal_set_message.
   */

  $form['debug']['method'] = array(
    '#type' => 'select',
    '#title' => t('Debug method'),
    '#options' => array(
      'watchdog' => t('Watchdog'),
      'drupal_set_message' => t('Drupal set message'),
    ),
    '#default_value' => isset($variables['debug']['method']) ? $variables['debug']['method'] : 0,
  );

  $form['configuration'] = array(
    '#tree' => TRUE,
  );
  $form['configuration']['global'] = array(
    '#type' => 'fieldset',
    '#title' => t('Global configuration'),
    '#tree' => TRUE,
  );
  $class_standing = $variables['configuration']['global']['class_standing'];
  $form['configuration']['global']['class_standing'] = array(
    '#type' => 'textarea',
    '#title' => t('Class standings.'),
    '#description' => t('Enter class standings, one per line, in the following format: units|standing name.  For instance, 0|Freshman or 45|Senior.  Changing this after initial configuration could have severe ramifications.'),
    '#default_value' => isset($class_standing) ? $class_standing : '',
    '#required' => TRUE,
  );
  $term_type = $variables['configuration']['global']['term_type'];
  $form['configuration']['global']['term_type'] = array(
    '#type' => 'radios',
    '#title' => t('Term type'),
    '#options' => array(
      'quarter' => t('Quarters'),
      'semester' => t('Semesters'),
    ),
    '#default_value' => isset($term_type) ? $term_type : 0,
    '#required' => TRUE,
    '#description' => t('The type of term used.  Currently supports quarters and semesters.'),
  );

  $terms = $variables['configuration']['global']['terms'];
  $form['configuration']['global']['terms'] = array(
    '#type' => 'textarea',
    '#title' => t('Terms'),
    '#required' => TRUE,
    '#default_value' => isset($terms) ? $terms : '',
    '#description' => t('Enter terms, one per line, in the following format: <machine_name>|<display_name>.  For instance, summer_semester|Summer Semester or fall_quarter|Fall Quarter.'),
  );
  // Return the form structure.
  return $form;
}

/**
 * Validate terms to make sure they're valid.
 *
 * @param array $element
 *   The element array.
 * @param array $form_state
 *   The form state, passed by reference.
 */
function _graduation_planner_validate_terms(array $element, array &$form_state) {
  if (isset($form_state['values']['configuration']['global']['terms'])) {
    $terms = $form_state['values']['configuration']['global']['terms'];
    $terms_array = array();
    $temp_term_array = preg_split('', $terms);
    foreach ($temp_term_array as $term) {
      list($machine_name, $name) = explode('|', $term);
      $terms_array[$machine_name] = $name;
    }
    form_set_value($element, $terms_array, $form_state);
  }
  else {
    form_set_error($element['#name'], t('Terms cannot be empty.'));
  }
}

/**
 * Admin form submission function.
 *
 * @param array $form
 *   The form generated by the form builder functions.
 * @param array $form_state
 *   The form state, passed by reference.
 */
function graduation_planner_admin_form_submit(array $form, array &$form_state) {

  // Save the values passed from the admin form into the variables array.

  graduation_planner_variables($form_state['values']);

  // Tell the user that a save event has occurred.

  drupal_set_message(t('Graduation Planner settings successfully saved'));
}

/**
 * Form for importing Graduation Planner entities.
 *
 * @param array $form
 *   The form array.
 * @param array $form_state
 *   The form state, passed by reference.
 *
 * @return array
 *   The complete form array.
 */
function graduation_planner_admin_import_form(array $form, array &$form_state) {
  $form['file'] = array(
    '#type' => 'file',
    '#title' => t('Choose a file'),
    '#title_display' => 'invisible',
    '#size' => 22,
    '#theme_wrappers' => array(),
    '#description' => t('Upload a file exported by Graduation Planner.  This will delete all entities and users (except User 1)'),
    '#weight' => -10,
  );

  $form['submit'] = array(
    '#type' => 'submit',
    '#value' => t('Upload file'),
  );
  return $form;
}

/**
 * Import form validation function.
 *
 * @param array $form
 *   The form array.
 * @param array $form_state
 *   The form state, passed by reference.
 */
function graduation_planner_admin_import_form_validate(array $form, array &$form_state) {
  $file = file_save_upload('file', array(
    // Validate extensions.
    'file_validate_extensions' => array('export'),
  ));
  // If the file passed validation:
  if ($file) {
    // Move the file into the Drupal file system.
    if ($file = file_move($file, 'public://')) {
      // Save the file for use in the submit handler.
      $form_state['storage']['file'] = $file;
    }
    else {
      form_set_error('file', t("Failed to write the uploaded file to the site's file folder."));
    }
  }
  else {
    form_set_error('file', t('No file was uploaded.'));
  }
}

/**
 * Import form submission function.
 *
 * @param array $form
 *   The form array.
 * @param array $form_state
 *   The form state, passed by reference.
 */
function graduation_planner_admin_import_form_submit($form, &$form_state) {
  $file = $form_state['storage']['file'];
  // We are done with the file, remove it from storage.
  unset($form_state['storage']['file']);
  // Make the storage of the file permanent.
  $uri = $file->uri;
  $file_name = drupal_realpath($uri);
  $loaded_file = file_get_contents($file_name);
  $entities = unserialize($loaded_file);
  graduation_planner_importer($entities);
  // Set a response to the user.
}

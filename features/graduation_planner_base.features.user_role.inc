<?php
/**
 * @file
 * graduation_planner_base.features.user_role.inc
 */

/**
 * Implements hook_user_default_roles().
 */
function graduation_planner_base_user_default_roles() {
  $roles = array();

  // Exported role: department_administrator.
  $roles['department_administrator'] = array(
    'name' => 'Department Administrator',
    'weight' => '0',
  );

  // Exported role: department_advisor.
  $roles['department_advisor'] = array(
    'name' => 'Department Advisor',
    'weight' => '0',
  );

  // Exported role: faculty.
  $roles['faculty'] = array(
    'name' => 'Faculty',
    'weight' => '3',
  );

  // Exported role: student.
  $roles['student'] = array(
    'name' => 'Student',
    'weight' => '4',
  );

  return $roles;
}

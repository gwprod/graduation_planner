-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2013 at 12:32 AM
-- Server version: 5.6.12
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `grad_plan`
--

-- --------------------------------------------------------

--
-- Table structure for table `field_data_field_course_requirement`
--

DROP TABLE IF EXISTS `field_data_field_course_requirement`;
CREATE TABLE IF NOT EXISTS `field_data_field_course_requirement` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned DEFAULT NULL COMMENT 'The entity revision id this data is attached to, or NULL if the entity type is not versioned',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_course_requirement_course_id` int(11) NOT NULL,
  `field_course_requirement_co_requisite` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entity_type`,`entity_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data storage for field 7 (field_course_requirement)';

--
-- Dumping data for table `field_data_field_course_requirement`
--

INSERT INTO `field_data_field_course_requirement` (`entity_type`, `bundle`, `deleted`, `entity_id`, `revision_id`, `language`, `delta`, `field_course_requirement_course_id`, `field_course_requirement_co_requisite`) VALUES
('graduation_planner_class', 'graduation_planner_class', 0, 2, 2, 'und', 0, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 3, 3, 'und', 0, 6, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 4, 4, 'und', 0, 2, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 4, 4, 'und', 1, 6, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 5, 5, 'und', 0, 4, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 5, 5, 'und', 1, 3, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 5, 5, 'und', 2, 13, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 5, 5, 'und', 3, 14, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 8, 8, 'und', 0, 7, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 9, 9, 'und', 0, 8, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 9, 9, 'und', 1, 4, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 9, 9, 'und', 2, 3, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 9, 9, 'und', 3, 14, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 10, 10, 'und', 0, 14, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 10, 10, 'und', 1, 4, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 11, 11, 'und', 0, 5, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 12, 12, 'und', 0, 11, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 12, 12, 'und', 1, 15, 1),
('graduation_planner_class', 'graduation_planner_class', 0, 14, 14, 'und', 0, 13, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 15, 15, 'und', 0, 3, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 15, 15, 'und', 1, 4, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 16, 16, 'und', 0, 15, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 17, 17, 'und', 0, 5, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 18, 18, 'und', 0, 5, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 18, 18, 'und', 1, 10, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 18, 18, 'und', 2, 16, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 19, 19, 'und', 0, 16, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 19, 19, 'und', 1, 10, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 19, 19, 'und', 2, 5, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 20, 20, 'und', 0, 4, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 21, 21, 'und', 0, 5, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 21, 21, 'und', 1, 9, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 21, 21, 'und', 2, 10, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 22, 22, 'und', 0, 18, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 22, 22, 'und', 1, 10, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 22, 22, 'und', 2, 36, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 23, 23, 'und', 0, 22, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 23, 23, 'und', 1, 10, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 24, 24, 'und', 0, 10, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 25, 25, 'und', 0, 17, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 36, 36, 'und', 0, 5, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 37, 37, 'und', 0, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 38, 38, 'und', 0, 5, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 38, 38, 'und', 1, 10, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 39, 39, 'und', 0, 38, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 40, 40, 'und', 0, 37, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 41, 41, 'und', 0, 40, 0);

-- --------------------------------------------------------

--
-- Table structure for table `field_data_field_elective_courses`
--

DROP TABLE IF EXISTS `field_data_field_elective_courses`;
CREATE TABLE IF NOT EXISTS `field_data_field_elective_courses` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned DEFAULT NULL COMMENT 'The entity revision id this data is attached to, or NULL if the entity type is not versioned',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_elective_courses_course_id` int(11) NOT NULL,
  `field_elective_courses_ordered` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entity_type`,`entity_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data storage for field 10 (field_elective_courses)';

-- --------------------------------------------------------

--
-- Table structure for table `field_data_field_quarters_available`
--

DROP TABLE IF EXISTS `field_data_field_quarters_available`;
CREATE TABLE IF NOT EXISTS `field_data_field_quarters_available` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned DEFAULT NULL COMMENT 'The entity revision id this data is attached to, or NULL if the entity type is not versioned',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_quarters_available_fall_quarter` int(10) unsigned NOT NULL DEFAULT '0',
  `field_quarters_available_winter_quarter` int(10) unsigned NOT NULL DEFAULT '0',
  `field_quarters_available_spring_quarter` int(10) unsigned NOT NULL DEFAULT '0',
  `field_quarters_available_summer_quarter` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entity_type`,`entity_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data storage for field 9 (field_quarters_available)';

--
-- Dumping data for table `field_data_field_quarters_available`
--

INSERT INTO `field_data_field_quarters_available` (`entity_type`, `bundle`, `deleted`, `entity_id`, `revision_id`, `language`, `delta`, `field_quarters_available_fall_quarter`, `field_quarters_available_winter_quarter`, `field_quarters_available_spring_quarter`, `field_quarters_available_summer_quarter`) VALUES
('graduation_planner_class', 'graduation_planner_class', 0, 1, 1, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 2, 2, 'und', 0, 0, 1, 1, 1),
('graduation_planner_class', 'graduation_planner_class', 0, 3, 3, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 4, 4, 'und', 0, 1, 0, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 5, 5, 'und', 0, 0, 1, 0, 1),
('graduation_planner_class', 'graduation_planner_class', 0, 6, 6, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 7, 7, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 8, 8, 'und', 0, 1, 0, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 9, 9, 'und', 0, 1, 1, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 10, 10, 'und', 0, 0, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 11, 11, 'und', 0, 1, 0, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 12, 12, 'und', 0, 0, 1, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 13, 13, 'und', 0, 1, 1, 1, 1),
('graduation_planner_class', 'graduation_planner_class', 0, 14, 14, 'und', 0, 1, 1, 1, 1),
('graduation_planner_class', 'graduation_planner_class', 0, 15, 15, 'und', 0, 1, 1, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 16, 16, 'und', 0, 0, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 17, 17, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 18, 18, 'und', 0, 0, 0, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 19, 19, 'und', 0, 1, 0, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 20, 20, 'und', 0, 0, 0, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 21, 21, 'und', 0, 0, 1, 0, 1),
('graduation_planner_class', 'graduation_planner_class', 0, 22, 22, 'und', 0, 1, 0, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 23, 23, 'und', 0, 0, 1, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 24, 24, 'und', 0, 0, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 25, 25, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 26, 26, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 27, 27, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 28, 28, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 29, 29, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 30, 30, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 31, 31, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 32, 32, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 33, 33, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 34, 34, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 35, 35, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 36, 36, 'und', 0, 0, 0, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 37, 37, 'und', 0, 0, 1, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 38, 38, 'und', 0, 1, 0, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 39, 39, 'und', 0, 0, 1, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 40, 40, 'und', 0, 0, 0, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 41, 41, 'und', 0, 1, 0, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 42, 42, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 43, 43, 'und', 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `field_data_field_required_course_list`
--

DROP TABLE IF EXISTS `field_data_field_required_course_list`;
CREATE TABLE IF NOT EXISTS `field_data_field_required_course_list` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned DEFAULT NULL COMMENT 'The entity revision id this data is attached to, or NULL if the entity type is not versioned',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_required_course_list_course_id` int(11) NOT NULL,
  `field_required_course_list_ordered` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entity_type`,`entity_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data storage for field 9 (field_required_course_list)';

--
-- Dumping data for table `field_data_field_required_course_list`
--

INSERT INTO `field_data_field_required_course_list` (`entity_type`, `bundle`, `deleted`, `entity_id`, `revision_id`, `language`, `delta`, `field_required_course_list_course_id`, `field_required_course_list_ordered`) VALUES
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 0, 1, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 1, 2, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 2, 13, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 3, 14, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 4, 3, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 5, 4, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 6, 7, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 7, 5, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 8, 17, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 9, 8, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 10, 9, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 11, 20, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 12, 10, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 13, 15, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 14, 11, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 15, 12, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 16, 16, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 17, 18, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 18, 19, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 19, 21, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 20, 22, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 21, 23, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 22, 36, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 23, 24, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 0, 26, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 1, 13, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 2, 14, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 3, 27, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 4, 28, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 5, 29, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 6, 30, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 7, 31, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 8, 32, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 9, 33, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 10, 34, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 11, 35, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 12, 42, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 13, 43, 0);

-- --------------------------------------------------------

--
-- Table structure for table `field_revision_field_course_requirement`
--

DROP TABLE IF EXISTS `field_revision_field_course_requirement`;
CREATE TABLE IF NOT EXISTS `field_revision_field_course_requirement` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_course_requirement_course_id` int(11) NOT NULL,
  `field_course_requirement_co_requisite` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entity_type`,`entity_id`,`revision_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Revision archive storage for field 7 (field_course...';

--
-- Dumping data for table `field_revision_field_course_requirement`
--

INSERT INTO `field_revision_field_course_requirement` (`entity_type`, `bundle`, `deleted`, `entity_id`, `revision_id`, `language`, `delta`, `field_course_requirement_course_id`, `field_course_requirement_co_requisite`) VALUES
('graduation_planner_class', 'graduation_planner_class', 0, 2, 2, 'und', 0, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 3, 3, 'und', 0, 6, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 4, 4, 'und', 0, 2, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 4, 4, 'und', 1, 6, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 5, 5, 'und', 0, 4, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 5, 5, 'und', 1, 3, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 5, 5, 'und', 2, 13, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 5, 5, 'und', 3, 14, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 8, 8, 'und', 0, 7, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 9, 9, 'und', 0, 8, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 9, 9, 'und', 1, 4, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 9, 9, 'und', 2, 3, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 9, 9, 'und', 3, 14, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 10, 10, 'und', 0, 14, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 10, 10, 'und', 1, 4, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 11, 11, 'und', 0, 5, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 12, 12, 'und', 0, 11, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 12, 12, 'und', 1, 15, 1),
('graduation_planner_class', 'graduation_planner_class', 0, 14, 14, 'und', 0, 13, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 15, 15, 'und', 0, 3, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 15, 15, 'und', 1, 4, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 16, 16, 'und', 0, 15, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 17, 17, 'und', 0, 5, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 18, 18, 'und', 0, 5, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 18, 18, 'und', 1, 10, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 18, 18, 'und', 2, 16, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 19, 19, 'und', 0, 16, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 19, 19, 'und', 1, 10, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 19, 19, 'und', 2, 5, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 20, 20, 'und', 0, 4, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 21, 21, 'und', 0, 5, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 21, 21, 'und', 1, 9, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 21, 21, 'und', 2, 10, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 22, 22, 'und', 0, 18, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 22, 22, 'und', 1, 10, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 22, 22, 'und', 2, 36, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 23, 23, 'und', 0, 22, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 23, 23, 'und', 1, 10, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 24, 24, 'und', 0, 10, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 25, 25, 'und', 0, 17, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 36, 36, 'und', 0, 5, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 37, 37, 'und', 0, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 38, 38, 'und', 0, 5, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 38, 38, 'und', 1, 10, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 39, 39, 'und', 0, 38, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 40, 40, 'und', 0, 37, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 41, 41, 'und', 0, 40, 0);

-- --------------------------------------------------------

--
-- Table structure for table `field_revision_field_elective_courses`
--

DROP TABLE IF EXISTS `field_revision_field_elective_courses`;
CREATE TABLE IF NOT EXISTS `field_revision_field_elective_courses` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_elective_courses_course_id` int(11) NOT NULL,
  `field_elective_courses_ordered` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entity_type`,`entity_id`,`revision_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Revision archive storage for field 10 (field_elective...';

-- --------------------------------------------------------

--
-- Table structure for table `field_revision_field_quarters_available`
--

DROP TABLE IF EXISTS `field_revision_field_quarters_available`;
CREATE TABLE IF NOT EXISTS `field_revision_field_quarters_available` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_quarters_available_fall_quarter` int(10) unsigned NOT NULL DEFAULT '0',
  `field_quarters_available_winter_quarter` int(10) unsigned NOT NULL DEFAULT '0',
  `field_quarters_available_spring_quarter` int(10) unsigned NOT NULL DEFAULT '0',
  `field_quarters_available_summer_quarter` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entity_type`,`entity_id`,`revision_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Revision archive storage for field 9 (field_quarters...';

--
-- Dumping data for table `field_revision_field_quarters_available`
--

INSERT INTO `field_revision_field_quarters_available` (`entity_type`, `bundle`, `deleted`, `entity_id`, `revision_id`, `language`, `delta`, `field_quarters_available_fall_quarter`, `field_quarters_available_winter_quarter`, `field_quarters_available_spring_quarter`, `field_quarters_available_summer_quarter`) VALUES
('graduation_planner_class', 'graduation_planner_class', 0, 1, 1, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 2, 2, 'und', 0, 0, 1, 1, 1),
('graduation_planner_class', 'graduation_planner_class', 0, 3, 3, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 4, 4, 'und', 0, 1, 0, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 5, 5, 'und', 0, 0, 1, 0, 1),
('graduation_planner_class', 'graduation_planner_class', 0, 6, 6, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 7, 7, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 8, 8, 'und', 0, 1, 0, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 9, 9, 'und', 0, 1, 1, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 10, 10, 'und', 0, 0, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 11, 11, 'und', 0, 1, 0, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 12, 12, 'und', 0, 0, 1, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 13, 13, 'und', 0, 1, 1, 1, 1),
('graduation_planner_class', 'graduation_planner_class', 0, 14, 14, 'und', 0, 1, 1, 1, 1),
('graduation_planner_class', 'graduation_planner_class', 0, 15, 15, 'und', 0, 1, 1, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 16, 16, 'und', 0, 0, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 17, 17, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 18, 18, 'und', 0, 0, 0, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 19, 19, 'und', 0, 1, 0, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 20, 20, 'und', 0, 0, 0, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 21, 21, 'und', 0, 0, 1, 0, 1),
('graduation_planner_class', 'graduation_planner_class', 0, 22, 22, 'und', 0, 1, 0, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 23, 23, 'und', 0, 0, 1, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 24, 24, 'und', 0, 0, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 25, 25, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 26, 26, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 27, 27, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 28, 28, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 29, 29, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 30, 30, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 31, 31, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 32, 32, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 33, 33, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 34, 34, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 35, 35, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 36, 36, 'und', 0, 0, 0, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 37, 37, 'und', 0, 0, 1, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 38, 38, 'und', 0, 1, 0, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 39, 39, 'und', 0, 0, 1, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 40, 40, 'und', 0, 0, 0, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 41, 41, 'und', 0, 1, 0, 0, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 42, 42, 'und', 0, 1, 1, 1, 0),
('graduation_planner_class', 'graduation_planner_class', 0, 43, 43, 'und', 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `field_revision_field_required_course_list`
--

DROP TABLE IF EXISTS `field_revision_field_required_course_list`;
CREATE TABLE IF NOT EXISTS `field_revision_field_required_course_list` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_required_course_list_course_id` int(11) NOT NULL,
  `field_required_course_list_ordered` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entity_type`,`entity_id`,`revision_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Revision archive storage for field 9 (field_required...';

--
-- Dumping data for table `field_revision_field_required_course_list`
--

INSERT INTO `field_revision_field_required_course_list` (`entity_type`, `bundle`, `deleted`, `entity_id`, `revision_id`, `language`, `delta`, `field_required_course_list_course_id`, `field_required_course_list_ordered`) VALUES
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 0, 1, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 1, 2, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 2, 13, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 3, 14, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 4, 3, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 5, 4, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 6, 7, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 7, 5, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 8, 17, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 9, 8, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 10, 9, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 11, 20, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 12, 10, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 13, 15, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 14, 11, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 15, 12, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 16, 16, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 17, 18, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 18, 19, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 19, 21, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 20, 22, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 21, 23, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 22, 36, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 1, 1, 'und', 23, 24, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 0, 26, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 1, 13, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 2, 14, 1),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 3, 27, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 4, 28, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 5, 29, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 6, 30, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 7, 31, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 8, 32, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 9, 33, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 10, 34, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 11, 35, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 12, 42, 0),
('graduation_planner_program', 'graduation_planner_program', 0, 2, 2, 'und', 13, 43, 0);

-- --------------------------------------------------------

--
-- Table structure for table `graduation_planner_class`
--

DROP TABLE IF EXISTS `graduation_planner_class`;
CREATE TABLE IF NOT EXISTS `graduation_planner_class` (
  `class_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key of the Class entity.',
  `revision_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Revision ID',
  `title` varchar(255) NOT NULL DEFAULT 'Class Name' COMMENT 'The name of this class (Algorithm Analysis, etc)',
  `description` text COMMENT 'The description of this class',
  `class_department` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The Department this class belongs to',
  `class_number` varchar(50) NOT NULL DEFAULT '101' COMMENT 'The course number for this class',
  `created` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The UNIX time when this entity was created',
  `changed` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The UNIX time when this entity was last changed',
  `type` varchar(50) NOT NULL DEFAULT 'graduation_planner_class' COMMENT 'The bundle of this entity',
  `class_units` int(10) unsigned NOT NULL DEFAULT '5' COMMENT 'The number of units this class has (credits)',
  `class_required` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'Is this class required?',
  `class_standing` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Class Standing Required',
  `class_is_gen_ed` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'This class is a general education (AA) class.',
  PRIMARY KEY (`class_id`),
  KEY `revision` (`revision_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Graduation Planner Class entity table' AUTO_INCREMENT=44 ;

--
-- Dumping data for table `graduation_planner_class`
--

INSERT INTO `graduation_planner_class` (`class_id`, `revision_id`, `title`, `description`, `class_department`, `class_number`, `created`, `changed`, `type`, `class_units`, `class_required`, `class_standing`, `class_is_gen_ed`) VALUES
(1, 1, 'Java 1', 'Java 1', 3, '110', 1383737517, 1383737517, 'graduation_planner_class', 4, 1, 0, 0),
(2, 2, 'Java 2', 'Java 2', 3, '111', 1383981485, 1383981485, 'graduation_planner_class', 4, 1, 0, 0),
(3, 3, 'Calculus I', 'Calculus I', 4, '172', 1383981917, 1383981917, 'graduation_planner_class', 5, 1, 0, 0),
(4, 4, 'Data Structures I', 'Data Structures I', 3, '301', 1383982065, 1383982065, 'graduation_planner_class', 4, 1, 0, 0),
(5, 5, 'Advanced Data Structures', 'Advanced Data Structures and File Processing', 3, '302', 1383982153, 1383982153, 'graduation_planner_class', 4, 1, 0, 0),
(6, 6, 'Pre-Calculus II', 'Pre-Calculus II', 4, '154', 1383982258, 1383982258, 'graduation_planner_class', 5, 1, 0, 0),
(7, 7, 'Foundations of Computer Science', 'Overview of the computer science profession including basic computer organization, algorithm development and analysis, computer data representation, computer applications, and social issues.\r\n', 3, '112', 1383982384, 1383982384, 'graduation_planner_class', 4, 1, 0, 0),
(8, 8, 'Computer Architecture I', 'Introduction to computer architecture, data representations, assembly language, addressing techniques.', 3, '311', 1383982442, 1383982442, 'graduation_planner_class', 4, 1, 0, 0),
(9, 9, 'Computer Architecture II', 'Introduction to the structure of computers. Digital circuits, central processing units, memory, input/output processing, parallel architectures.', 3, '312', 1383982489, 1383982489, 'graduation_planner_class', 4, 1, 0, 0),
(10, 10, 'Technical Writing', 'Writing and editing technical material in computer science.', 3, '325', 1383982536, 1383982536, 'graduation_planner_class', 3, 1, 0, 0),
(11, 11, 'Principles of Language Design I', 'Topics will include evolution of programming languages, syntax and semantics, bindings, scoping, data types, assignment, control, and subprograms.\r\n', 3, '361', 1383982586, 1383982586, 'graduation_planner_class', 4, 1, 0, 0),
(12, 12, 'Principles of Language Design II', 'Topics will include abstract data types, parallel processing, object-oriented programming, exception handling functional programming, and logic programming.', 3, '362', 1383982620, 1383982620, 'graduation_planner_class', 4, 1, 0, 0),
(13, 13, 'Composition I: Critical Reading and Responding', 'Develops skills necessary for academic writing, including summarizing, reading sources critically and responding to them, synthesizing multiple perspectives, and using academic writing conventions. Required of all students except those who have passed an exemption examination. Students must earn a minimum grade of C- or above to enroll in ENG 102.', 5, '101', 1383984640, 1383984640, 'graduation_planner_class', 4, 1, 0, 1),
(14, 14, 'Composition II: Reasoning and Research', 'Develops skills in research-based academic argument through assignments involving evaluation, analysis, and synthesis of multiple sources.', 5, '102', 1383984690, 1383984690, 'graduation_planner_class', 4, 1, 0, 1),
(15, 15, 'Sets and Logic', 'Essentials of mathematical proofs, including use of quantifiers and principles of valid inference. Set theory as a mathematical system.', 4, '260', 1383984853, 1383984853, 'graduation_planner_class', 5, 1, 0, 0),
(16, 16, 'Discrete Mathematics', 'Topics from logic, combinatorics, counting techniques, graph theory, and theory of finite-state machines.', 4, '330', 1383984905, 1383984905, 'graduation_planner_class', 5, 1, 0, 0),
(17, 17, 'Lab Experience Teaching Computer Science', 'Supervised experience in developing procedures and techniques in teaching computer science.', 3, '392', 1383984951, 1383984951, 'graduation_planner_class', 1, 1, 0, 0),
(18, 18, 'Database Management Systems', 'Logical aspects of database processing; concepts of organizing data into integrated databases; hierarchical, network, and relational approaches.\r\n', 3, '420', 1383985021, 1383985021, 'graduation_planner_class', 4, 1, 0, 0),
(19, 19, 'Algorithm Analysis', 'Topics will include basic algorithmic analysis, algorithmic strategies, fundamental computing algorithms, basic computability, the complexity classes P and NP, and advanced algorithmic analysis.', 3, '427', 1383985101, 1383985101, 'graduation_planner_class', 4, 1, 0, 0),
(20, 20, 'User Interface and Design', 'The relationship of user interface design to human-computer interaction. Types of user interfaces, methods of evaluation, user-centered design and task analysis, programming tools and environments, and hardware devices.', 3, '446', 1383985138, 1383985138, 'graduation_planner_class', 4, 1, 0, 0),
(21, 21, 'Operating Systems', 'Topics will include principles of operating systems, concurrency, scheduling and dispatch, memory management, processes and threads, device management, security and protection, and file systems.', 3, '470', 1383985202, 1383985202, 'graduation_planner_class', 4, 1, 0, 0),
(22, 22, 'Software Engineering', 'The software development process: user requirements, specifications, design, coding, testing, maintenance, documentation and management; students work in teams to develop large software projects.', 3, '480', 1383985267, 1383985267, 'graduation_planner_class', 4, 1, 135, 0),
(23, 23, 'Software Engineering Project', 'Continuation of coding, testing, and implementation phases of project begun in CS 480.', 3, '481', 1383985316, 1383985316, 'graduation_planner_class', 4, 1, 135, 0),
(24, 24, 'Senior Colloquium', 'Introduction to research in computer science through investigation of ethical and historical topics in the field. End-of-major assessment activities.', 3, '489', 1383985356, 1383985356, 'graduation_planner_class', 1, 1, 135, 0),
(25, 25, 'Laboratory Experience in Teaching Computer Science', 'Supervised progressive experience in developing procedures and techniques in teaching computer science.', 3, '492', 1383985414, 1383985414, 'graduation_planner_class', 2, 1, 0, 0),
(26, 26, 'Academic Advising Seminar', 'Academic Advising Seminar', 6, '101', 1383993418, 1383993418, 'graduation_planner_class', 1, 1, 0, 0),
(27, 27, 'Arts and Humanities', 'This is a placeholder for your Arts and Humanities Breadth Requirement.', 7, '100', 1383993507, 1383993507, 'graduation_planner_class', 5, 1, 0, 0),
(28, 28, 'The Aesthetic Experience', 'This is a placeholder for your ''The Aesthetic Experience'' general educational requirement.', 7, '100', 1383993554, 1383993554, 'graduation_planner_class', 5, 1, 0, 0),
(29, 29, 'Philosophy and Cultures of the World', 'This is a placeholder for your ''Philosophy and Cultures of the World'' general educational requirement.', 7, '100', 1383993598, 1383993598, 'graduation_planner_class', 5, 1, 0, 0),
(30, 30, 'Perspectives on the Cultures and Experiences of the United States', 'This is a placeholder for your ''Perspectives on the Cultures and Experiences of the United States'' general educational requirement.', 7, '100', 1383993903, 1383993903, 'graduation_planner_class', 5, 1, 0, 0),
(31, 31, 'Perspectives on World Cultures', 'This is a placeholder for your ''Perspectives on World Cultures'' general educational requirement.', 7, '100', 1383993963, 1383993963, 'graduation_planner_class', 5, 1, 0, 0),
(32, 32, 'Foundations of Human Adaptations and Behavior', 'This is a placeholder for your ''Foundations of Human Adaptations and Behavior'' general educational requirement.', 7, '100', 1383994039, 1383994039, 'graduation_planner_class', 5, 1, 0, 0),
(33, 33, 'Fundamental Disciplines of Physical and Biological Sciences', 'This is a placeholder for your ''Fundamental Disciplines of Physical and Biological Sciences'' general educational requirement.', 7, '100', 1383994111, 1383994111, 'graduation_planner_class', 5, 1, 0, 0),
(34, 34, 'Patterns and Connections in the Natural World', 'This is a placeholder for your ''Patterns and Connections in the Natural World'' general educational requirement.', 7, '100', 1383994145, 1383994145, 'graduation_planner_class', 5, 1, 0, 0),
(35, 35, 'Applications of Natural Science', 'This is a placeholder for your ''Applications of Natural Science'' general educational requirement.', 7, '100', 1383994208, 1383994208, 'graduation_planner_class', 5, 1, 0, 0),
(36, 36, 'Design Patterns', 'Design Patterns', 3, '463', 1383999136, 1383999136, 'graduation_planner_class', 4, 1, 0, 0),
(37, 37, 'Web Development', 'Web Development', 3, '250', 1384007054, 1384007054, 'graduation_planner_class', 4, 0, 0, 0),
(38, 38, 'Computer Graphics I', 'Computer Graphics I', 3, '440', 1384007134, 1384007134, 'graduation_planner_class', 4, 0, 0, 0),
(39, 39, 'Computer Graphics II', 'Computer Graphics II', 3, '441', 1384007190, 1384007190, 'graduation_planner_class', 4, 0, 0, 0),
(40, 40, 'Web Development Technologies II', 'Web Development Technologies II', 3, '351', 1384008969, 1384008969, 'graduation_planner_class', 4, 0, 0, 0),
(41, 41, 'Web Development Technologies III', 'Web Development Technologies III', 3, '352', 1384009000, 1384009000, 'graduation_planner_class', 4, 0, 0, 0),
(42, 42, 'Reasoning', 'Placeholder for Reasoning requirement.', 7, '001', 1384010677, 1384010677, 'graduation_planner_class', 5, 1, 0, 0),
(43, 43, 'Computer Fundamentals', 'Computer Fundamentals', 7, '002', 1384010713, 1384010713, 'graduation_planner_class', 4, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `graduation_planner_class_revision`
--

DROP TABLE IF EXISTS `graduation_planner_class_revision`;
CREATE TABLE IF NOT EXISTS `graduation_planner_class_revision` (
  `class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Class ID.',
  `revision_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Revision ID',
  `title` varchar(255) NOT NULL DEFAULT 'Class Name' COMMENT 'The name of this class (Algorithm Analysis, etc)',
  `description` text COMMENT 'The description of this class',
  `class_department` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The Department this class belongs to',
  `class_number` varchar(50) NOT NULL DEFAULT '101' COMMENT 'The course number for this class',
  `created` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The UNIX time when this entity was created',
  `changed` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The UNIX time when this entity was last changed',
  `type` varchar(50) NOT NULL DEFAULT 'graduation_planner_class' COMMENT 'The bundle of this entity',
  `class_units` int(10) unsigned NOT NULL DEFAULT '5' COMMENT 'The number of units this class has (credits)',
  `class_required` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'Is this class required?',
  `class_standing` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Class Standing Required',
  `class_is_gen_ed` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'This class is a general education (AA) class.',
  PRIMARY KEY (`revision_id`),
  KEY `class` (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Graduation Planner Class entity table' AUTO_INCREMENT=44 ;

--
-- Dumping data for table `graduation_planner_class_revision`
--

INSERT INTO `graduation_planner_class_revision` (`class_id`, `revision_id`, `title`, `description`, `class_department`, `class_number`, `created`, `changed`, `type`, `class_units`, `class_required`, `class_standing`, `class_is_gen_ed`) VALUES
(1, 1, 'Java 1', 'Java 1', 3, '110', 1383737517, 1383737517, 'graduation_planner_class', 4, 1, 0, 0),
(2, 2, 'Java 2', 'Java 2', 3, '111', 1383981485, 1383981485, 'graduation_planner_class', 4, 1, 0, 0),
(3, 3, 'Calculus I', 'Calculus I', 4, '172', 1383981917, 1383981917, 'graduation_planner_class', 5, 1, 0, 0),
(4, 4, 'Data Structures I', 'Data Structures I', 3, '301', 1383982065, 1383982065, 'graduation_planner_class', 4, 1, 0, 0),
(5, 5, 'Advanced Data Structures', 'Advanced Data Structures and File Processing', 3, '302', 1383982153, 1383982153, 'graduation_planner_class', 4, 1, 0, 0),
(6, 6, 'Pre-Calculus II', 'Pre-Calculus II', 4, '154', 1383982258, 1383982258, 'graduation_planner_class', 5, 1, 0, 0),
(7, 7, 'Foundations of Computer Science', 'Overview of the computer science profession including basic computer organization, algorithm development and analysis, computer data representation, computer applications, and social issues.\r\n', 3, '112', 1383982384, 1383982384, 'graduation_planner_class', 4, 1, 0, 0),
(8, 8, 'Computer Architecture I', 'Introduction to computer architecture, data representations, assembly language, addressing techniques.', 3, '311', 1383982442, 1383982442, 'graduation_planner_class', 4, 1, 0, 0),
(9, 9, 'Computer Architecture II', 'Introduction to the structure of computers. Digital circuits, central processing units, memory, input/output processing, parallel architectures.', 3, '312', 1383982489, 1383982489, 'graduation_planner_class', 4, 1, 0, 0),
(10, 10, 'Technical Writing', 'Writing and editing technical material in computer science.', 3, '325', 1383982536, 1383982536, 'graduation_planner_class', 3, 1, 0, 0),
(11, 11, 'Principles of Language Design I', 'Topics will include evolution of programming languages, syntax and semantics, bindings, scoping, data types, assignment, control, and subprograms.\r\n', 3, '361', 1383982586, 1383982586, 'graduation_planner_class', 4, 1, 0, 0),
(12, 12, 'Principles of Language Design II', 'Topics will include abstract data types, parallel processing, object-oriented programming, exception handling functional programming, and logic programming.', 3, '362', 1383982620, 1383982620, 'graduation_planner_class', 4, 1, 0, 0),
(13, 13, 'Composition I: Critical Reading and Responding', 'Develops skills necessary for academic writing, including summarizing, reading sources critically and responding to them, synthesizing multiple perspectives, and using academic writing conventions. Required of all students except those who have passed an exemption examination. Students must earn a minimum grade of C- or above to enroll in ENG 102.', 5, '101', 1383984640, 1383984640, 'graduation_planner_class', 4, 1, 0, 1),
(14, 14, 'Composition II: Reasoning and Research', 'Develops skills in research-based academic argument through assignments involving evaluation, analysis, and synthesis of multiple sources.', 5, '102', 1383984690, 1383984690, 'graduation_planner_class', 4, 1, 0, 1),
(15, 15, 'Sets and Logic', 'Essentials of mathematical proofs, including use of quantifiers and principles of valid inference. Set theory as a mathematical system.', 4, '260', 1383984853, 1383984853, 'graduation_planner_class', 5, 1, 0, 0),
(16, 16, 'Discrete Mathematics', 'Topics from logic, combinatorics, counting techniques, graph theory, and theory of finite-state machines.', 4, '330', 1383984905, 1383984905, 'graduation_planner_class', 5, 1, 0, 0),
(17, 17, 'Lab Experience Teaching Computer Science', 'Supervised experience in developing procedures and techniques in teaching computer science.', 3, '392', 1383984951, 1383984951, 'graduation_planner_class', 1, 1, 0, 0),
(18, 18, 'Database Management Systems', 'Logical aspects of database processing; concepts of organizing data into integrated databases; hierarchical, network, and relational approaches.\r\n', 3, '420', 1383985021, 1383985021, 'graduation_planner_class', 4, 1, 0, 0),
(19, 19, 'Algorithm Analysis', 'Topics will include basic algorithmic analysis, algorithmic strategies, fundamental computing algorithms, basic computability, the complexity classes P and NP, and advanced algorithmic analysis.', 3, '427', 1383985101, 1383985101, 'graduation_planner_class', 4, 1, 0, 0),
(20, 20, 'User Interface and Design', 'The relationship of user interface design to human-computer interaction. Types of user interfaces, methods of evaluation, user-centered design and task analysis, programming tools and environments, and hardware devices.', 3, '446', 1383985138, 1383985138, 'graduation_planner_class', 4, 1, 0, 0),
(21, 21, 'Operating Systems', 'Topics will include principles of operating systems, concurrency, scheduling and dispatch, memory management, processes and threads, device management, security and protection, and file systems.', 3, '470', 1383985202, 1383985202, 'graduation_planner_class', 4, 1, 0, 0),
(22, 22, 'Software Engineering', 'The software development process: user requirements, specifications, design, coding, testing, maintenance, documentation and management; students work in teams to develop large software projects.', 3, '480', 1383985267, 1383985267, 'graduation_planner_class', 4, 1, 135, 0),
(23, 23, 'Software Engineering Project', 'Continuation of coding, testing, and implementation phases of project begun in CS 480.', 3, '481', 1383985316, 1383985316, 'graduation_planner_class', 4, 1, 135, 0),
(24, 24, 'Senior Colloquium', 'Introduction to research in computer science through investigation of ethical and historical topics in the field. End-of-major assessment activities.', 3, '489', 1383985356, 1383985356, 'graduation_planner_class', 1, 1, 135, 0),
(25, 25, 'Laboratory Experience in Teaching Computer Science', 'Supervised progressive experience in developing procedures and techniques in teaching computer science.', 3, '492', 1383985414, 1383985414, 'graduation_planner_class', 2, 1, 0, 0),
(26, 26, 'Academic Advising Seminar', 'Academic Advising Seminar', 6, '101', 1383993418, 1383993418, 'graduation_planner_class', 1, 1, 0, 0),
(27, 27, 'Arts and Humanities', 'This is a placeholder for your Arts and Humanities Breadth Requirement.', 7, '100', 1383993507, 1383993507, 'graduation_planner_class', 5, 1, 0, 0),
(28, 28, 'The Aesthetic Experience', 'This is a placeholder for your ''The Aesthetic Experience'' general educational requirement.', 7, '100', 1383993554, 1383993554, 'graduation_planner_class', 5, 1, 0, 0),
(29, 29, 'Philosophy and Cultures of the World', 'This is a placeholder for your ''Philosophy and Cultures of the World'' general educational requirement.', 7, '100', 1383993598, 1383993598, 'graduation_planner_class', 5, 1, 0, 0),
(30, 30, 'Perspectives on the Cultures and Experiences of the United States', 'This is a placeholder for your ''Perspectives on the Cultures and Experiences of the United States'' general educational requirement.', 7, '100', 1383993903, 1383993903, 'graduation_planner_class', 5, 1, 0, 0),
(31, 31, 'Perspectives on World Cultures', 'This is a placeholder for your ''Perspectives on World Cultures'' general educational requirement.', 7, '100', 1383993963, 1383993963, 'graduation_planner_class', 5, 1, 0, 0),
(32, 32, 'Foundations of Human Adaptations and Behavior', 'This is a placeholder for your ''Foundations of Human Adaptations and Behavior'' general educational requirement.', 7, '100', 1383994039, 1383994039, 'graduation_planner_class', 5, 1, 0, 0),
(33, 33, 'Fundamental Disciplines of Physical and Biological Sciences', 'This is a placeholder for your ''Fundamental Disciplines of Physical and Biological Sciences'' general educational requirement.', 7, '100', 1383994111, 1383994111, 'graduation_planner_class', 5, 1, 0, 0),
(34, 34, 'Patterns and Connections in the Natural World', 'This is a placeholder for your ''Patterns and Connections in the Natural World'' general educational requirement.', 7, '100', 1383994145, 1383994145, 'graduation_planner_class', 5, 1, 0, 0),
(35, 35, 'Applications of Natural Science', 'This is a placeholder for your ''Applications of Natural Science'' general educational requirement.', 7, '100', 1383994208, 1383994208, 'graduation_planner_class', 5, 1, 0, 0),
(36, 36, 'Design Patterns', 'Design Patterns', 3, '463', 1383999136, 1383999136, 'graduation_planner_class', 4, 1, 0, 0),
(37, 37, 'Web Development', 'Web Development', 3, '250', 1384007054, 1384007054, 'graduation_planner_class', 4, 0, 0, 0),
(38, 38, 'Computer Graphics I', 'Computer Graphics I', 3, '440', 1384007134, 1384007134, 'graduation_planner_class', 4, 0, 0, 0),
(39, 39, 'Computer Graphics II', 'Computer Graphics II', 3, '441', 1384007190, 1384007190, 'graduation_planner_class', 4, 0, 0, 0),
(40, 40, 'Web Development Technologies II', 'Web Development Technologies II', 3, '351', 1384008969, 1384008969, 'graduation_planner_class', 4, 0, 0, 0),
(41, 41, 'Web Development Technologies III', 'Web Development Technologies III', 3, '352', 1384009000, 1384009000, 'graduation_planner_class', 4, 0, 0, 0),
(42, 42, 'Reasoning', 'Placeholder for Reasoning requirement.', 7, '001', 1384010677, 1384010677, 'graduation_planner_class', 5, 1, 0, 0),
(43, 43, 'Computer Fundamentals', 'Computer Fundamentals', 7, '002', 1384010713, 1384010713, 'graduation_planner_class', 4, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `graduation_planner_department`
--

DROP TABLE IF EXISTS `graduation_planner_department`;
CREATE TABLE IF NOT EXISTS `graduation_planner_department` (
  `department_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key of the Class entity.',
  `revision_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Revision ID',
  `long_name` varchar(255) NOT NULL DEFAULT 'Class Name' COMMENT 'The long name of this Department',
  `short_name` varchar(255) NOT NULL DEFAULT 'Class Name' COMMENT 'The long name of this Department',
  `description` text COMMENT 'The description of this Department',
  `created` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The UNIX time when this entity was created',
  `changed` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The UNIX time when this entity was last changed',
  `type` varchar(50) NOT NULL DEFAULT 'graduation_planner_class' COMMENT 'The bundle of this entity',
  PRIMARY KEY (`department_id`),
  KEY `revision` (`revision_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Graduation Planner Department Entity Table' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `graduation_planner_department`
--

INSERT INTO `graduation_planner_department` (`department_id`, `revision_id`, `long_name`, `short_name`, `description`, `created`, `changed`, `type`) VALUES
(3, 3, 'Computer Science', 'CS', 'Computer Science', 1384670657, 1384670657, 'graduation_planner_department'),
(4, 4, 'Mathematics', 'MATH', 'Mathematics', 1384671218, 1384671218, 'graduation_planner_department'),
(5, 5, 'English', 'ENG', 'English', 1384671362, 1384671362, 'graduation_planner_department'),
(6, 6, 'University', 'UNIV', 'University', 1384672581, 1384672581, 'graduation_planner_department'),
(7, 7, 'General Education', 'GE', 'General Education', 1384672627, 1384672627, 'graduation_planner_department');

-- --------------------------------------------------------

--
-- Table structure for table `graduation_planner_department_revision`
--

DROP TABLE IF EXISTS `graduation_planner_department_revision`;
CREATE TABLE IF NOT EXISTS `graduation_planner_department_revision` (
  `department_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Primary key of the Class entity.',
  `revision_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Revision ID',
  `long_name` varchar(255) NOT NULL DEFAULT 'Class Name' COMMENT 'The long name of this Department',
  `short_name` varchar(255) NOT NULL DEFAULT 'Class Name' COMMENT 'The long name of this Department',
  `description` text COMMENT 'The description of this Department',
  `created` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The UNIX time when this entity was created',
  `changed` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The UNIX time when this entity was last changed',
  `type` varchar(50) NOT NULL DEFAULT 'graduation_planner_class' COMMENT 'The bundle of this entity',
  PRIMARY KEY (`revision_id`),
  KEY `revision` (`department_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Graduation Planner Department Entity Table' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `graduation_planner_department_revision`
--

INSERT INTO `graduation_planner_department_revision` (`department_id`, `revision_id`, `long_name`, `short_name`, `description`, `created`, `changed`, `type`) VALUES
(3, 3, 'Computer Science', 'CS', 'Computer Science', 1384670657, 1384670657, 'graduation_planner_department'),
(4, 4, 'Mathematics', 'MATH', 'Mathematics', 1384671218, 1384671218, 'graduation_planner_department'),
(5, 5, 'English', 'ENG', 'English', 1384671362, 1384671362, 'graduation_planner_department'),
(6, 6, 'University', 'UNIV', 'University', 1384672581, 1384672581, 'graduation_planner_department'),
(7, 7, 'General Education', 'GE', 'General Education', 1384672627, 1384672627, 'graduation_planner_department');

-- --------------------------------------------------------

--
-- Table structure for table `graduation_planner_program`
--

DROP TABLE IF EXISTS `graduation_planner_program`;
CREATE TABLE IF NOT EXISTS `graduation_planner_program` (
  `program_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key of the Program entity.',
  `revision_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Revision ID',
  `title` varchar(255) NOT NULL DEFAULT 'Class Name' COMMENT 'The long name of this Department',
  `description` text COMMENT 'The description of this Department',
  `program_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The type of this program.  Not the same as the bundle property',
  `created` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The UNIX time when this entity was created',
  `changed` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The UNIX time when this entity was last changed',
  `type` varchar(50) NOT NULL DEFAULT 'graduation_planner_class' COMMENT 'The bundle of this entity',
  `department_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The department this program belongs to.',
  PRIMARY KEY (`program_id`),
  KEY `revision` (`revision_id`),
  KEY `department` (`department_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Graduation Planner Program Entity Table' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `graduation_planner_program`
--

INSERT INTO `graduation_planner_program` (`program_id`, `revision_id`, `title`, `description`, `program_type`, `created`, `changed`, `type`, `department_id`) VALUES
(1, 1, 'Computer Science', 'Computer Science', 0, 1384692597, 1384692597, 'graduation_planner_program', 3),
(2, 2, 'General Education', 'This is the equivalent of an Associates of Arts', 4, 1384694463, 1384694463, 'graduation_planner_program', 7);

-- --------------------------------------------------------

--
-- Table structure for table `graduation_planner_program_revision`
--

DROP TABLE IF EXISTS `graduation_planner_program_revision`;
CREATE TABLE IF NOT EXISTS `graduation_planner_program_revision` (
  `program_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Primary key of the Program entity.',
  `revision_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Revision ID',
  `title` varchar(255) NOT NULL DEFAULT 'Class Name' COMMENT 'The long name of this Department',
  `description` text COMMENT 'The description of this Department',
  `program_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The type of this program.  Not the same as the bundle property',
  `created` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The UNIX time when this entity was created',
  `changed` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The UNIX time when this entity was last changed',
  `type` varchar(50) NOT NULL DEFAULT 'graduation_planner_class' COMMENT 'The bundle of this entity',
  `department_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The department this program belongs to.',
  PRIMARY KEY (`revision_id`),
  KEY `program` (`program_id`),
  KEY `department` (`department_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Graduation Planner Program Entity Table' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `graduation_planner_program_revision`
--

INSERT INTO `graduation_planner_program_revision` (`program_id`, `revision_id`, `title`, `description`, `program_type`, `created`, `changed`, `type`, `department_id`) VALUES
(1, 1, 'Computer Science', 'Computer Science', 0, 1384692597, 1384692597, 'graduation_planner_program', 3),
(2, 2, 'General Education', 'This is the equivalent of an Associates of Arts', 4, 1384694463, 1384694463, 'graduation_planner_program', 7);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

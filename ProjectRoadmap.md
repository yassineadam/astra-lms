# 0.1 Release #

## Week 1 (30/07/2007 up to  05/08/2007) ##

During the first week the most basic features that a LMS should have will get implemented.

The work of week 1 is divided as follows:

  * Course management
    * Implement it similar to Moodle's section format.
    * Allow admin to manage course CRUD operations
  * User management
    * Admin interface
      * Allow admin to manage user CRUD operations
    * Teacher's interface
    * Student's interface
      * Allow student's to update their profile
  * Authentication System

## Weeks 2 and 3 (06/08/2007 up to 19/08/2007) ##

During the second and third weeks the main focus will be the SCORM support implementation. That support, of course, won't be complete at first. SCORM has to many details for me to get it done in just two weeks, but I'll give by best.

The work of weeks 2 and 3 is divided as follows:

  * SCORM 2004 3rd Edition implementation
    * Allow teachers to upload a new SCORM package into a course topic
    * Allow students to interact with the SCORM Learning Objects

## Weeks 4, 5 and 6 (20/08/2007 up to 09/09/2007) ##

During weeks 4, 5 and 6 the Bayesian classification will get implemented. The Bayesian Reasoning will be used to find out the learners learning style among a few pre-defined styles, and then to show him, first, the Learning Objects that are more adequate to him.

The work of those weeks is divides as follows:
  * Integrate the Classifier library into Astra
  * Build the Student's Model
  * Use the Classifier library to update the system knowledge about the user (who the system thinks that student is in terms of learning style)

## Details ##

Each phase includes the creation and maintenance of a series of unit and functional tests. While unit tests focus the model (how the Rails code interacts with the database) the functional tests focus the interfaces (how Rails is handling the user requests).
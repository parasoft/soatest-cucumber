# Parasoft SOAtest-Cucumber Executor

Execute [Cucumber](https://cucumber.io) test scenarios using
[Parasoft SOAtest](https://www.parasoft.com/product/soatest/).


## Highlights

 * Implement Cucumber step definitions as
[Parasoft SOAtest](https://www.parasoft.com/product/soatest/) test cases,
eliminating the labor and difficulty of manually coding step definitions.
 * Use JSON to create your step definitions and link them to SOAtest test cases.


## Introduction

This java module enables you to use a JSON document to define step definitions
that are linked to previously-defined SOAtest test cases.  As the Cucumber
scenarios are executed, the module will dynamically construct and configure a
SOAtest test suite based on steps in the Cucumber feature file, then
automatically execute that test suite on a SOAtest server.
This module has no dependencies on JUnit but can be invoked from either
Cucumber's [JUnit Runner](https://cucumber.io/docs/reference/jvm#junit-runner)
or [CLI Runner](https://cucumber.io/docs/reference/jvm#cli-runner).


## Tutorial

The [tutorial](tutorial.md) provides step-by-step instructions for how to test
the ParaBank web application by executing a [Cucumber](https://cucumber.io) test
scenario with [Parasoft SOAtest](https://www.parasoft.com/product/soatest/).
[Click here](tutorial.md) to view the tutorial.


## Requirements
* [Parasoft SOAtest](https://www.parasoft.com/product/soatest/)
* [Java 8](http://www.oracle.com/technetwork/java/javase/overview/java8-2100321.html)
* [Apache Maven](https://maven.apache.org/)


## How it Works

When writing [step definitions](https://cucumber.io/docs/reference#step-definitions)
for Cucumber, you typically need to write code
that defines what should happen when a test step that matches the definition
is executed.  This module simplifies the creation of step definitions by
allowing you to create SOAtest tests as the implementation for what should
happen at each step.  Think of each step definition as a map between that step
and a reusable SOAtest test or test suite that should get run when that step
is executed.

For example, one step definition might reference an individual SOAtest REST Client
that makes a call to a REST API.  A second step definition might reference
a SOAtest REST Client with a chained JSON Assertor that validates data in a
response from a different REST API.  A third step definition might reference
a SOAtest DB Tool with a chained XML Assertor that executes a DB query and
validates data in the result set.  Step definitions can reference an individual
SOAtest test or a test suite that contains a number of tests within it.

You will create a library of one or more SOAtest .tst files that contain
a number of tests and/or test suites that will be referenced by the step
definitions.  These .tst files will be deployed on a SOAtest server.  As the
Cucumber scenario is executed, this module will use the SOAtest server's
REST API to copy the test steps from your libary of .tst files into a new
.tst file that defines the scenario.  Once all the steps are copied in, then
the module will run the scenario on the SOAtest server and report the results
of the test execution back into Cucumber.

Test steps can also pass data between each other by leveraging SOAtest
test variables.


## General Instructions for Use

First time users should follow the [tutorial](tutorial.md).  However, the
following steps are provided as a general reference for how to use this java
module:

1. **Create a library of one or more SOAtest test suite (.tst) files.**  Create
one or more SOAtest test suite (.tst) files in Parasoft SOAtest that contain the
tests for executing each step definition.  The individual tests or
test suites within a single .tst file do not need to be related to each other or
be able to run successfully together. They are building blocks that
will get put together into larger scenarios defined by the Cucumber
feature files.

   Test steps may depend on data values that get passed to them directly
from the Cucumber scenario or from a previous test step.  For any fields in
your SOAtest test cases where the value needs to be provided dynamically, the
field value should have a variable reference like ${varName}.  The values
of such variables will not be set directly in the tst file but will
be injected by this java module when the Cucumber scenario is being executed
or when a Data Bank runs and saves data into a custom column.
This means that the test cases and scenarios you are creating in SOAtest
won't necessarily be able to run as-is since the values of any variables
present are not being set by anything in the tst file.

   For variables that are injected from the Cucumber scenario file, you will need
to define a set action within your step definition that will cause
a SOAtest test variable to be created and initialized with the value from the
scenario.  For variables that are created by a Data Bank tool, you will need
to ensure that the column name defined by the Data Bank and the column name
referenced by the test step that uses it are the same.

   For reference, download and open this
[example](src/it/resources/com/parasoft/cucumber/soatest/parabank/parabank_stepdefs.tst)
test suite in SOAtest.  Notice how the query parameters and JSON assertions are
configured using various variables that are not actually defined in the tst
file.

1. **Create the JSON step definitions file.**  This
file contains general properties that will be used when executing
Cucumber test scenarios, as well as the specific step definitions that map
test steps to SOAtest test cases.  See
[this example](src/it/resources/com/parasoft/cucumber/soatest/parabank/parabank_stepdefs.json).
Here is a description of the properties that can appear in a step definitions file:
   * runner - Specifies properties related to the location and configuration
   of the SOAtest server and the SOAtest .tst file that gets dynamically
   created as the Cucumber scenarios execute.
     * server - Specifies the base URL of the SOAtest server
     that will be used to execute the SOAtest scenarios.  It
     should include protocol, host, and port, such as
     "https://localhost:9443".
     * executionSuite - Specifies characteristics of the
     SOAtest .tst file that will be dynamically created on
     the SOAtest server as the Cucumber scenarios execute.
       * parent - The directory on the SOAtest server
       where the dynamically-created SOAtest .tst file will
       be saved.
       * name - The name of the SOAtest .tst file
       that will be dynamically created on the SOAtest server.
       * variables - Specifies environment variables that
       will be automatically configured within the
       dynamically-created SOAtest .tst file.  This is an
       array where each object in the array has the following
       properties:
         * name - The name of the environment variable.
         * value - The value of the environment variable.
      * testConfiguration - Specifies the SOAtest test
      configuration to use when the dynamically-created
      SOAtest .tst file is executed.
    * assets - Specifies test assets that will be copied from
    your Java project to
    the SOAtest server.  This is used to configure the SOAtest
    server with the library of .tst files used by the
    Cucumber scenarios.  This is an array where each object
    in the array has the following properties:
      * path - The name of the test asset (usually a .tst file).
      * parent - The directory on the SOAtest server to which
      the test asset will be copied.
   * stepdefs
     * step - [The type of step](https://github.com/cucumber/cucumber/wiki/Given-When-Then).
     Possible values are "Given", "When", "Then", "And", and "But".
     * pattern - The pattern used to link the step defintion
     to the matching test steps.
     * args - The number of arguments represented by the
     [capture groups](https://cucumber.io/docs/reference#step-definitions)
     in the pattern.  For example, if two
     capture groups are defined in the pattern, then the
     value should be set to 2.
     * actions - Specifies the actions that should be taken
     when a test step that matches this step definition is
     executed.  There are two possible actions that can be
     used:
       * set - Specifies that a test
       variable with a specific name should be created within
       the dynamically-created .tst file on the SOAtest
       server.  The format for this action is "set:variableName"
       where "variableName" is the name of the test variable
       that should be created.  The value will be taken from
       the value in the Cucumber scenario that matches the
       corresponding capture group.  If multiple capture
       groups are defined, then multiple set actions should
       be defined.  The first set action will be matched to
       the first capture group, the second set action will be
       matched to the second capture group, and so on.
       * copy - Specifies a test case or test suite from the
       library of SOAtest .tst files that should be linked to
       this test step.  When the test step executes, the
       specified test or test suite will be copied from the
       .tst file in the libary into the .tst file that is
       being dynamically created on the SOAtest server.  The
       format for this action is "copy:idOfTest" where
       "idOfTest" specifies where the test case is located
       within the library of tests on the SOAtest server.
       The id specifies both the path to the .tst file as
       well as the path within the .tst file to the specific
       test case or test suite that should be used.  For
       example, "/TestAssets/parabank_stepdefs.tst/Test Suite/Test Steps/CreateAccount"
       refers to the .tst file parabank_stepdefs.tst that
       appears within the TestAssets project.  The top-level
       test suite within that .tst file is named "Test Suite"
       and contains a sub suite called "Test Steps" that
       contains a specific test called "CreateAccount".

   A JSON schema that describes the structure
of the file can be found [here](src/main/schema/stepdefs.json).

1. **Create a Cucumber java project.**  Follow the normal steps to create and
configure a Maven java project for running cucumber tests; you can read the
description from the
[Cucumber java documentation](https://cucumber.io/docs/reference/jvm#java) for
details on how this is normally done.  Your project will need a Maven pom.xml with the
"info.cukes:cucumber-java8" dependency.  Additionally, you will need to do the
following in your pom.xml:
   * Add the build.parasoft.com Maven repository which hosts releases for this
java module:
     ```
     <repositories>
       <repository>
         <id>Parasoft</id>
         <url>http://build.parasoft.com/maven/</url>
       </repository>
     </repositories>
     ```
   * Add the following to the "dependencies" element (note that you will need
   to update the version number to the current release version):
     ```
     <dependency>
       <groupId>com.parasoft</groupId>
       <artifactId>soatest-cucumber</artifactId>
       <version>0.0.2</version>  <!-- set this to current release version -->
       <scope>test</scope>
     </dependency>
     ```

   Create a "src/test/java/*your_java_package*" source directory with a single
Java class that extends cucumber.api.java8.GlueBase or one if its subclasses
(such as cucumber.api.java8.En) as shown in the
[lambda expressions](https://cucumber.io/docs/reference/jvm#lambda-expressions-java-8)
example.  However, don't manually code any step definitions in the constructor.
Instead, add a single line to the constructor which calls
StepDefinitionLoader.loadStepDefinitions() as seen in
[this example](src/it/java/com/parasoft/cucumber/soatest/parabank/ParaBankStepDefinitions.java).

   Put your step definition file and the library of SOAtest .tst files in the
"src/test/resources/*your_java_package*" source directory.

   (Optional) If you wish to use Cucumber's JUnit Runner as opposed to their
CLI Runner, then under "src/test/java/*your_java_package*" create an empty
Java class annotated with "@RunWith(Cucumber.class)" as described
[here](https://cucumber.io/docs/reference/jvm#junit-runner).  Also see
[this example](src/it/java/com/parasoft/cucumber/soatest/parabank/ParaBankIT.java).


## How to Execute

1. **Start your Parasoft SOAtest Server.**  Make sure your SOAtest server is
accessible at the server URL defined in the JSON step definitions file.

1. **Deploy your application under test.**  It must be accessible from the host
where the SOAtest Server is deployed.

1. **Run your Cucumber scenario.**  From Maven this would typically be
"mvn clean test" to run JUnits under "src/test/java" or "mvn clean verify" if
your test sources were added as integration tests under "src/it/java" as in
[this example](src/it/java/com/parasoft/cucumber/soatest/parabank).


## Example

This project includes an example for executing a Cucumber test scenario against
[ParaBank](https://github.com/parasoft/parabank).  For step-by-step
instructions for how this example was constructed, please follow the
[tutorial](tutorial.md).  Otherwise, to simply execute this example, follow
these steps:
1. Checkout and build ParaBank.  View the README on the
[ParaBank project page](https://github.com/parasoft/parabank)
for instructions.
1. Deploy the parabank.war into a Tomcat Server on the same machine that has
SOAtest server.  In your Tomcat installation directory, edit the conf/server.xml
to listen on port 8090 instead of 8080.
1. Start your Tomcat server and verify you can access ParaBank on
http://localhost:8090/parabank
1. Start your SOAtest server.
1. Checkout this project and run "mvn -P integration-tests clean verify".  You
should see the following output from Apache Maven:
   ```
   [INFO] -------------------------------------------------------
   [INFO]  T E S T S
   [INFO] -------------------------------------------------------
   [INFO] Running com.parasoft.cucumber.soatest.parabank.ParaBankIT
   Feature: ParaBank accounts
     Create and use accounts in ParaBank
   Test Execution - waiting on tests to complete.
   Test Execution of [/TestAssets/ParaBankTests.tst] completed.
   Test Execution of [/TestAssets/ParaBankTests.tst], results (failures/total): 0/2

     Scenario: Create a new loan account    # com/parasoft/cucumber/soatest/parabank/parabank.feature:4
       Given I am user 12212                # StepDefinitionLoader.java:114
       And using funds from account 54321   # StepDefinitionLoader.java:114
       When I create a new loan account     # StepDefinitionLoader.java:114
       Then A new loan account should exist # StepDefinitionLoader.java:114

   1 Scenarios (1 passed)
   4 Steps (4 passed)
   0m10.068s
   ```

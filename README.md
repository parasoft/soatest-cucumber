# Parasoft SOAtest-Cucumber Executor

Execute [Cucumber](https://cucumber.io) test scenarios using
[Parasoft SOAtest](https://www.parasoft.com/product/soatest/).


## Highlights

 * Implement Cucumber step definitions as
[Parasoft SOAtest](https://www.parasoft.com/product/soatest/) test cases,
eliminating the labor and difficulty of manually coding step definitions.
 * Use JSON to define the patterns for your step definitions and link them to
your existing SOAtest test cases.


## Introduction

This java module enables you to load step definitions from a JSON document,
dynamically construct and configure a SOAtest test suite based on steps in the
Cucumber scenario, then automatically execute that test suite on a SOAtest
server.  Test cases are configured by setting test suite variables from
arguments passed to the step definition.  This module has no dependencies on
JUnit but can be invoked from either Cucumber's
[JUnit Runner](https://cucumber.io/docs/reference/jvm#junit-runner) or
[CLI Runner](https://cucumber.io/docs/reference/jvm#cli-runner).


## Requirements
* [Parasoft SOAtest](https://www.parasoft.com/product/soatest/)
* Java 8
* [Apache Maven](https://maven.apache.org/)


## How to Use

1. **Identify your testing requirements.**  The first step is to determine your
testing requirements.  For Cucumber, this involves identifying what types of
steps you would like to support in any Cucumber test scenarios you have written
or intend to write.  You need to identify the types of steps and high-level
requirements for what actions would need to be performed for each step.
   * For more explanation about steps and step definitions,
[click here](https://cucumber.io/docs/reference#step-definitions).
   * For an example of a Cucumber test sceneario,
[click here](src/it/resources/com/parasoft/cucumber/soatest/parabank/parabank.feature)
test scenario.

1. **Create a SOAtest test suite (.tst).**  Now that you've identified what
types of actions are needed for your step definitions, you can being
implementing those actions as SOAtest test cases.  You must create at least one
SOAtest suite suite (.tst) file in Parasoft SOAtest that contains the tests or
scenarios for executing each step definitions.  Please take note the following:
   * You are effectively creating a library of re-usable test cases and
scenarios.  This java modules will copy test cases from your SOAtest tst suite
and configure them dynamically depending on what steps appear in the cucumber
scenario that is being executed.  In a sense, this is no different than how step
definitions in Cucumber normally work.  The only difference is that you are
defining a collection of SOAtest test cases instead of a collection of code
snippets.
   * For any fields in your SOAtest test cases where the value would need to be
provided by a step in your Cucucumber scenario, the field value should have a
variable reference like ${varName}.  The values of such variables will not be
set in the tst file but will be injected by this java module when the Cucumber
scenario is being executed.  This means that the test cases and scenarios you
are creating in SOAtest shouldn't necessarily be able to run as-is
since the values of any variables are not being set by anything in the tst file.
   * For reference, see this SOAtest test suite
[example](src/it/resources/com/parasoft/cucumber/soatest/parabank/parabank_stepdefs.tst).
Notice how the query parameters and JSON assertions are configured using various
variables not defined in the tst file as mentioned above.
   * Please refer to the SOAtest User's Guide for detail and best practices for
creating re-usable, modular test suite.  Search for
"Reusing/Modularizing Test Suites".

1. **Create a Cucumber java project.**  Follow the steps to create and
configure a maven java project for running cucumber tests.  Read the description
from the
[Cucumber java documentation](https://cucumber.io/docs/reference/jvm#java) for
details on how to do this.  You should have a maven pom.xml with the
"info.cukes:cucumber-java8" dependency.  Additionally, add the following to your
pom.xml:
   * Add the build.parasoft.com maven repository which hosts releases for this
java module:
```
<repositories>
  <repository>
    <id>Parasoft</id>
    <url>http://build.parasoft.com/maven/</url>
  </repository>
</repositories>
```
   * Add the following to the "dependencies" element:
```
<dependency>
  <groupId>com.parasoft</groupId>
  <artifactId>soatest-cucumber</artifactId>
  <version>0.0.1</version>  <!-- set this to current release version -->
</dependency>
```

1. **Configure step definitions.**  If needed, create the directory
"src/test/resources/*your_java_package*" where *your_java_package* is the
name java package you decide to use for your project.  Add the following files
similar to this
[example](src/it/resources/com/parasoft/cucumber/soatest/parabank/):
   * Copy any Cucumber feature files containing the scenarios you wish to
execute.
   * Copy the SOAtest tst file(s) containing the actions for your step
definitions.  Include any other resources required for your SOAtest test cases
(external file references).
   * Create the JSON document for the step definitions as described by this
[JSON schema](src/main/schema/stepdefs.json) like
[this example](src/it/resources/com/parasoft/cucumber/soatest/parabank/parabank_stepdefs.json).
The JSON schema describes the structure and meaning of values but please note:
     * The "runner" includes the URL of the SOAtest server, parameters for
initializing the SOAtest test suite that will be dynamically created and
executed, and the paths of any dependent resources including any SOAtes test
suite (.tst) files having test cases needed for performing actions for the step
definitions.
     * The "stepdefs" array describes the list of step definitions, their
patterns, arguments, and SOAtest test cases which should be executed for each
pattern.
     * Each step definition has an array of actions which can include setting
variables or copying test cases.

1. **Loading step definitions.**  Create an "src/test/java/*your_java_package*"
source directory with a single Java class that extends
cucumber.api.java8.GlueBase or one if its subclasses like cucumber.api.java8.En
as shown in the
[lambda expressions](https://cucumber.io/docs/reference/jvm#lambda-expressions-java-8)
example.  However, don't manually code any step definitions in the constrcutor.
Instead, add a single line to the constructor which calls
StepDefinitionLoader.loadStepDefinitions() as seen in
[this example](src/it/java/com/parasoft/cucumber/soatest/parabank/ParaBankStepDefinitions.java)

1. **Create a JUnit suite.**  This is only required if you wish to use
Cucumber's JUnit Runner as opposed to their CLI Runner.  Under
"src/test/java/*r_java_package*" create an empty java class annotated with
"@RunWith(Cucumber.class)" as described
[here](https://cucumber.io/docs/reference/jvm#junit-runner).  Also see
[this example](src/it/java/com/parasoft/cucumber/soatest/parabank/ParaBankIT.java).


## How to Execute

1. **Start your Parasoft SOAtest Server.**  Make sure your SOAtest server is
accessible at the server URL defined in the JSON document you created earlier
for your step definitions.

1. **Deploy your application under test**, making sure it is acessible from the host
where the SOAtest Server is deployed

1. **Run your Cucumber scenario.**  From maven this would typically be
"mvn clean test" to run JUnits under "src/test/java" or "mvn clean verify" if
your test sources were added as integration tests under "src/it/java" as in
[this example](src/it/java).


## Example

This project includes an example for executing a Cucumber test scenario against
[ParaBank](https://github.com/parasoft/parabank).  For step-by-step
instructions for how this example was constructed, please follow the
(tutorial)[tutorial.md].  Otherwise, to simple execute this example, please
follow these steps:
 1. Checkout and build ParaBank.  View the README on the
[ParaBank project page](https://github.com/parasoft/parabank)
for exact instructions.
 1. Deploy the parabank.war into a Tomcat Server on the same machine that has
SOAtest server.  In your tomcat installation directory, edit the conf/server.xml
to listen on port 8090 instead of 8080.
 1. Start your tomcat server and verify you can access ParaBank on
http://localhost:8090/parabank
 1. Start your SOAtest server.
 1. Checkout this project and run "mvn -P integration-tests clean verify".  You
should see the following output:
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
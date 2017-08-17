# Parasoft SOAtest-Cucumber Executor

Execute [Cucumber](https://cucumber.io) test scenarios using
[Parasoft SOAtest](https://www.parasoft.com/product/soatest/).


## Introduction

[Cucumber](https://cucumber.io) test scenarios are executed by step definitions
which are blocks of code, each linked to a regular expression for matching text
from a step in a scenario.  To eliminate the labor and difficulty of manually
coding step definitions, use SOAtest to quickly and easily automate those
actions as SOAtest test cases.  For example, instead of hand writing code to
call service APIs, perform extractions, and query databases, use SOAtest's
REST Client, Data Bank and DB tools.  Next, use JSON to define the patterns for
your step definitions and link them to your SOAtest test cases.

This java module enables you to load step definitions from a JSON document,
dynamically construct and configure a SOAtest test suite based on steps in the
Cucumber scenario, then automatically execute that test suite on a SOAtest
server.  Test cases are configured by setting test suite variables from
arguments passed to the step definition.  A SOAtest Server is needed to
dynamically compose and configure the SOAtest test suite, deploy any dependent
resources, and to perform the execution of that test suite.  This module has no
dependencies on JUnit but can be invoked from either Cucumber's
[JUnit Runner](https://cucumber.io/docs/reference/jvm#junit-runner) or
[CLI Runner](https://cucumber.io/docs/reference/jvm#cli-runner).


## Requirements
* [Parasoft SOAtest](https://www.parasoft.com/product/soatest/)
* Java 8


## Configure Step Definitions

The JSON document for the step definitions is described by this
[JSON schema](src/main/schema/stepdefs.json) with example
[here](src/it/resources/com/parasoft/cucumber/soatest/parabank/parabank_stepdefs.json).
First, you  describe the "runner" which includes the URL of the SOAtest server,
parameters for initializing the SOAtest test suite that will be dynamically
created and executed, and the paths of any dependent resources including
any SOAtes test suite (.tst) files having test cases needed for performing
actions for the step definitions.  Next, you describe the list of step
definitions, their patterns, arguments, and SOAtest test cases which should be
executed for each pattern.


## Loading Step Definitions

Create a class that extends cucumber.api.java8.GlueBase or one if its
subclasses like cucumber.api.java8.En, similar to the
[lambda expressions](https://cucumber.io/docs/reference/jvm#lambda-expressions-java-8)
example.  However, instead of coding step definitions as lambda expressions
simply call StepDefinitionLoader.loadStepDefinitions() method to load the step
definitions from a JSON document.  See this
[example](src/it/java/com/parasoft/cucumber/soatest/parabank/ParaBankStepDefinitions.java).

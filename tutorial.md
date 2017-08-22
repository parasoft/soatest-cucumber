# Parasoft SOAtest-Cucumber Tutorial

This tutorial provides step-by-step instructions for how to test a real web
application by executing a [Cucumber](https://cucumber.io) test scenario with
[Parasoft SOAtest](https://www.parasoft.com/product/soatest/).


## Steps

1. Start Parasoft SOAtest.

1. **Install Eclipse M2E** as follows:
   * Select **Help> Install New Software..**
   * In **Work with** type **http://download.eclipse.org/releases/neon** then press the **Enter** key
   * Wait for the list of Categories to load.  This may take a minute or two.
   * Expand **General Purpose Tools**, select **m2e - Maven Integration for Eclipse**, then click **Next**
   * Click **Next** again, accept the open source license agreement, then click **Finish**
   * Wait for the software to install then click **Yes** to restart SOAtest when prompted.

1. **Set up the ParaBank Demo application** as described at the beginning of the
SOAtest tutorial.  Typical steps:
   * In SOAtest, select **File> New> Project**.
   * Select **SOAtest> ParaBank Example Project**, then click **Next**
   * Enter a project name (e.g., ParaBank), then click **Finish**.
   * In the **Servers** view (if it’s not visible, choose **Window> Show View>
Other> Server> Servers**), verify that the ParaBank Tomcat Server is started
and synchronized. It might take about a minute for the server to start and
synchronize.
   * When ParaBank launches, be sure to note what port it is using.  You can
view this in the address bar of the web browser that opens. ParaBank uses port
8080 by default. If port 8080 is already in use, SOAtest incrementally searches
for an available port, starting at 8000.

1. **Create a new Maven java project** that will host your Cucumber test
scenario:
   * In SOAtest, select **File> New> Project**.
   * Select **Maven> Maven Project**, then click **Next**
   * Click **Next** again to accept the default project location
   * Verify **maven-archetype-quickstart** is selected then click **Next**
   * Type the following then click **Finish** to complete the wizard
     * **Group Id:** com.parasoft.example
     * **Artifact Id:** parabank.cucumber
     * **Version:** 0.0.1-SNAPSHOT
     * **Package:** com.parasoft.example.parabank.cucumber

1. Open the Java perspective as follows:
   * Click **Window> Perspective> Open Perspective> Other...**
   * Select **Java** then click **OK**

1. **Configure the pom.xml** with the dependencies required for Cucumber:
   * In the **Package Explorer**, expand the
**parabank.cucumber** project then double-click the **pom.xml** file.
Make the following edits then click then click **File> Save**:
   * Add the following **repositories** element to the pom.xml before
```</project>```:
     ```
     <repositories>
       <repository>
         <id>Parasoft</id>
         <url>http://build.parasoft.com/maven/</url>
       </repository>
     </repositories>
     ```
   * Modify the **dependencies** element to look as follows:
     ```
     <dependencies>
       <dependency>
         <groupId>junit</groupId>
         <artifactId>junit</artifactId>
         <version>4.12</version>
         <scope>test</scope>
       </dependency>
       <dependency>
         <groupId>info.cukes</groupId>
         <artifactId>cucumber-java8</artifactId>
         <version>1.2.5</version>
         <scope>test</scope>
       </dependency>
       <dependency>
         <groupId>info.cukes</groupId>
         <artifactId>cucumber-junit</artifactId>
         <version>1.2.5</version>
         <scope>test</scope>
       </dependency>
       <dependency>
         <groupId>com.parasoft</groupId>
         <artifactId>soatest-cucumber</artifactId>
         <version>0.0.1</version>
         <scope>test</scope>
       </dependency>
     </dependencies>
     ```

1. **Build the project.**  Select **Project> Build Automatically** (if not
already enabled) then wait a minute for the project to build.  During this time,
Eclipse M2E will be downloading the dependencies that were added to the pom.xml
in the previous step.  You can click the **Progress** view to check the build
progress.  After the build has finished, verify no errors are shown in the
**Problems** view.

1. **Create the java classes required for Cucumber test execution:**
   * In the **parabank.cucumber** project expand
**src/test/java** and then expand **com.parasoft.example.parabank.cucumber**.
   * Right-click **AppTest.java** then select **Delete**.  This file is not
used as part of this tutorial.
   * Right-click **com.parasoft.example.parabank.cucumber** then select
**New> Class**.  Type the following then click **Finish** to complete the
wizard:
     * **Name:** ParaBankStepDefinitions
     * **Interfaces:** Select **Add..**, type **cucumber.api.java8.GlueBase**, then click **OK**
   * Right-click **com.parasoft.example.parabank.cucumber** then select
**New> Class**.  For **Name** type **ParaBankSuite** then click
**Finish** to complete the wizard.
   * Update **ParaBankSuite.java** to look as follows then click **File> Save**:
     ```
     package com.parasoft.example.parabank.cucumber;

     import org.junit.runner.RunWith;

     import cucumber.api.CucumberOptions;
     import cucumber.api.junit.*;

     @RunWith(Cucumber.class)
     @CucumberOptions(plugin = {"pretty", "html:target/cucumber"})
     public class ParaBankSuite {
     }
     ```

1. **Create the Cucumber test scenario**.
   * In the **parabank.cucumber** project expand **src**, right-click **test**,
then select **New> Folder**.
   * For **Folder name** type
**resources/com/parasoft/example/parabank/cucumber** then click **Finish**
   * Right-click the new folder that was created, the most deeply nested one
named **cucumber**, then select **New> File**.
   * For **File name** type type **parabank.feature** then click **Finish**.
   * In the **parabank.feature** file, add then following then click
**File> Save**:
     ```
     Feature: ParaBank accounts
         Create and use accounts in ParaBank

     Scenario: Create a new loan account
     Given I am user 12212
     And using funds from account 54321
     When I create a new loan account
     Then A new loan account should exist
     ```

1. **Run the Cucumber scenario.**
   * Right-click **parabank.feature** then select **Run As> JUnit Test**.  Click
the **JUnit** view.  Notice the scenario ran and passed but shows all steps in
the test scenario were skipped.
   * Click the **Console** view and observe the following message from Cucumber,
indicating that you need to implement the following step definitions:
     ```
     You can implement missing steps with the snippets below:

     Given("^I am user (\\d+)$", (Integer arg1) -> {
         // Write code here that turns the phrase above into concrete actions
         throw new PendingException();
     });

     Given("^using funds from account (\\d+)$", (Integer arg1) -> {
         // Write code here that turns the phrase above into concrete actions
         throw new PendingException();
     });

     When("^I create a new loan account$", () -> {
         // Write code here that turns the phrase above into concrete actions
         throw new PendingException();
     });

     Then("^A new loan account should exist$", () -> {
         // Write code here that turns the phrase above into concrete actions
         throw new PendingException();
     });
     ```

1. **Create a SOAtest test suite**:
   * Make sure ParaBank is running as described at the start of this tutorial.
   * Right-click **src/test/resources/com/parasoft/example/parabank/cucumber**
(the same folder that has the parabank.feature file) then select
**New> Other...**.
   * Select **Test (.tst) File** then click **Next**.
   * For **File name** type **parabank_stepdefs.tst** then click **Next**.
   * Expand **REST**, select **Swagger** then click **Next**.
   * Type **http://localhost:8080/parabank/services/bank/swagger.yaml** (correct
the port number if needed) then click **Finish**.

1. Open the SOAtest perspective as follows:
   * Click **Window> Perspective> Open Perspective> Other...**
   * Select **SOAtest** then click **OK**

1. **Create the SOAtest test cases** needed for implementing the step
definitions:
   * For the Cucumber scenario, you need to make a REST API call to create an
account and another REST API call to verify the account was created.  The
following steps explain how to do this.
   * In the **Test Case Explorer**, expand **parabank.cucumber**, then expand
**src/test/resources/com/parasoft/example/parabank/cucumber**.
   * Double click **parabank_stepdefs.tst** to open the test suite then expand
**Test Suite**.
   * Right-click **Test Suite** then select **Add New> Test Suite...**,
select **Empty** then click **Finish**.
   * Double click the new test suite that was created, change **Name** to
**Test Steps**, then click **File> Save**.
   * Expand the test suite named **/parabank/services/bank/swagger.yaml** which
contains the unit tests that the wizard originally generated for each operation
in ParaBank's REST API.
   * Expand the child suite named **/createAccount**, right-click the test named
**/createAccount - POST** then select **Copy**.  Right-click the suite you just
created named **Test Steps** then select **Paste**.
   * Similarly, expand the suite named **/accounts/{accountId}**, right-click
the test named **/accounts/{accountId} - GET** then select **Copy**.
Right-click **Test Steps** again then select **Paste**.

1. **Configure the SOAtest test cases** to use values from the Cucumber
scenario:
   * Creating an account involves making a REST API call with parameters for
customer ID, account type, and the ID of an account from which to transfer
funds.  You need to configure those values in the REST Clients as variables.
Later, you will define how the values of those variables are set.
   * Under **Test Steps**, double-click **/createAccount - POST**, update the
test as follows then click **File> Save**:
     * Change **Name** to **CreateAccount**
     * Click the **Query** tab the configure the query parameters as follows:
        * **customerId:** ${customerId}
        * **newAccountType:**
          * Change **Fixed** to **Script**
          * Click **Edit Script**
          * For **Language** select **Groovy**, type the following script, then
click **OK**:
            ```
            import com.parasoft.api.*

            String mapAccountType(ScriptingContext context) {
                String acctType = context.getValue("accountType")
                if (acctType.equalsIgnoreCase("checking")) {
                    return "0"
                } else if (acctType.equalsIgnoreCase("savings")) {
                    return "1"
                }
                return "2"
            }
            ```
        * **fromAccountId:** ${fromAccountId}
   * Create a new **JSON Data Bank** as follows:
     * Right-click **CreateAccount** then select **Add Output...**
     * On the left, select **Reponse> Traffic**.
     * On the right, under **New Tool**, select **JSON Data Bank** then click
**Finish**.
   * Configure the new **JSON Data Bank** as follows then click **File> Save**:
     * Click the **Literal** tab then type the following under **Literal**:
       ```
       {
         "account" : {
           "id" : 12345,
           "customerId" : 112212,
           "type" : "LOAN",
           "balance" : "100.00"
         }
       }
       ```
     * Click the **Tree** tab, select **id** then click **Extract Element**.
     * Select the newly created extraction then click **Modify**.
     * Select **Data Source Column**, change **Custom column name** to
       **accountId** then click **OK**.
   * Under **Test Steps**, double-click **/accounts/{accountId} - GET**, update
the test as follows then click **File> Save**:
     * Change **Name** to **GetAccountInfo**.
     * Click the **Path** tab and set **accountId** to ${accountId}.
   * Create a new **JSON Assertor** as follows:
     * Right-click **GetAccountInfo** then select **Add Output...**
     * On the left, select **Reponse> Traffic**.
     * On the right, under **New Tool**, select **JSON Assertor** then click
**Finish**.
   * Configure the new **JSON Assertor** as follows then click **File> Save**:
     * Click the **Expected JSON** tab then type the following under **Literal**:
       ```
       {
         "account" : {
           "id" : 12345,
           "customerId" : 112212,
           "type" : "LOAN",
           "balance" : "100.00"
         }
       }
       ```
     * Click the **Configuration** tab then click **Add...** on the lower left.
     * Select **Value Assertions> String Comparison Assertion** then click **Next**.
     * Select **id** then click **Finish**.
     * Set the **Expected Value** to **${expectedAccountType}**.
     * Expand  **Options** (at the very bottom) then enable **Trim content** and
**Ignore case**

1. **Define the step definitions, linking them to the SOAtest test cases:**
   * Switch back to the **Java** perspective again.
   * Right-click **src/test/resources/com/parasoft/example/parabank/cucumber**
(the same folder containing parabank.feature and parabank_stepdefs.tst) then
select **New> File**.
   * For **File name** type type **parabank_stepdefs.json** then click **Finish**.
   * In the **parabank_stepdefs.json** file, add then following then click
**File> Save**:
     ```
     {
       "runner": {
         "server": "https://localhost:9443",
         "executionSuite": {
           "parent": "/TestAssets",
           "name": "ParaBankTests.tst",
           "variables": [
             {
               "name": "SWAGGER",
               "value": "http://localhost:8090/parabank/services/bank/swagger.yaml"
             },
             {
               "name": "BASEURL",
               "value": "http://localhost:8090/parabank/services/bank"
             }
           ]
         },
         "assets": [
           {
             "path": "parabank_stepdefs.tst",
             "parent": "/TestAssets"
           }
         ]
       },
       "stepdefs": [
         {
           "step": "Given",
           "pattern": "^I am user (.*)$",
           "args": 1,
           "actions": [
             "set:customerId"
           ]
         },
         {
           "step": "And",
           "pattern": "^using funds from account (.*)$",
           "args": 1,
           "actions": [
             "set:fromAccountId"
           ]
         },
         {
           "step": "When",
           "pattern": "^I create a new (.*) account$",
           "args": 1,
           "actions": [
             "set:accountType",
             "copy:/TestAssets/parabank_stepdefs.tst/Test Suite/Test Steps/CreateAccount"
           ]
         },
         {
           "step": "Then",
           "pattern": "^A new (.*) account should exist$",
           "args": 1,
           "actions": [
             "set:expectedAccountType",
             "copy:/TestAssets/parabank_stepdefs.tst/Test Suite/Test Steps/GetAccountInfo"
           ]
         }
       ]
     }
     ```
   * Take note of the following:
     * **server** points to the address of the SOAtest server, your local
SOAtest that is used for this tutorial.
     * **assets** defines any files in your Cucumber java project that should be
automatically deployed to the SOAtest server.  This should include any tst files
containing tests needed for executing your step definitions.
     * **executionSuite** defines the SOAtest test suite (.tst) file that will
be dynamically created on-the-fly by the SOAtest server in order to execute
the steps in any Cucumber test scenarios.
     * **variables** defines environment variables that should be created in
the dynamically created test suite prior to execution (correct the port number
for your ParaBank if needed).
     * **stepdefs** has the pattern for each step definition, the ones Cucumber
originally indicated that you needed to implement.
     * **actions** defines what happens when the step definition is instructed
to execute.  It can set variables in the test suite or copy tests or scenarios
from a pre-existing test suite, like the ones you created earlier for creating
and validating an account.
   * Update **ParaBankStepDefinitions.java**.  Normally you would implement
each step definition as a block of java code but instead you will be calling
**StepDefinitionLoader.loadStepDefinitions()** to load them from the
**parabank_stepdefs.json** as follows:
     ```
     package com.parasoft.example.parabank.cucumber;

     import java.io.IOException;

     import com.parasoft.cucumber.soatest.StepDefinitionLoader;

     import cucumber.api.java8.GlueBase;

     public class ParaBankStepDefinitions implements GlueBase {
         public ParaBankStepDefinitions() throws IOException {
             StepDefinitionLoader.loadStepDefinitions(getClass(),
                     getClass().getResource("parabank_stepdefs.json"));
         }
     }
     ```

1. **Re-run the Cucumber scenario** now that the step definitions are defined in
the JSON and implemented as SOAtest test cases:
   * Make sure ParaBank is still running.
   * Start the SOAtest Server if not running (from
**Window> Show View> Other...> Parasoft> SOAtest Server**).
   * Right-click **parabank.feature** then select **Run As> JUnit Test**.  Click
the **JUnit** view.  Notice the scenario ran and passed but now shows all steps
in the test scenario as having executed instead of being skipped.
   * Click the **Console** view and observe the following message from Cucumber,
indicating that the tst file ran on the SOAtest server and that all the steps
in the Cucumber scenario have passed:
     ```
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
     0m4.960s
     ```

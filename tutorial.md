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

1. **Create a new Maven java project** that will host our Cucumber test scenario:
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
   * In SOAtest, click **Window> Perspective> Open Perspective> Other...**
   * Select **Java** then click **OK**

1. **Update the pom.xml**.  In the **Package Explorer**, expand the
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

   * Configure the **dependencies** element as follows:
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

1. Select **Project> Build Automatically** then wait a minute for the project to
build.  You can click the **Progress** view to check the status.  Verify no
errors are shown in the Progress view.

1. **Update the test sources**.
   * In the **parabank.cucumber** project expand
**src/test/java** and then expand **com.parasoft.example.parabank.cucumber**.
   * Select AppTest.java, right-click then select **Delete**.  This file is not
used as part of this tutorial.
   * Select **com.parasoft.example.parabank.cucumber** then right-click and
select **New> Class**.  Type the following then click **Finish** to complete the
wizard:
     * **Name:** ParaBankStepDefinitions
     * **Interfaces:** Select **Add..**, type **cucumber.api.java8.GlueBase**, then click **OK**
   * Select **com.parasoft.example.parabank.cucumber** then right-click and
select **New> Class**.  For **Name:** type **ParaBankSuite** then click
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
   * In the **parabank.cucumber** project expand **src/test** then right-click
then select **New> Folder**.
   * For **Folder name:** type
**resources/com/parasoft/example/parabank/cucumber** then click **Finish**
   * Select the new folder that was created, the most deeply nested one named
**cucumber**, then right-click and select **New> File**.
   * Type **parabank.feature** then click **Finish**
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

1. **Run the Cucumber scenario.**  Right-click **parabank.feature** then
select **Run As> JUnit Test**.  Click the **JUnit** view.  Notice the scenario
ran and passed.  However, notice that the **Console** view has the following
message, indicating that we need to implement our step definitions:
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

1. **Create SOAtest test suite.**
   * Make sure ParaBank is running as described at the start of this tutorial.
   * Right-click **src/test/resources/com/parasoft/example/parabank/cucumber** then
select **New> Other...**.
   * Select **Test (.tst) File** then click **Next**.
   * For **File name:** type **parabank_stepdefs.tst** then click **Next**.
   * Expand **REST**, select **Swagger** then click **Next**.
   * Type **http://localhost:8080/parabank/services/bank/swagger.yaml** (correct
the port number if needed) then click **Finish**

1. **Configure SOAtest test cases.**
   * *TODO*

1. **Define the step definitions, linking them to the SOAtest test cases.**
   * *TODO*

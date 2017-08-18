/*
 * Copyright 2017 Parasoft Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.parasoft.cucumber.soatest;

import com.fasterxml.jackson.databind.*;
import com.parasoft.api.rest.client.*;
import com.parasoft.api.rest.client.v5.model.environments.*;
import com.parasoft.api.rest.client.v5.model.environments.Environment;
import com.parasoft.api.rest.client.v5.model.files.*;
import com.parasoft.api.rest.client.v5.model.files.tsts.*;
import com.parasoft.api.rest.client.v5.model.suites.testsuites.*;
import com.parasoft.api.rest.client.v5.model.testexecutions.*;
import com.parasoft.api.rest.client.v5.resource.*;
import com.parasoft.cucumber.soatest.model.*;
import com.parasoft.cucumber.soatest.model.Variable;

import java.io.*;
import java.net.*;
import java.util.*;

import javax.activation.*;
import javax.ws.rs.*;
import javax.xml.parsers.*;
import javax.xml.xpath.*;

import org.w3c.dom.*;
import org.xml.sax.*;

import cucumber.api.java8.*;
import cucumber.runtime.*;
import cucumber.runtime.java.*;
import cucumber.runtime.java8.*;

public class StepDefinitionLoader {
    private static final String PROP_SOATEST_USERNAME = "soatest.username"; //$NON-NLS-1$
    private static final String PROP_SOATEST_PASSWORD = "soatest.password"; //$NON-NLS-1$
    private static final String DEFAULT_SOATEST_USERNAME = ""; //$NON-NLS-1$
    private static final String DEFAULT_SOATEST_PASSWORD = ""; //$NON-NLS-1$
    private static final String SOATEST_USERNAME = System.getProperty(PROP_SOATEST_USERNAME, DEFAULT_SOATEST_USERNAME);
    private static final String SOATEST_PASSWORD = System.getProperty(PROP_SOATEST_PASSWORD, DEFAULT_SOATEST_PASSWORD);
    private static final String SET_COLON = "set:"; //$NON-NLS-1$
    private static final String COPY_COLON = "copy:"; //$NON-NLS-1$
    private static final String SLASH_TEST_SUITE = "/Test Suite"; //$NON-NLS-1$
    private static final String FUNCVIOL = "//FuncViol"; //$NON-NLS-1$
    private static final String TEST_CASE_ID = "testCaseId"; //$NON-NLS-1$
    private static final String MSG ="msg"; //$NON-NLS-1$
    private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();
    private static final DocumentBuilderFactory docBuilderFactory = DocumentBuilderFactory.newInstance();
    private static final XPathExpression funcViolsXPath;

    static {
        docBuilderFactory.setNamespaceAware(true);
        docBuilderFactory.setExpandEntityReferences(false);
        try {
            funcViolsXPath = compileXPath(XPathFactory.newInstance(), FUNCVIOL);
        } catch (XPathExpressionException e) {
            throw new CucumberException(e);
        }
    }

    private final String targetId;
    private final String targetSuiteId;
    private ParasoftApiRestClient client;

    private StepDefinitionLoader(Class<? extends GlueBase> clazz,
            URL stepDefsUrl) throws IOException {
        Stepdefs stepDefs = OBJECT_MAPPER.readValue(stepDefsUrl, Stepdefs.class);
        Runner runner = stepDefs.getRunner();
        ExecutionSuite executionSuite = runner.getExecutionSuite();
        targetId = executionSuite.getParent() + '/' + executionSuite.getName();
        targetSuiteId = targetId + SLASH_TEST_SUITE;
        for (Stepdef stepDef : stepDefs.getStepdefs()) {
            JavaBackend.INSTANCE.get().addStepDefinition(stepDef.getPattern(),
                    stepDef.getTimeout(), createStepdefBody(stepDef),
                    ConstantPoolTypeIntrospector.INSTANCE);
        }
        JavaBackend.INSTANCE.get().addBeforeHookDefinition(LambdaGlueBase.EMPTY_TAG_EXPRESSIONS,
                LambdaGlueBase.NO_TIMEOUT, LambdaGlueBase.DEFAULT_BEFORE_ORDER, () -> {
                    createClient(runner);
                    deleteTstFile();
                    createTstFile(executionSuite, getFileName(stepDefsUrl.getPath()));
                    deleteAssets(runner.getAssets());
                    uploadAssets(clazz, runner.getAssets());
                });
        JavaBackend.INSTANCE.get().addAfterHookDefinition(LambdaGlueBase.EMPTY_TAG_EXPRESSIONS,
                LambdaGlueBase.NO_TIMEOUT, LambdaGlueBase.DEFAULT_AFTER_ORDER, () -> {
                    try {
                        String output = runTest(runner);
                        if (output != null) {
                            throw new CucumberException(output);
                        }
                    } finally {
                        closeClient();
                    }
                });
    }

    public static void loadStepDefinitions(Class<? extends GlueBase> clazz,
            URL stepDefsUrl) throws IOException {
        new StepDefinitionLoader(clazz, stepDefsUrl);
    }

    private StepdefBody createStepdefBody(Stepdef stepDef) {
        switch (stepDef.getArgs().intValue()) {
        case 0:
            return (StepdefBody.A0) () -> {
                performStep(null, stepDef);
            };
        case 1:
            return (StepdefBody.A1<String>) (String v1) -> {
                performStep(new String[] { v1 }, stepDef);
            };
        case 2:
            return (StepdefBody.A2<String, String>) (String v1, String v2) -> {
                performStep(new String[] { v1, v2 }, stepDef);
            };
        case 3:
            return (StepdefBody.A3<String, String, String>) (String v1, String v2, String v3) -> {
                performStep(new String[] { v1, v2, v3 }, stepDef);
            };
        case 4:
            return (StepdefBody.A4<String, String, String, String>) (String v1, String v2, String v3, String v4) -> {
                performStep(new String[] { v1, v2, v3, v4 }, stepDef);
            };
        case 5:
            return (StepdefBody.A5<String, String, String, String, String>) (String v1, String v2, String v3, String v4, String v5) -> {
                performStep(new String[] { v1, v2, v3, v4, v5 }, stepDef);
            };
        case 6:
            return (StepdefBody.A6<String, String, String, String, String, String>) (String v1, String v2, String v3, String v4, String v5, String v6) -> {
                performStep(new String[] { v1, v2, v3, v4, v5, v6 }, stepDef);
            };
        case 7:
            return (StepdefBody.A7<String, String, String, String, String, String, String>) (String v1, String v2, String v3, String v4, String v5, String v6, String v7) -> {
                performStep(new String[] { v1, v2, v3, v4, v5, v6, v7 }, stepDef);
            };
        case 8:
            return (StepdefBody.A8<String, String, String, String, String, String, String, String>) (String v1, String v2, String v3, String v4, String v5, String v6, String v7, String v8) -> {
                performStep(new String[] { v1, v2, v3, v4, v5, v6, v7, v8 }, stepDef);
            };
        case 9:
            return (StepdefBody.A9<String, String, String, String, String, String, String, String, String>) (String v1, String v2, String v3, String v4, String v5, String v6, String v7, String v8, String v9) -> {
                performStep(new String[] { v1, v2, v3, v4, v5, v6, v7, v8, v9 }, stepDef);
            };
        }
        return null;
    }

    private void performStep(String values[], Stepdef stepDef) {
        int valueIndex = 0;
        TestSuitesPUTRequest request = getTestSuitesPUTRequest();
        for (String action : stepDef.getActions()) {
            if (action.startsWith(SET_COLON)) {
                String varName = action.substring(SET_COLON.length(), action.length()).trim();
                setVariable(request, varName, values[valueIndex++]);
            } else if (action.startsWith(COPY_COLON)) {
                String testId = action.substring(COPY_COLON.length(), action.length()).trim();
                copyTest(stepDef.getPattern(), testId);
            }
        }
        client.v5().getTestSuites().putTestSuites(targetSuiteId, request);
    }

    private void createClient(Runner runner) {
        client = new ParasoftApiRestClient(runner.getServer(), SOATEST_USERNAME, SOATEST_PASSWORD);
        client.v5().getStatus();  // shake out any issues before running tests
    }

    private void closeClient() {
        try {
            client.close();
        } catch (Exception e) {
            // don't care
        } finally {
            client = null;
        }
    }

    private void createTstFile(ExecutionSuite executionSuite, String envName) {
        com.parasoft.api.rest.client.v5.resource.Tsts tests = client.getResource(
                com.parasoft.api.rest.client.v5.resource.Tsts.class, true);
        tests.postTst(
                new TstsRequest()
                .withName(executionSuite.getName())
                .withParent(new com.parasoft.api.rest.client.v5.model.files.tsts.Parent()
                        .withId(executionSuite.getParent())));
        client.v5().getEnvironments().postEnvironment(new EnvironmentsRequest()
                .withParent(new com.parasoft.api.rest.client.v5.model.environments.Parent()
                        .withId(targetSuiteId))
                .withLocal(new Environment()
                        .withName(envName)
                        .withVariables(convertVariables(executionSuite.getVariables()))));
    }

    private static List<com.parasoft.api.rest.client.v5.model.environments.Variable> convertVariables(
            List<Variable> variables) {
        if (variables == null) {
            return new ArrayList<>();
        }
        List<com.parasoft.api.rest.client.v5.model.environments.Variable> ret = new ArrayList<>(
                variables.size());
        for (Variable variable : variables) {
            ret.add(new com.parasoft.api.rest.client.v5.model.environments.Variable()
                    .withName(variable.getName())
                    .withValue(variable.getValue()));
        }
        return ret;
    }

    private void deleteTstFile() {
        if (targetId != null) {
            com.parasoft.api.rest.client.v5.resource.Files files = client.getResource(
                    com.parasoft.api.rest.client.v5.resource.Files.class, true);
            try {
                files.deleteFiles(targetId, false);
            } catch (ParasoftApiFault e) {
                // don't care if file doesn't exist
            }
        }
    }

    private void deleteAssets(List<Asset> assets) {
        if (assets == null) {
            return;
        }
        com.parasoft.api.rest.client.v5.resource.Files files = client.getResource(
                com.parasoft.api.rest.client.v5.resource.Files.class, true);
        for (Asset asset : assets) {
            try {
                files.deleteFiles(asset.getParent() + '/' + asset.getPath(), false);
            } catch (ParasoftApiFault e) {
                // don't care if file doesn't exist
            }
        }
    }

    private void uploadAssets(Class<? extends GlueBase> clazz,
            List<Asset> assets) {
        if (assets == null) {
            return;
        }
        com.parasoft.api.rest.client.v5.resource.Files files = client.getResource(
                com.parasoft.api.rest.client.v5.resource.Files.class, true);
        for (Asset asset : assets) {
            files.filesUpload(false, true,
                    new FileUploadRequest()
                            .withParent(new com.parasoft.api.rest.client.v5.model.files.Parent()
                                    .withId(asset.getParent())),
                    new URLDataSource(clazz.getResource(asset.getPath())) {
                        @Override
                        public String getName() {
                            return getFileName(asset.getPath());
                        }
                    });
        }
    }

    private static String getFileName(String path) {
        return new File(path).getName();
    }

    private TestSuitesPUTRequest getTestSuitesPUTRequest() {
        TestSuitesResponse response = client.v5().getTestSuites().getTestSuites(targetSuiteId, null);
        TestSuitesPUTRequest ret = new TestSuitesPUTRequest()
                .withDisabled(response.getDisabled())
                .withExecutionOptions(response.getExecutionOptions())
                .withName(response.getName())
                .withReferenced(response.getReferenced())
                .withReferenceLocation(response.getReferenceLocation())
                .withRequirementsAndNotes(response.getRequirementsAndNotes())
                .withVariables(response.getVariables());
        return ret;
    }

    private void setVariable(TestSuitesPUTRequest request, String name, String value) {
        List<com.parasoft.api.rest.client.v5.model.suites.testsuites.Variable> variables = request.getVariables();
        if (variables == null) {
            variables = new ArrayList<>();
            request.setVariables(variables);
        }
        boolean variableSet = false;
        for (com.parasoft.api.rest.client.v5.model.suites.testsuites.Variable variable : variables) {
            if (name.equals(variable.getName())) {
                variable.setStringValue(value);
                variableSet = true;
                break;
            }
        }
        if (!variableSet) {
            variables.add(new com.parasoft.api.rest.client.v5.model.suites.testsuites.Variable()
                    .withName(name)
                    .withType(com.parasoft.api.rest.client.v5.model.suites.testsuites.Variable.Type.STRING)
                    .withStringValue(value)
                    .withUseValueFromParentSuite(false));
        }
    }

    private void copyTest(String name, String testId) {
        client.v5().getTools().postToolsCopy(new com.parasoft.api.rest.client.v5.model.tools.CopyRequest()
                .withFrom(new com.parasoft.api.rest.client.v5.model.tools.From()
                        .withId(testId))
                .withTo(new com.parasoft.api.rest.client.v5.model.tools.To()
                        .withName(name)
                        .withParent(new com.parasoft.api.rest.client.v5.model.tools.Parent()
                                .withId(targetSuiteId))));
    }

    private String runTest(Runner runner) {
        TestExecutions testExecutions = client.v5().getTestExecutions();
        String jobId = null;
        try {
            jobId = testExecutions.postTestExecutions(new TestExecutionsRequest()
                    .withGeneral(new General()
                            .withConfig(runner.getTestConfiguration()))
                    .withScopeOptions(new ScopeOptions()
                            .withWorkspace(new Workspace()
                                    .withResources(Collections.singletonList(targetId))))).getId();
        } catch (WebApplicationException e) {
            return e.getMessage();
        }
        System.out.println("Test Execution - waiting on tests to complete."); //$NON-NLS-1$
        boolean testExecutionNotDone = true;
        while (testExecutionNotDone) {
            TestExecutionsStatusResponse status = null;
            try {
                status = testExecutions.getTestExecutionsStatus(jobId);
            } catch (WebApplicationException e) {
                return e.getMessage();
            }
            if (!status.getIsRunning() && status.getPercent() == 100) {
                testExecutionNotDone = false;
            } else {
                try {
                    Thread.sleep(500);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
        System.out.println("Test Execution of [" + targetId + //$NON-NLS-1$
                "] completed."); //$NON-NLS-1$
        TestExecutionsResultsResponse results = null;
        try {
            results = testExecutions
                    .getTestExecutionsResults(false, false, true, jobId);
        } catch (WebApplicationException e) {
            return e.getMessage();
        }
        Summary resultSummary = results.getSummary();
        StringBuilder summary = new StringBuilder(
                "Test Execution of [" + targetId + "], " + //$NON-NLS-1$
                "results (failures/total): " + //$NON-NLS-1$
                resultSummary.getFailureCount() + '/' +
                resultSummary.getExecution().getTestRunCount());
        if (resultSummary.getFailureCount() != 0) {
            String xmlReport = results.getXmlReport();
            if (xmlReport != null) {
                try {
                    byte[] xmlReportBytes = Base64.getDecoder().decode(xmlReport);
                    Document doc = docBuilderFactory.newDocumentBuilder().parse(
                            new InputSource(new ByteArrayInputStream(xmlReportBytes)));
                    Element docElement = doc.getDocumentElement();
                    NodeList violMsgs = (NodeList) funcViolsXPath.evaluate(
                            docElement, XPathConstants.NODESET);
                    Map<String, List<String>> failures = new LinkedHashMap<>();
                    for (int i = 0; i < violMsgs.getLength(); i++) {
                        Element funcViol = (Element) violMsgs.item(i);
                        String testCaseId = funcViol.getAttribute(TEST_CASE_ID);
                        String message = funcViol.getAttribute(MSG);
                        List<String> testFailures = failures.get(testCaseId);
                        if (testFailures == null) {
                            testFailures = new ArrayList<>();
                            failures.put(testCaseId, testFailures);
                        }
                        testFailures.add(message);
                    }
                    XPathFactory factory = XPathFactory.newInstance();
                    for (Map.Entry<String, List<String>> failure : failures.entrySet()) {
                        Element testElement = (Element) compileXPath(factory,
                                "//Test[@id='" + //$NON-NLS-1$
                                failure.getKey() + "']") //$NON-NLS-1$
                                .evaluate(docElement, XPathConstants.NODE);
                        String testName = testElement.getAttribute("name");
                        summary.append('\n');
                        summary.append(testName + '\n');
                        for (String message : failure.getValue()) {
                            summary.append(message + '\n');
                        }
                    }
                } catch (SAXException | IOException |
                        ParserConfigurationException |
                        XPathExpressionException e) {
                    e.printStackTrace();
                }
            }
            System.out.println(summary);
            return summary.toString();
        }
        System.out.println(summary);
        return null;
    }

    private static final XPathExpression compileXPath(XPathFactory factory,
            String xPath) throws XPathExpressionException {
        return factory.newXPath().compile(xPath);
    }
}

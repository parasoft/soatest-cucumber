<?xml version="1.0" encoding="UTF-8"?>
<SOAtestProject xmlVersion="5" productVersion="9.10.1">
 <TestSuite className="webtool.test.TestSuite" version="43.15.2">
  <DebugAssets className="webtool.test.debug.DebugAssets" version="1">
  </DebugAssets>
  <ReportingSettings className="webtool.test.ReportingSettings" version="1.1">
   <TestGRSSettings className="webtool.test.grs.TestGRSSettings" version="1.4.3">
   </TestGRSSettings>
  </ReportingSettings>
  <environmentConfig>true</environmentConfig>
  <EnvironmentConfiguration className="webtool.environment.EnvironmentConfiguration" version="1">
   <environmentsSize>1</environmentsSize>
   <Environment className="webtool.environment.Environment" version="1">
    <name>localhost:8090</name>
    <active>true</active>
    <variablesSize>2</variablesSize>
    <EnvironmentVariable className="webtool.environment.EnvironmentVariable" version="3">
     <maskValue>AgAAACAHo4whEjQ7pVofZlQatAQ1x+GHWPSS5UNsspZC54m6bw==</maskValue>
     <value>AgAAAFDL2cFWKzY9oZ1tt03A0Tt0h9sItsql6dJSfc3UuIxtkSEz3rOZLMG8svFWesDwv+QEt/Na6Y88Ybjq57ssGdtw6u5WDNN8UFz0n05APJeKSg==</value>
     <name>SWAGGER</name>
    </EnvironmentVariable>
    <EnvironmentVariable className="webtool.environment.EnvironmentVariable" version="3">
     <maskValue>AgAAACCSe0xcb9TdWn1pH9dqfK9RsBogxcQ7FNucIMiLmHUGKA==</maskValue>
     <value>AgAAAEDx7Hu3PqzWC75ssEkie0Q+BduOjMfWdp+gs9xli6JilITeV1aKPCdEgxVf4vTllQEFwF793YR/qZYEd8JL6i2s</value>
     <name>BASEURL</name>
    </EnvironmentVariable>
   </Environment>
  </EnvironmentConfiguration>
  <enabled>true</enabled>
  <name>Test Suite</name>
  <TestSuitePerformanceOptions className="webtool.test.performance.TestSuitePerformanceOptions" version="1.5">
   <APMPerformanceProfileProviderContainer className="webtool.test.performance.apm.APMPerformanceProfileProviderContainer" version="1.1">
   </APMPerformanceProfileProviderContainer>
   <groupss size="26">
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="0" version="1.2">
     <name>/accounts/{accountId} - GET</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="1" version="1.2">
     <id>1</id>
     <name>/accounts/{accountId}/transactions - GET</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="2" version="1.2">
     <id>2</id>
     <name>/accounts/{accountId}/transactions/amount/{amount} - GET</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="3" version="1.2">
     <id>3</id>
     <name>/accounts/{accountId}/transactions/fromDate/{fromDate}/toDate/{toDate} - GET</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="4" version="1.2">
     <id>4</id>
     <name>/accounts/{accountId}/transactions/month/{month}/type/{type} - GET</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="5" version="1.2">
     <id>5</id>
     <name>/accounts/{accountId}/transactions/onDate/{onDate} - GET</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="6" version="1.2">
     <id>6</id>
     <name>/cleanDB - POST</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="7" version="1.2">
     <id>7</id>
     <name>/createAccount - POST</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="8" version="1.2">
     <id>8</id>
     <name>/customers/update/{customerId} - POST</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="9" version="1.2">
     <id>9</id>
     <name>/customers/{customerId} - GET</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="10" version="1.2">
     <id>10</id>
     <name>/customers/{customerId}/accounts - GET</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="11" version="1.2">
     <id>11</id>
     <name>/customers/{customerId}/buyPosition - POST</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="12" version="1.2">
     <id>12</id>
     <name>/customers/{customerId}/positions - GET</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="13" version="1.2">
     <id>13</id>
     <name>/customers/{customerId}/sellPosition - POST</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="14" version="1.2">
     <id>14</id>
     <name>/deposit - POST</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="15" version="1.2">
     <id>15</id>
     <name>/initializeDB - POST</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="16" version="1.2">
     <id>16</id>
     <name>/login/{username}/{password} - GET</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="17" version="1.2">
     <id>17</id>
     <name>/positions/{positionId} - GET</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="18" version="1.2">
     <id>18</id>
     <name>/positions/{positionId}/{startDate}/{endDate} - GET</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="19" version="1.2">
     <id>19</id>
     <name>/requestLoan - POST</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="20" version="1.2">
     <id>20</id>
     <name>/setParameter/{name}/{value} - POST</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="21" version="1.2">
     <id>21</id>
     <name>/shutdownJmsListener - POST</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="22" version="1.2">
     <id>22</id>
     <name>/startupJmsListener - POST</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="23" version="1.2">
     <id>23</id>
     <name>/transactions/{transactionId} - GET</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="24" version="1.2">
     <id>24</id>
     <name>/transfer - POST</name>
    </PerformanceGroup>
    <PerformanceGroup className="webtool.test.performance.PerformanceGroup" index="25" version="1.2">
     <id>25</id>
     <name>/withdraw - POST</name>
    </PerformanceGroup>
   </groupss>
   <profiless size="0">
   </profiless>
  </TestSuitePerformanceOptions>
  <rootTestSuite>true</rootTestSuite>
  <AdvancedExecutionOptions className="webtool.test.AdvancedExecutionOptions" version="1.3">
  </AdvancedExecutionOptions>
  <TestSuiteLoadTestOptions className="webtool.loadtest.sim.component.soatest.TestSuiteLoadTestOptions" version="1.1">
  </TestSuiteLoadTestOptions>
  <SetupTeardownOptions className="webtool.test.SetupTeardownOptions" version="1.1">
  </SetupTeardownOptions>
  <notes>Created from: http://localhost:8090/parabank/services/bank/swagger.yaml&#xD;
Timestamp: 2017-08-11 14:28:42</notes>
  <browserOptions>true</browserOptions>
  <TestSuiteBrowserTestingOptions className="webtool.test.TestSuiteBrowserTestingOptions" version="1.14">
   <DefaultCustomFrameworkOption className="webtool.tool.DefaultCustomFrameworkOption" version="1.1.1">
   </DefaultCustomFrameworkOption>
   <InheritingAuthentication className="webtool.test.InheritingAuthentication" version="1.4">
   </InheritingAuthentication>
   <DefaultCustomHeadlessOption className="webtool.tool.DefaultCustomHeadlessOption" version="1.1.1">
   </DefaultCustomHeadlessOption>
   <DefaultCustomBrowserType className="webtool.tool.DefaultCustomBrowserType" version="1.8.1">
    <CompositeBrowserType className="com.parasoft.util.CompositeBrowserType" version="1.1.1">
     <browserTypes size="3">
      <SingleBrowserType className="com.parasoft.util.SingleBrowserType" index="0" version="1.1.1">
       <typeValue>0</typeValue>
      </SingleBrowserType>
      <SingleBrowserType className="com.parasoft.util.SingleBrowserType" index="1" version="1.1.1">
       <typeValue>1</typeValue>
      </SingleBrowserType>
      <SingleBrowserType className="com.parasoft.util.SingleBrowserType" index="2" version="1.1.1">
       <typeValue>3</typeValue>
      </SingleBrowserType>
     </browserTypes>
    </CompositeBrowserType>
   </DefaultCustomBrowserType>
  </TestSuiteBrowserTestingOptions>
  <TestSuiteSoapClientOptions className="webtool.test.TestSuiteSoapClientOptions" version="1.2">
   <WsdlEndpointOptions className="webtool.tool.WsdlEndpointOptions" version="1.1">
    <DefaultCustomWsdl className="webtool.tool.DefaultCustomWsdl" version="1.1.1">
    </DefaultCustomWsdl>
    <DefaultCustomEndpoint className="webtool.tool.DefaultCustomEndpoint" version="1.1.1">
    </DefaultCustomEndpoint>
   </WsdlEndpointOptions>
   <SOAPRPCToolOptions className="webtool.app.SOAPRPCToolOptions" version="1.5">
    <ResetExistingCookiesPreferenceProviderImpl className="webtool.tool.ResetExistingCookiesPreferenceProviderImpl" version="1.1">
    </ResetExistingCookiesPreferenceProviderImpl>
    <DefaultResetExistingCookies className="webtool.tool.DefaultResetExistingCookies" version="1.1.1">
    </DefaultResetExistingCookies>
    <RequestHeaderConstrainProviderImpl className="webtool.tool.RequestHeaderConstrainProviderImpl" version="1.1">
    </RequestHeaderConstrainProviderImpl>
    <DefaultCustomConstrain className="webtool.tool.DefaultCustomConstrain" version="1.1.1">
    </DefaultCustomConstrain>
    <DefaultCustomEncoding className="webtool.tool.DefaultCustomEncoding" version="1.1.1">
    </DefaultCustomEncoding>
    <DefaultCustomTimeout className="webtool.tool.DefaultCustomTimeout" version="1.2.1">
    </DefaultCustomTimeout>
    <DefaultCustomSoapVersion className="webtool.tool.DefaultCustomSoapVersion" version="1.1.1">
    </DefaultCustomSoapVersion>
    <DefaultCustomAttachment className="webtool.tool.DefaultCustomAttachment" version="1.1.1">
    </DefaultCustomAttachment>
    <DefaultCustomTransport className="webtool.tool.DefaultCustomTransport" version="1.1.1">
    </DefaultCustomTransport>
   </SOAPRPCToolOptions>
  </TestSuiteSoapClientOptions>
  <profileMappingID>0</profileMappingID>
  <maxProfileMappingID>28</maxProfileMappingID>
  <PropertyOwnerImpl className="com.parasoft.property.PropertyOwnerImpl" version="1.1">
  </PropertyOwnerImpl>
  <nextIdentifier>65</nextIdentifier>
  <testsSize>1</testsSize>
  <TestSuite className="webtool.test.TestSuite" version="43.15.2">
   <DebugAssets className="webtool.test.debug.DebugAssets" version="1">
   </DebugAssets>
   <ReportingSettings className="webtool.test.ReportingSettings" version="1.1">
    <TestGRSSettings className="webtool.test.grs.TestGRSSettings" version="1.4.3">
    </TestGRSSettings>
   </ReportingSettings>
   <testLogic>true</testLogic>
   <TestLogic className="webtool.test.logic.TestLogic" version="1.7">
    <TestExecutionDelay className="webtool.test.logic.TestExecutionDelay" version="1.2">
    </TestExecutionDelay>
    <TestExecutionDelay className="webtool.test.logic.TestExecutionDelay" version="1.2">
    </TestExecutionDelay>
    <condition>true</condition>
    <TestLogicVariableCondition className="webtool.test.logic.TestLogicVariableCondition" version="1.2">
    </TestLogicVariableCondition>
    <TestDependencyLogic className="webtool.test.logic.TestDependencyLogic" version="1.2">
    </TestDependencyLogic>
   </TestLogic>
   <testID>55</testID>
   <enabled>true</enabled>
   <name>Test Steps</name>
   <TestSuitePerformanceOptions className="webtool.test.performance.TestSuitePerformanceOptions" version="1.5">
    <APMPerformanceProfileProviderContainer className="webtool.test.performance.apm.APMPerformanceProfileProviderContainer" version="1.1">
    </APMPerformanceProfileProviderContainer>
    <profiless size="0">
    </profiless>
   </TestSuitePerformanceOptions>
   <AdvancedExecutionOptions className="webtool.test.AdvancedExecutionOptions" version="1.3">
   </AdvancedExecutionOptions>
   <TestSuiteLoadTestOptions className="webtool.loadtest.sim.component.soatest.TestSuiteLoadTestOptions" version="1.1">
   </TestSuiteLoadTestOptions>
   <SetupTeardownOptions className="webtool.test.SetupTeardownOptions" version="1.1">
   </SetupTeardownOptions>
   <browserOptions>true</browserOptions>
   <TestSuiteBrowserTestingOptions className="webtool.test.TestSuiteBrowserTestingOptions" version="1.14">
    <DefaultCustomFrameworkOption className="webtool.tool.DefaultCustomFrameworkOption" version="1.1.1">
    </DefaultCustomFrameworkOption>
    <InheritingAuthentication className="webtool.test.InheritingAuthentication" version="1.4">
    </InheritingAuthentication>
    <DefaultCustomHeadlessOption className="webtool.tool.DefaultCustomHeadlessOption" version="1.1.1">
    </DefaultCustomHeadlessOption>
    <DefaultCustomBrowserType className="webtool.tool.DefaultCustomBrowserType" version="1.8.1">
     <CompositeBrowserType className="com.parasoft.util.CompositeBrowserType" version="1.1.1">
      <browserTypes size="3">
       <SingleBrowserType className="com.parasoft.util.SingleBrowserType" index="0" version="1.1.1">
        <typeValue>0</typeValue>
       </SingleBrowserType>
       <SingleBrowserType className="com.parasoft.util.SingleBrowserType" index="1" version="1.1.1">
        <typeValue>1</typeValue>
       </SingleBrowserType>
       <SingleBrowserType className="com.parasoft.util.SingleBrowserType" index="2" version="1.1.1">
        <typeValue>3</typeValue>
       </SingleBrowserType>
      </browserTypes>
     </CompositeBrowserType>
    </DefaultCustomBrowserType>
   </TestSuiteBrowserTestingOptions>
   <TestSuiteSoapClientOptions className="webtool.test.TestSuiteSoapClientOptions" version="1.2">
    <WsdlEndpointOptions className="webtool.tool.WsdlEndpointOptions" version="1.1">
     <DefaultCustomWsdl className="webtool.tool.DefaultCustomWsdl" version="1.1.1">
     </DefaultCustomWsdl>
     <DefaultCustomEndpoint className="webtool.tool.DefaultCustomEndpoint" version="1.1.1">
     </DefaultCustomEndpoint>
    </WsdlEndpointOptions>
    <SOAPRPCToolOptions className="webtool.app.SOAPRPCToolOptions" version="1.5">
     <ResetExistingCookiesPreferenceProviderImpl className="webtool.tool.ResetExistingCookiesPreferenceProviderImpl" version="1.1">
     </ResetExistingCookiesPreferenceProviderImpl>
     <DefaultResetExistingCookies className="webtool.tool.DefaultResetExistingCookies" version="1.1.1">
     </DefaultResetExistingCookies>
     <RequestHeaderConstrainProviderImpl className="webtool.tool.RequestHeaderConstrainProviderImpl" version="1.1">
     </RequestHeaderConstrainProviderImpl>
     <DefaultCustomConstrain className="webtool.tool.DefaultCustomConstrain" version="1.1.1">
     </DefaultCustomConstrain>
     <DefaultCustomEncoding className="webtool.tool.DefaultCustomEncoding" version="1.1.1">
     </DefaultCustomEncoding>
     <DefaultCustomTimeout className="webtool.tool.DefaultCustomTimeout" version="1.2.1">
     </DefaultCustomTimeout>
     <DefaultCustomSoapVersion className="webtool.tool.DefaultCustomSoapVersion" version="1.1.1">
     </DefaultCustomSoapVersion>
     <DefaultCustomAttachment className="webtool.tool.DefaultCustomAttachment" version="1.1.1">
     </DefaultCustomAttachment>
     <DefaultCustomTransport className="webtool.tool.DefaultCustomTransport" version="1.1.1">
     </DefaultCustomTransport>
    </SOAPRPCToolOptions>
   </TestSuiteSoapClientOptions>
   <profileMappingID>0</profileMappingID>
   <maxProfileMappingID>1</maxProfileMappingID>
   <PropertyOwnerImpl className="com.parasoft.property.PropertyOwnerImpl" version="1.1">
   </PropertyOwnerImpl>
   <nextIdentifier>1</nextIdentifier>
   <testsSize>2</testsSize>
   <RESTClientToolTest className="webtool.soap.http.RESTClientToolTest" version="2.1.4.15.2">
    <DebugAssets className="webtool.test.debug.DebugAssets" version="1">
    </DebugAssets>
    <ReportingSettings className="webtool.test.ReportingSettings" version="1.1">
     <TestGRSSettings className="webtool.test.grs.TestGRSSettings" version="1.4.3">
     </TestGRSSettings>
    </ReportingSettings>
    <testLogic>true</testLogic>
    <TestLogic className="webtool.test.logic.TestLogic" version="1.7">
     <TestExecutionDelay className="webtool.test.logic.TestExecutionDelay" version="1.2">
     </TestExecutionDelay>
     <TestExecutionDelay className="webtool.test.logic.TestExecutionDelay" version="1.2">
     </TestExecutionDelay>
     <TestDependencyLogic className="webtool.test.logic.TestDependencyLogic" version="1.2">
     </TestDependencyLogic>
    </TestLogic>
    <testID>58</testID>
    <enabled>true</enabled>
    <name>/createAccount - POST</name>
    <performanceGroup>7</performanceGroup>
    <RESTClient className="webtool.soap.http.RESTClient" version="v.2.15.28.14">
     <iconName>RESTClient</iconName>
     <name>CreateAccount</name>
     <MessagingSchemaElement className="webtool.soap.http.MessagingSchemaElement" version="2">
      <ElementValue className="webtool.soap.ElementValue" version="1.11.12">
       <writeType>true</writeType>
       <ElementType className="webtool.soap.ElementType" version="2.12.3">
        <hash>1</hash>
        <localName>root</localName>
        <ComplexType className="webtool.soap.ComplexType" version="2.10.3">
         <hash>2</hash>
         <attributesSize>1</attributesSize>
         <AttributeType className="webtool.soap.AttributeType" version="2.3.3">
          <hash>3</hash>
          <name>type</name>
          <fixed>object</fixed>
          <StringType className="webtool.soap.StringType" version="2.5.3">
           <hash>4</hash>
          </StringType>
          <required>true</required>
         </AttributeType>
         <name>rootType</name>
         <compositor>true</compositor>
         <AllCompositor className="webtool.soap.AllCompositor" version="2.1.3.3">
          <hash>5</hash>
         </AllCompositor>
        </ComplexType>
       </ElementType>
       <size>1</size>
       <ComplexValue className="webtool.soap.ComplexValue" version="1.10.12">
        <attributesSize>1</attributesSize>
        <AttributeValue className="webtool.soap.AttributeValue" version="1.3.12">
         <StringValue className="webtool.soap.StringValue" version="1.7.1.12">
          <value>object</value>
         </StringValue>
         <useValue>true</useValue>
        </AttributeValue>
        <compositorValue>true</compositorValue>
        <CompositorValue className="webtool.soap.CompositorValue" version="1.3.12">
         <CompositorValueSetCollectionSet className="webtool.soap.CompositorValueSetCollectionSet" version="1.1">
          <setSize>1</setSize>
          <CompositorValueSet className="webtool.soap.CompositorValueSet" version="1.1">
          </CompositorValueSet>
         </CompositorValueSetCollectionSet>
        </CompositorValue>
       </ComplexValue>
      </ElementValue>
      <elementTypeName>root</elementTypeName>
     </MessagingSchemaElement>
     <hasServiceInfo>true</hasServiceInfo>
     <ServiceInfo className="webtool.tool.ServiceInfo" version="1.2">
      <StandardServiceDescriptor className="com.parasoft.service.catalog.impl.StandardServiceDescriptor" version="1.1">
       <location>http://localhost:8090/parabank/services/bank/swagger.yaml</location>
      </StandardServiceDescriptor>
     </ServiceInfo>
     <JSONBuilder className="webtool.ecmascript.json.JSONBuilder" version="2">
      <hasValue>true</hasValue>
      <JSONObjectValue className="webtool.ecmascript.json.JSONObjectValue" version="1.1.1">
       <nameIsNull>true</nameIsNull>
       <JSONValueCollection className="webtool.ecmascript.json.JSONValueCollection" version="2">
       </JSONValueCollection>
      </JSONObjectValue>
     </JSONBuilder>
     <LocationObject className="webtool.wsdl.LocationObject" version="2">
      <MessagingClient_SchemaLocation>${SWAGGER}</MessagingClient_SchemaLocation>
     </LocationObject>
     <MessagingSchemaElement className="webtool.soap.http.MessagingSchemaElement" version="2">
      <ElementValue className="webtool.soap.ElementValue" version="1.11.12">
       <writeType>true</writeType>
       <ElementType className="webtool.soap.ElementType" version="2.12.3">
        <hash>1</hash>
        <ComplexType className="webtool.soap.ComplexType" version="2.10.3">
         <hash>2</hash>
         <name>anonymous</name>
         <compositor>true</compositor>
         <SequenceCompositor className="webtool.soap.SequenceCompositor" version="2.1.3.3">
          <hash>3</hash>
         </SequenceCompositor>
        </ComplexType>
       </ElementType>
       <size>1</size>
       <ComplexValue className="webtool.soap.ComplexValue" version="1.10.12">
        <compositorValue>true</compositorValue>
        <CompositorValue className="webtool.soap.CompositorValue" version="1.3.12">
         <CompositorValueSetCollectionSet className="webtool.soap.CompositorValueSetCollectionSet" version="1.1">
          <setSize>1</setSize>
          <CompositorValueSet className="webtool.soap.CompositorValueSet" version="1.1">
          </CompositorValueSet>
         </CompositorValueSetCollectionSet>
        </CompositorValue>
       </ComplexValue>
      </ElementValue>
     </MessagingSchemaElement>
     <DefaultCustomTimeout className="webtool.tool.DefaultCustomTimeout" version="1.2.1">
     </DefaultCustomTimeout>
     <NameValueProperties className="webtool.data.NameValueProperties" version="1.4">
     </NameValueProperties>
     <MapMessageProperties className="webtool.soap.jms.MapMessageProperties" version="1.1">
     </MapMessageProperties>
     <JMSMessageOutputProvider className="webtool.soap.jms.JMSMessageOutputProvider" version="3.1.1">
      <JMSOutputProvider className="webtool.soap.jms.JMSOutputProvider" version="1.1">
       <name>Request Object</name>
       <menuName>Object</menuName>
      </JMSOutputProvider>
      <JMSOutputProvider className="webtool.soap.jms.JMSOutputProvider" version="1.1">
       <name>Response Message Object</name>
       <menuName>Message Object</menuName>
      </JMSOutputProvider>
     </JMSMessageOutputProvider>
     <ValidResponseRange className="webtool.messaging.ValidResponseRange" version="1.3">
      <MultiValue className="webtool.data.MultiValue" version="1.4">
       <StringTestValue className="webtool.data.StringTestValue" version="4.1">
        <validResponseRange>200</validResponseRange>
       </StringTestValue>
       <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
       </ParameterizedTestValue>
       <valuesSize>1</valuesSize>
       <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
        <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
         <code>true</code>
         <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
          <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
           <useText>true</useText>
           <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
           </ScriptingTextInput>
          </ScriptingInput>
          <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
          </ScriptEngineIdentifier>
         </ScriptCode>
         <methodId>true</methodId>
         <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
         </ScriptMethodIdentifier>
        </UserMethod>
       </ScriptedValue>
      </MultiValue>
     </ValidResponseRange>
     <NameValueProperties className="webtool.data.NameValueProperties" version="1.4">
     </NameValueProperties>
     <MultiValue className="webtool.data.MultiValue" version="1.4">
      <StringTestValue className="webtool.data.StringTestValue" version="4.1">
       <HTTPClient_Endpoint>${BASEURL}/createAccount?customerId=0&amp;newAccountType=0&amp;fromAccountId=0</HTTPClient_Endpoint>
      </StringTestValue>
      <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
      </ParameterizedTestValue>
      <valuesSize>1</valuesSize>
      <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
       <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
        <code>true</code>
        <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
         <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
          <useText>true</useText>
          <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
          </ScriptingTextInput>
         </ScriptingInput>
         <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
         </ScriptEngineIdentifier>
        </ScriptCode>
        <methodId>true</methodId>
        <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
        </ScriptMethodIdentifier>
       </UserMethod>
      </ScriptedValue>
     </MultiValue>
     <NameValueProperties className="webtool.data.NameValueProperties" version="1.4">
      <propertiesSize>3</propertiesSize>
      <NameValuePair className="webtool.data.NameValuePair" version="3.3">
       <name>customerId</name>
       <MultiValue className="webtool.data.MultiValue" version="1.4">
        <StringTestValue className="webtool.data.StringTestValue" version="4.1">
         <value>0</value>
        </StringTestValue>
        <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
        </ParameterizedTestValue>
        <valuesSize>1</valuesSize>
        <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
         <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
          <code>true</code>
          <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
           <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
            <useText>true</useText>
            <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
            </ScriptingTextInput>
           </ScriptingInput>
           <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
           </ScriptEngineIdentifier>
          </ScriptCode>
          <methodId>true</methodId>
          <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
          </ScriptMethodIdentifier>
         </UserMethod>
        </ScriptedValue>
       </MultiValue>
      </NameValuePair>
      <NameValuePair className="webtool.data.NameValuePair" version="3.3">
       <name>newAccountType</name>
       <MultiValue className="webtool.data.MultiValue" version="1.4">
        <StringTestValue className="webtool.data.StringTestValue" version="4.1">
         <value>0</value>
        </StringTestValue>
        <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
        </ParameterizedTestValue>
        <valuesSize>1</valuesSize>
        <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
         <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
          <code>true</code>
          <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
           <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
            <useText>true</useText>
            <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
            </ScriptingTextInput>
           </ScriptingInput>
           <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
           </ScriptEngineIdentifier>
          </ScriptCode>
          <methodId>true</methodId>
          <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
          </ScriptMethodIdentifier>
         </UserMethod>
        </ScriptedValue>
       </MultiValue>
      </NameValuePair>
      <NameValuePair className="webtool.data.NameValuePair" version="3.3">
       <name>fromAccountId</name>
       <MultiValue className="webtool.data.MultiValue" version="1.4">
        <StringTestValue className="webtool.data.StringTestValue" version="4.1">
         <value>0</value>
        </StringTestValue>
        <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
        </ParameterizedTestValue>
        <valuesSize>1</valuesSize>
        <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
         <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
          <code>true</code>
          <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
           <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
            <useText>true</useText>
            <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
            </ScriptingTextInput>
           </ScriptingInput>
           <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
           </ScriptEngineIdentifier>
          </ScriptCode>
          <methodId>true</methodId>
          <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
          </ScriptMethodIdentifier>
         </UserMethod>
        </ScriptedValue>
       </MultiValue>
      </NameValuePair>
     </NameValueProperties>
     <TransportProperties className="webtool.messaging.TransportProperties" version="11">
      <ProtocolPropertiesManager className="webtool.messaging.ProtocolPropertiesManager" version="1">
       <size>3</size>
       <HTTPClientHTTPProperties className="webtool.soap.http.HTTPClientHTTPProperties" version="3.16">
        <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
         <bool>true</bool>
        </ApplyableBooleanConfiguration>
        <HTTPCompressionConfiguration className="webtool.messaging.HTTPCompressionConfiguration" version="1.1">
        </HTTPCompressionConfiguration>
        <CommonHTTPProperties className="webtool.messaging.CommonHTTPProperties" version="4">
         <MultiValue className="webtool.data.MultiValue" version="1.4">
          <HTTPMethodTestValue className="webtool.messaging.HTTPMethodTestValue" version="1.1">
           <method>POST</method>
          </HTTPMethodTestValue>
          <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
          </ParameterizedTestValue>
          <valuesSize>1</valuesSize>
          <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
           <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
            <code>true</code>
            <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
             <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
              <useText>true</useText>
              <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
              </ScriptingTextInput>
             </ScriptingInput>
             <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
             </ScriptEngineIdentifier>
            </ScriptCode>
            <methodId>true</methodId>
            <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
            </ScriptMethodIdentifier>
           </UserMethod>
          </ScriptedValue>
         </MultiValue>
         <OAuthConfiguration className="webtool.security.oauth.OAuthConfiguration" version="1">
          <MultiValue className="webtool.data.MultiValue" version="1.4">
           <StringTestValue className="webtool.data.StringTestValue" version="4.1">
           </StringTestValue>
           <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
           </ParameterizedTestValue>
          </MultiValue>
          <MultiValue className="webtool.data.MultiValue" version="1.4">
           <StringTestValue className="webtool.data.StringTestValue" version="4.1">
           </StringTestValue>
           <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
           </ParameterizedTestValue>
          </MultiValue>
          <OAuthSignRequestConfiguration className="webtool.security.oauth.OAuthSignRequestConfiguration" version="1">
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </OAuthSignRequestConfiguration>
          <OAuthGetRequestTokenConfiguration className="webtool.security.oauth.OAuthGetRequestTokenConfiguration" version="1">
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </OAuthGetRequestTokenConfiguration>
          <OAuthGetAccessTokenConfiguration className="webtool.security.oauth.OAuthGetAccessTokenConfiguration" version="1">
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </OAuthGetAccessTokenConfiguration>
          <NameValueProperties className="webtool.data.NameValueProperties" version="1.4">
          </NameValueProperties>
         </OAuthConfiguration>
         <ApplyableResetExistingCookiesConfiguration className="webtool.tool.ApplyableResetExistingCookiesConfiguration" version="1.1.2">
          <ResetExistingCookiesPreferenceProviderImpl className="webtool.tool.ResetExistingCookiesPreferenceProviderImpl" version="1.1">
          </ResetExistingCookiesPreferenceProviderImpl>
          <DefaultResetExistingCookies className="webtool.tool.DefaultResetExistingCookies" version="1.1.1">
          </DefaultResetExistingCookies>
         </ApplyableResetExistingCookiesConfiguration>
         <ClientSideSSLProperties className="webtool.security.ClientSideSSLProperties" version="1.1">
         </ClientSideSSLProperties>
         <NameValueProperties className="webtool.data.NameValueProperties" version="1.4">
          <propertiesSize>1</propertiesSize>
          <NameValuePair className="webtool.data.NameValuePair" version="3.3">
           <name>Accept</name>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
             <value>application/json</value>
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
            <valuesSize>1</valuesSize>
            <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
             <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
              <code>true</code>
              <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
               <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
                <useText>true</useText>
                <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
                </ScriptingTextInput>
               </ScriptingInput>
               <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
               </ScriptEngineIdentifier>
              </ScriptCode>
              <methodId>true</methodId>
              <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
              </ScriptMethodIdentifier>
             </UserMethod>
            </ScriptedValue>
           </MultiValue>
          </NameValuePair>
         </NameValueProperties>
         <Authentication className="webtool.security.Authentication" version="2.4">
          <NameValuePair className="webtool.data.NameValuePair" version="3.3">
           <name>Service</name>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </NameValuePair>
          <NameValuePair className="webtool.data.NameValuePair" version="3.3">
           <name>Username</name>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </NameValuePair>
          <NameValuePair className="webtool.data.NameValuePair" version="3.3">
           <name>Password</name>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <PasswordTestValue className="webtool.data.PasswordTestValue" version="1.1">
            </PasswordTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </NameValuePair>
         </Authentication>
        </CommonHTTPProperties>
        <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
        </ApplyableBooleanConfiguration>
        <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
        </ApplyableBooleanConfiguration>
        <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
         <bool>true</bool>
        </ApplyableBooleanConfiguration>
       </HTTPClientHTTPProperties>
       <HTTPClientHTTPProperties className="webtool.soap.http.HTTPClientHTTPProperties" version="3.16">
        <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
         <bool>true</bool>
        </ApplyableBooleanConfiguration>
        <HTTPCompressionConfiguration className="webtool.messaging.HTTPCompressionConfiguration" version="1.1">
        </HTTPCompressionConfiguration>
        <CommonHTTPProperties className="webtool.messaging.CommonHTTPProperties" version="4">
         <MultiValue className="webtool.data.MultiValue" version="1.4">
          <HTTPMethodTestValue className="webtool.messaging.HTTPMethodTestValue" version="1.1">
           <method>POST</method>
          </HTTPMethodTestValue>
          <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
          </ParameterizedTestValue>
          <valuesSize>1</valuesSize>
          <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
           <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
            <code>true</code>
            <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
             <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
              <useText>true</useText>
              <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
              </ScriptingTextInput>
             </ScriptingInput>
             <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
             </ScriptEngineIdentifier>
            </ScriptCode>
            <methodId>true</methodId>
            <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
            </ScriptMethodIdentifier>
           </UserMethod>
          </ScriptedValue>
         </MultiValue>
         <OAuthConfiguration className="webtool.security.oauth.OAuthConfiguration" version="1">
          <MultiValue className="webtool.data.MultiValue" version="1.4">
           <StringTestValue className="webtool.data.StringTestValue" version="4.1">
           </StringTestValue>
           <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
           </ParameterizedTestValue>
          </MultiValue>
          <MultiValue className="webtool.data.MultiValue" version="1.4">
           <StringTestValue className="webtool.data.StringTestValue" version="4.1">
           </StringTestValue>
           <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
           </ParameterizedTestValue>
          </MultiValue>
          <OAuthSignRequestConfiguration className="webtool.security.oauth.OAuthSignRequestConfiguration" version="1">
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </OAuthSignRequestConfiguration>
          <OAuthGetRequestTokenConfiguration className="webtool.security.oauth.OAuthGetRequestTokenConfiguration" version="1">
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </OAuthGetRequestTokenConfiguration>
          <OAuthGetAccessTokenConfiguration className="webtool.security.oauth.OAuthGetAccessTokenConfiguration" version="1">
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </OAuthGetAccessTokenConfiguration>
          <NameValueProperties className="webtool.data.NameValueProperties" version="1.4">
          </NameValueProperties>
         </OAuthConfiguration>
         <ApplyableResetExistingCookiesConfiguration className="webtool.tool.ApplyableResetExistingCookiesConfiguration" version="1.1.2">
          <ResetExistingCookiesPreferenceProviderImpl className="webtool.tool.ResetExistingCookiesPreferenceProviderImpl" version="1.1">
          </ResetExistingCookiesPreferenceProviderImpl>
          <DefaultResetExistingCookies className="webtool.tool.DefaultResetExistingCookies" version="1.1.1">
          </DefaultResetExistingCookies>
         </ApplyableResetExistingCookiesConfiguration>
         <ClientSideSSLProperties className="webtool.security.ClientSideSSLProperties" version="1.1">
         </ClientSideSSLProperties>
         <NameValueProperties className="webtool.data.NameValueProperties" version="1.4">
          <propertiesSize>1</propertiesSize>
          <NameValuePair className="webtool.data.NameValuePair" version="3.3">
           <name>Accept</name>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
             <value>application/json</value>
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
            <valuesSize>1</valuesSize>
            <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
             <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
              <code>true</code>
              <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
               <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
                <useText>true</useText>
                <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
                </ScriptingTextInput>
               </ScriptingInput>
               <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
               </ScriptEngineIdentifier>
              </ScriptCode>
              <methodId>true</methodId>
              <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
              </ScriptMethodIdentifier>
             </UserMethod>
            </ScriptedValue>
           </MultiValue>
          </NameValuePair>
         </NameValueProperties>
         <Authentication className="webtool.security.Authentication" version="2.4">
          <NameValuePair className="webtool.data.NameValuePair" version="3.3">
           <name>Service</name>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </NameValuePair>
          <NameValuePair className="webtool.data.NameValuePair" version="3.3">
           <name>Username</name>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </NameValuePair>
          <NameValuePair className="webtool.data.NameValuePair" version="3.3">
           <name>Password</name>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <PasswordTestValue className="webtool.data.PasswordTestValue" version="1.1">
            </PasswordTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </NameValuePair>
         </Authentication>
        </CommonHTTPProperties>
        <protocol>1</protocol>
        <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
        </ApplyableBooleanConfiguration>
        <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
        </ApplyableBooleanConfiguration>
        <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
         <bool>true</bool>
        </ApplyableBooleanConfiguration>
       </HTTPClientHTTPProperties>
       <NoneTransportProperties className="webtool.messaging.NoneTransportProperties" version="1">
       </NoneTransportProperties>
      </ProtocolPropertiesManager>
      <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
       <inverted>true</inverted>
      </ApplyableBooleanConfiguration>
     </TransportProperties>
     <MessagingOutputProvider className="webtool.messaging.MessagingOutputProvider" version="1.2">
      <HTTPNamedToolOutputProvider className="webtool.tool.HTTPNamedToolOutputProvider" version="1.1.2.1">
       <menuName>Transport Header</menuName>
       <name>Request Transport Header</name>
      </HTTPNamedToolOutputProvider>
      <HTTPNamedToolOutputProvider className="webtool.tool.HTTPNamedToolOutputProvider" version="1.1.2.1">
       <menuName>Transport Header</menuName>
       <name>Response Transport Header</name>
      </HTTPNamedToolOutputProvider>
      <NamedXMLToolOutputProvider className="webtool.xml.NamedXMLToolOutputProvider" version="1.2.1">
       <menuName>Traffic</menuName>
       <name>Request Traffic</name>
      </NamedXMLToolOutputProvider>
      <HTTPOutputProvider className="webtool.messaging.HTTPOutputProvider" version="1">
       <m_name>Traffic Stream</m_name>
      </HTTPOutputProvider>
      <ObjectOutputProvider className="webtool.messaging.ObjectOutputProvider" version="1.3.1">
       <outputToolsSize>1</outputToolsSize>
       <TrafficViewer className="webtool.traffic.TrafficViewer" version="v.2.3.14">
        <iconName>TrafficViewer</iconName>
        <name>Traffic Viewer</name>
        <showRequestHeaders>true</showRequestHeaders>
        <showResponseHeaders>true</showResponseHeaders>
       </TrafficViewer>
       <name>Traffic Object</name>
      </ObjectOutputProvider>
     </MessagingOutputProvider>
     <outputToolsSize>1</outputToolsSize>
     <GenericDataBank className="webtool.databank.GenericDataBank" version="v.2.1.14">
      <iconName>XMLDataBank</iconName>
      <name>JSON Data Bank</name>
      <XMLtoDataSource className="webtool.xml.XMLtoDataSource" version="v.2.8.14.14">
       <iconName>XMLDataBank</iconName>
       <name>XML Data Bank</name>
       <selectedXPathsSize>1</selectedXPathsSize>
       <SelectedXPath className="webtool.xml.SelectedXPath" version="1.3">
        <elementOption>1</elementOption>
        <contentOption>1</contentOption>
        <XMLDataBank_ExtractXPath>/root/account[1]/id[1]/text()</XMLDataBank_ExtractXPath>
        <mode>1</mode>
       </SelectedXPath>
       <canonicalizeOutput>true</canonicalizeOutput>
       <xmlMessage>true</xmlMessage>
       <VirtualDataSourceCreatorImpl className="webtool.data.VirtualDataSourceCreatorImpl" version="1.1">
        <writableColumnsSize>1</writableColumnsSize>
        <WritableColumn className="webtool.data.WritableColumn" version="1.5">
         <customName>accountId</customName>
        </WritableColumn>
       </VirtualDataSourceCreatorImpl>
      </XMLtoDataSource>
      <TextXmlConversionStrategySerializer className="webtool.textxmlconvert.TextXmlConversionStrategySerializer" version="3">
       <dataFormatName>JSON</dataFormatName>
       <conversionStrategyId>JSON</conversionStrategyId>
       <conversionStrategyClassName>com.parasoft.xml.convert.json.JsonConversionStrategy</conversionStrategyClassName>
      </TextXmlConversionStrategySerializer>
      <ConversionOptionSetSerializer className="webtool.textxmlconvert.ConversionOptionSetSerializer" version="2">
      </ConversionOptionSetSerializer>
      <TextXmlModelTypeSerializer className="webtool.textxmlconvert.TextXmlModelTypeSerializer" version="2">
      </TextXmlModelTypeSerializer>
     </GenericDataBank>
     <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
      <code>true</code>
      <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
       <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
        <useText>true</useText>
        <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
        </ScriptingTextInput>
       </ScriptingInput>
       <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
       </ScriptEngineIdentifier>
      </ScriptCode>
      <methodId>true</methodId>
      <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
      </ScriptMethodIdentifier>
     </UserMethod>
     <XMLBuilder className="webtool.xml.builder.XMLBuilder" version="6.6">
     </XMLBuilder>
     <InputUsable className="webtool.tool.InputUsable" version="5">
      <use>1</use>
      <TextUsable className="webtool.packet.TextUsable" version="4">
       <MessagingClient_LiteralMessage></MessagingClient_LiteralMessage>
       <type>application/json</type>
      </TextUsable>
      <InputUsableDataSource className="webtool.tool.InputUsableDataSource" version="1">
      </InputUsableDataSource>
     </InputUsable>
     <mode>Literal</mode>
     <QueryParametersLiteral className="webtool.soap.http.QueryParametersLiteral" version="1.1">
      <isPropertiesRef>true</isPropertiesRef>
     </QueryParametersLiteral>
     <QueryParametersWadl className="webtool.soap.http.QueryParametersWadl" version="1.1">
      <parameters size="3">
       <ElementValue className="webtool.soap.ElementValue" index="0" version="1.11.12">
        <writeType>true</writeType>
        <ElementType className="webtool.soap.ElementType" version="2.12.3">
         <hash>1</hash>
         <defaultValue>0</defaultValue>
         <localName>customerId</localName>
         <IntegerType className="webtool.soap.IntegerType" version="2.2.3">
          <hash>2</hash>
         </IntegerType>
        </ElementType>
        <size>1</size>
        <IntegerValue className="webtool.soap.IntegerValue" version="1.3.1.12">
         <value>${customerId}</value>
        </IntegerValue>
       </ElementValue>
       <ElementValue className="webtool.soap.ElementValue" index="1" version="1.11.12">
        <writeType>true</writeType>
        <ElementType className="webtool.soap.ElementType" version="2.12.3">
         <hash>1</hash>
         <defaultValue>0</defaultValue>
         <localName>newAccountType</localName>
         <IntegerType className="webtool.soap.IntegerType" version="2.2.3">
          <hash>2</hash>
         </IntegerType>
        </ElementType>
        <size>1</size>
        <IntegerValue className="webtool.soap.IntegerValue" version="1.3.1.12">
         <userMethod>true</userMethod>
         <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
          <code>true</code>
          <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
           <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
            <useText>true</useText>
            <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
             <text>import com.parasoft.api.*&#xD;
&#xD;
String mapAccountType(ScriptingContext context) {&#xD;
    String acctType = context.getValue(&quot;accountType&quot;)&#xD;
    if (acctType.equalsIgnoreCase(&quot;checking&quot;)) {&#xD;
        return &quot;0&quot;&#xD;
    } else if (acctType.equalsIgnoreCase(&quot;savings&quot;)) {&#xD;
        return &quot;1&quot;&#xD;
    }&#xD;
    return &quot;2&quot;&#xD;
}&#xD;
</text>
            </ScriptingTextInput>
           </ScriptingInput>
           <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
           </ScriptEngineIdentifier>
          </ScriptCode>
          <methodId>true</methodId>
          <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
           <functionName>mapAccountType</functionName>
           <arguments size="1">
            <argument index="0">com.parasoft.api.ScriptingContext</argument>
           </arguments>
          </ScriptMethodIdentifier>
         </UserMethod>
         <mode>2</mode>
         <value>2</value>
        </IntegerValue>
       </ElementValue>
       <ElementValue className="webtool.soap.ElementValue" index="2" version="1.11.12">
        <writeType>true</writeType>
        <ElementType className="webtool.soap.ElementType" version="2.12.3">
         <hash>1</hash>
         <defaultValue>0</defaultValue>
         <localName>fromAccountId</localName>
         <IntegerType className="webtool.soap.IntegerType" version="2.2.3">
          <hash>2</hash>
         </IntegerType>
        </ElementType>
        <size>1</size>
        <IntegerValue className="webtool.soap.IntegerValue" version="1.3.1.12">
         <value>${fromAccountId}</value>
        </IntegerValue>
       </ElementValue>
      </parameters>
     </QueryParametersWadl>
     <UrlPathParametersLiteral className="webtool.soap.http.UrlPathParametersLiteral" version="1.1">
      <pathElementss size="1">
       <MultiValue className="webtool.data.MultiValue" index="0" version="1.4">
        <StringTestValue className="webtool.data.StringTestValue" version="4.1">
         <value>createAccount</value>
        </StringTestValue>
        <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
        </ParameterizedTestValue>
        <valuesSize>1</valuesSize>
        <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
         <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
          <code>true</code>
          <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
           <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
            <useText>true</useText>
            <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
            </ScriptingTextInput>
           </ScriptingInput>
           <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
           </ScriptEngineIdentifier>
          </ScriptCode>
          <methodId>true</methodId>
          <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
          </ScriptMethodIdentifier>
         </UserMethod>
        </ScriptedValue>
       </MultiValue>
      </pathElementss>
     </UrlPathParametersLiteral>
     <UrlPathParametersWadl className="webtool.soap.http.UrlPathParametersWadl" version="1.1">
     </UrlPathParametersWadl>
     <RESTResourceMethod className="webtool.soap.http.RESTResourceMethod" version="2.2">
      <resourceId>/createAccount</resourceId>
      <httpMethod>POST</httpMethod>
     </RESTResourceMethod>
     <resourceMode>3</resourceMode>
     <MultiValue className="webtool.data.MultiValue" version="1.4">
      <StringTestValue className="webtool.data.StringTestValue" version="4.1">
       <value>${BASEURL}</value>
      </StringTestValue>
      <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
      </ParameterizedTestValue>
      <valuesSize>2</valuesSize>
      <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
       <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
        <code>true</code>
        <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
         <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
          <useText>true</useText>
          <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
          </ScriptingTextInput>
         </ScriptingInput>
         <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
         </ScriptEngineIdentifier>
        </ScriptCode>
        <methodId>true</methodId>
        <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
        </ScriptMethodIdentifier>
       </UserMethod>
      </ScriptedValue>
      <WadlTestValue className="webtool.messaging.wadl.WadlTestValue" version="1.1">
       <value>http://snapper:8090/parabank/services/bank</value>
      </WadlTestValue>
     </MultiValue>
    </RESTClient>
   </RESTClientToolTest>
   <RESTClientToolTest className="webtool.soap.http.RESTClientToolTest" version="2.1.4.15.2">
    <DebugAssets className="webtool.test.debug.DebugAssets" version="1">
    </DebugAssets>
    <ReportingSettings className="webtool.test.ReportingSettings" version="1.1">
     <TestGRSSettings className="webtool.test.grs.TestGRSSettings" version="1.4.3">
     </TestGRSSettings>
    </ReportingSettings>
    <testLogic>true</testLogic>
    <TestLogic className="webtool.test.logic.TestLogic" version="1.7">
     <TestExecutionDelay className="webtool.test.logic.TestExecutionDelay" version="1.2">
     </TestExecutionDelay>
     <TestExecutionDelay className="webtool.test.logic.TestExecutionDelay" version="1.2">
     </TestExecutionDelay>
     <TestDependencyLogic className="webtool.test.logic.TestDependencyLogic" version="1.2">
     </TestDependencyLogic>
    </TestLogic>
    <testID>59</testID>
    <enabled>true</enabled>
    <name>/accounts/{accountId} - GET</name>
    <performanceGroup>0</performanceGroup>
    <RESTClient className="webtool.soap.http.RESTClient" version="v.2.15.28.14">
     <iconName>RESTClient</iconName>
     <name>GetAccountInfo</name>
     <MessagingSchemaElement className="webtool.soap.http.MessagingSchemaElement" version="2">
      <ElementValue className="webtool.soap.ElementValue" version="1.11.12">
       <writeType>true</writeType>
       <hasReference>true</hasReference>
       <qnameAsString>:root</qnameAsString>
       <size>1</size>
       <ComplexValue className="webtool.soap.ComplexValue" version="1.10.12">
        <attributesSize>1</attributesSize>
        <AttributeValue className="webtool.soap.AttributeValue" version="1.3.12">
         <StringValue className="webtool.soap.StringValue" version="1.7.1.12">
          <value>object</value>
         </StringValue>
         <useValue>true</useValue>
        </AttributeValue>
        <compositorValue>true</compositorValue>
        <CompositorValue className="webtool.soap.CompositorValue" version="1.3.12">
         <CompositorValueSetCollectionSet className="webtool.soap.CompositorValueSetCollectionSet" version="1.1">
          <setSize>1</setSize>
          <CompositorValueSet className="webtool.soap.CompositorValueSet" version="1.1">
          </CompositorValueSet>
         </CompositorValueSetCollectionSet>
        </CompositorValue>
       </ComplexValue>
      </ElementValue>
      <elementTypeName>root</elementTypeName>
     </MessagingSchemaElement>
     <hasServiceInfo>true</hasServiceInfo>
     <ServiceInfo className="webtool.tool.ServiceInfo" version="1.2">
      <StandardServiceDescriptor className="com.parasoft.service.catalog.impl.StandardServiceDescriptor" version="1.1">
       <location>http://localhost:8090/parabank/services/bank/swagger.yaml</location>
      </StandardServiceDescriptor>
     </ServiceInfo>
     <JSONBuilder className="webtool.ecmascript.json.JSONBuilder" version="2">
      <hasValue>true</hasValue>
      <JSONObjectValue className="webtool.ecmascript.json.JSONObjectValue" version="1.1.1">
       <nameIsNull>true</nameIsNull>
       <JSONValueCollection className="webtool.ecmascript.json.JSONValueCollection" version="2">
       </JSONValueCollection>
      </JSONObjectValue>
     </JSONBuilder>
     <LocationObject className="webtool.wsdl.LocationObject" version="2">
      <MessagingClient_SchemaLocation>${SWAGGER}</MessagingClient_SchemaLocation>
     </LocationObject>
     <MessagingSchemaElement className="webtool.soap.http.MessagingSchemaElement" version="2">
      <ElementValue className="webtool.soap.ElementValue" version="1.11.12">
       <writeType>true</writeType>
       <hasReference>true</hasReference>
       <qnameAsString>:</qnameAsString>
       <size>1</size>
       <ComplexValue className="webtool.soap.ComplexValue" version="1.10.12">
        <compositorValue>true</compositorValue>
        <CompositorValue className="webtool.soap.CompositorValue" version="1.3.12">
         <CompositorValueSetCollectionSet className="webtool.soap.CompositorValueSetCollectionSet" version="1.1">
          <setSize>1</setSize>
          <CompositorValueSet className="webtool.soap.CompositorValueSet" version="1.1">
          </CompositorValueSet>
         </CompositorValueSetCollectionSet>
        </CompositorValue>
       </ComplexValue>
      </ElementValue>
     </MessagingSchemaElement>
     <DefaultCustomTimeout className="webtool.tool.DefaultCustomTimeout" version="1.2.1">
     </DefaultCustomTimeout>
     <NameValueProperties className="webtool.data.NameValueProperties" version="1.4">
     </NameValueProperties>
     <MapMessageProperties className="webtool.soap.jms.MapMessageProperties" version="1.1">
     </MapMessageProperties>
     <JMSMessageOutputProvider className="webtool.soap.jms.JMSMessageOutputProvider" version="3.1.1">
      <JMSOutputProvider className="webtool.soap.jms.JMSOutputProvider" version="1.1">
       <name>Request Object</name>
       <menuName>Object</menuName>
      </JMSOutputProvider>
      <JMSOutputProvider className="webtool.soap.jms.JMSOutputProvider" version="1.1">
       <name>Response Message Object</name>
       <menuName>Message Object</menuName>
      </JMSOutputProvider>
     </JMSMessageOutputProvider>
     <ValidResponseRange className="webtool.messaging.ValidResponseRange" version="1.3">
      <MultiValue className="webtool.data.MultiValue" version="1.4">
       <StringTestValue className="webtool.data.StringTestValue" version="4.1">
        <validResponseRange>200</validResponseRange>
       </StringTestValue>
       <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
       </ParameterizedTestValue>
       <valuesSize>1</valuesSize>
       <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
        <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
         <code>true</code>
         <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
          <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
           <useText>true</useText>
           <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
           </ScriptingTextInput>
          </ScriptingInput>
          <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
          </ScriptEngineIdentifier>
         </ScriptCode>
         <methodId>true</methodId>
         <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
         </ScriptMethodIdentifier>
        </UserMethod>
       </ScriptedValue>
      </MultiValue>
     </ValidResponseRange>
     <NameValueProperties className="webtool.data.NameValueProperties" version="1.4">
     </NameValueProperties>
     <MultiValue className="webtool.data.MultiValue" version="1.4">
      <StringTestValue className="webtool.data.StringTestValue" version="4.1">
       <HTTPClient_Endpoint>${BASEURL}/accounts/{accountId}</HTTPClient_Endpoint>
      </StringTestValue>
      <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
      </ParameterizedTestValue>
      <valuesSize>1</valuesSize>
      <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
       <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
        <code>true</code>
        <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
         <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
          <useText>true</useText>
          <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
          </ScriptingTextInput>
         </ScriptingInput>
         <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
         </ScriptEngineIdentifier>
        </ScriptCode>
        <methodId>true</methodId>
        <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
        </ScriptMethodIdentifier>
       </UserMethod>
      </ScriptedValue>
     </MultiValue>
     <NameValueProperties className="webtool.data.NameValueProperties" version="1.4">
     </NameValueProperties>
     <TransportProperties className="webtool.messaging.TransportProperties" version="11">
      <ProtocolPropertiesManager className="webtool.messaging.ProtocolPropertiesManager" version="1">
       <size>3</size>
       <HTTPClientHTTPProperties className="webtool.soap.http.HTTPClientHTTPProperties" version="3.16">
        <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
         <bool>true</bool>
        </ApplyableBooleanConfiguration>
        <HTTPCompressionConfiguration className="webtool.messaging.HTTPCompressionConfiguration" version="1.1">
        </HTTPCompressionConfiguration>
        <CommonHTTPProperties className="webtool.messaging.CommonHTTPProperties" version="4">
         <MultiValue className="webtool.data.MultiValue" version="1.4">
          <HTTPMethodTestValue className="webtool.messaging.HTTPMethodTestValue" version="1.1">
           <method>GET</method>
          </HTTPMethodTestValue>
          <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
          </ParameterizedTestValue>
          <valuesSize>1</valuesSize>
          <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
           <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
            <code>true</code>
            <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
             <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
              <useText>true</useText>
              <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
              </ScriptingTextInput>
             </ScriptingInput>
             <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
             </ScriptEngineIdentifier>
            </ScriptCode>
            <methodId>true</methodId>
            <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
            </ScriptMethodIdentifier>
           </UserMethod>
          </ScriptedValue>
         </MultiValue>
         <OAuthConfiguration className="webtool.security.oauth.OAuthConfiguration" version="1">
          <MultiValue className="webtool.data.MultiValue" version="1.4">
           <StringTestValue className="webtool.data.StringTestValue" version="4.1">
           </StringTestValue>
           <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
           </ParameterizedTestValue>
          </MultiValue>
          <MultiValue className="webtool.data.MultiValue" version="1.4">
           <StringTestValue className="webtool.data.StringTestValue" version="4.1">
           </StringTestValue>
           <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
           </ParameterizedTestValue>
          </MultiValue>
          <OAuthSignRequestConfiguration className="webtool.security.oauth.OAuthSignRequestConfiguration" version="1">
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </OAuthSignRequestConfiguration>
          <OAuthGetRequestTokenConfiguration className="webtool.security.oauth.OAuthGetRequestTokenConfiguration" version="1">
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </OAuthGetRequestTokenConfiguration>
          <OAuthGetAccessTokenConfiguration className="webtool.security.oauth.OAuthGetAccessTokenConfiguration" version="1">
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </OAuthGetAccessTokenConfiguration>
          <NameValueProperties className="webtool.data.NameValueProperties" version="1.4">
          </NameValueProperties>
         </OAuthConfiguration>
         <ApplyableResetExistingCookiesConfiguration className="webtool.tool.ApplyableResetExistingCookiesConfiguration" version="1.1.2">
          <ResetExistingCookiesPreferenceProviderImpl className="webtool.tool.ResetExistingCookiesPreferenceProviderImpl" version="1.1">
          </ResetExistingCookiesPreferenceProviderImpl>
          <DefaultResetExistingCookies className="webtool.tool.DefaultResetExistingCookies" version="1.1.1">
          </DefaultResetExistingCookies>
         </ApplyableResetExistingCookiesConfiguration>
         <ClientSideSSLProperties className="webtool.security.ClientSideSSLProperties" version="1.1">
         </ClientSideSSLProperties>
         <NameValueProperties className="webtool.data.NameValueProperties" version="1.4">
          <propertiesSize>1</propertiesSize>
          <NameValuePair className="webtool.data.NameValuePair" version="3.3">
           <name>Accept</name>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
             <value>application/json</value>
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
            <valuesSize>1</valuesSize>
            <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
             <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
              <code>true</code>
              <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
               <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
                <useText>true</useText>
                <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
                </ScriptingTextInput>
               </ScriptingInput>
               <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
               </ScriptEngineIdentifier>
              </ScriptCode>
              <methodId>true</methodId>
              <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
              </ScriptMethodIdentifier>
             </UserMethod>
            </ScriptedValue>
           </MultiValue>
          </NameValuePair>
         </NameValueProperties>
         <Authentication className="webtool.security.Authentication" version="2.4">
          <NameValuePair className="webtool.data.NameValuePair" version="3.3">
           <name>Service</name>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </NameValuePair>
          <NameValuePair className="webtool.data.NameValuePair" version="3.3">
           <name>Username</name>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </NameValuePair>
          <NameValuePair className="webtool.data.NameValuePair" version="3.3">
           <name>Password</name>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <PasswordTestValue className="webtool.data.PasswordTestValue" version="1.1">
            </PasswordTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </NameValuePair>
         </Authentication>
        </CommonHTTPProperties>
        <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
        </ApplyableBooleanConfiguration>
        <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
        </ApplyableBooleanConfiguration>
        <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
         <bool>true</bool>
        </ApplyableBooleanConfiguration>
       </HTTPClientHTTPProperties>
       <HTTPClientHTTPProperties className="webtool.soap.http.HTTPClientHTTPProperties" version="3.16">
        <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
         <bool>true</bool>
        </ApplyableBooleanConfiguration>
        <HTTPCompressionConfiguration className="webtool.messaging.HTTPCompressionConfiguration" version="1.1">
        </HTTPCompressionConfiguration>
        <CommonHTTPProperties className="webtool.messaging.CommonHTTPProperties" version="4">
         <MultiValue className="webtool.data.MultiValue" version="1.4">
          <HTTPMethodTestValue className="webtool.messaging.HTTPMethodTestValue" version="1.1">
           <method>GET</method>
          </HTTPMethodTestValue>
          <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
          </ParameterizedTestValue>
          <valuesSize>1</valuesSize>
          <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
           <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
            <code>true</code>
            <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
             <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
              <useText>true</useText>
              <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
              </ScriptingTextInput>
             </ScriptingInput>
             <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
             </ScriptEngineIdentifier>
            </ScriptCode>
            <methodId>true</methodId>
            <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
            </ScriptMethodIdentifier>
           </UserMethod>
          </ScriptedValue>
         </MultiValue>
         <OAuthConfiguration className="webtool.security.oauth.OAuthConfiguration" version="1">
          <MultiValue className="webtool.data.MultiValue" version="1.4">
           <StringTestValue className="webtool.data.StringTestValue" version="4.1">
           </StringTestValue>
           <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
           </ParameterizedTestValue>
          </MultiValue>
          <MultiValue className="webtool.data.MultiValue" version="1.4">
           <StringTestValue className="webtool.data.StringTestValue" version="4.1">
           </StringTestValue>
           <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
           </ParameterizedTestValue>
          </MultiValue>
          <OAuthSignRequestConfiguration className="webtool.security.oauth.OAuthSignRequestConfiguration" version="1">
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </OAuthSignRequestConfiguration>
          <OAuthGetRequestTokenConfiguration className="webtool.security.oauth.OAuthGetRequestTokenConfiguration" version="1">
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </OAuthGetRequestTokenConfiguration>
          <OAuthGetAccessTokenConfiguration className="webtool.security.oauth.OAuthGetAccessTokenConfiguration" version="1">
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </OAuthGetAccessTokenConfiguration>
          <NameValueProperties className="webtool.data.NameValueProperties" version="1.4">
          </NameValueProperties>
         </OAuthConfiguration>
         <ApplyableResetExistingCookiesConfiguration className="webtool.tool.ApplyableResetExistingCookiesConfiguration" version="1.1.2">
          <ResetExistingCookiesPreferenceProviderImpl className="webtool.tool.ResetExistingCookiesPreferenceProviderImpl" version="1.1">
          </ResetExistingCookiesPreferenceProviderImpl>
          <DefaultResetExistingCookies className="webtool.tool.DefaultResetExistingCookies" version="1.1.1">
          </DefaultResetExistingCookies>
         </ApplyableResetExistingCookiesConfiguration>
         <ClientSideSSLProperties className="webtool.security.ClientSideSSLProperties" version="1.1">
         </ClientSideSSLProperties>
         <NameValueProperties className="webtool.data.NameValueProperties" version="1.4">
          <propertiesSize>1</propertiesSize>
          <NameValuePair className="webtool.data.NameValuePair" version="3.3">
           <name>Accept</name>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
             <value>application/json</value>
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
            <valuesSize>1</valuesSize>
            <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
             <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
              <code>true</code>
              <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
               <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
                <useText>true</useText>
                <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
                </ScriptingTextInput>
               </ScriptingInput>
               <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
               </ScriptEngineIdentifier>
              </ScriptCode>
              <methodId>true</methodId>
              <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
              </ScriptMethodIdentifier>
             </UserMethod>
            </ScriptedValue>
           </MultiValue>
          </NameValuePair>
         </NameValueProperties>
         <Authentication className="webtool.security.Authentication" version="2.4">
          <NameValuePair className="webtool.data.NameValuePair" version="3.3">
           <name>Service</name>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </NameValuePair>
          <NameValuePair className="webtool.data.NameValuePair" version="3.3">
           <name>Username</name>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <StringTestValue className="webtool.data.StringTestValue" version="4.1">
            </StringTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </NameValuePair>
          <NameValuePair className="webtool.data.NameValuePair" version="3.3">
           <name>Password</name>
           <MultiValue className="webtool.data.MultiValue" version="1.4">
            <PasswordTestValue className="webtool.data.PasswordTestValue" version="1.1">
            </PasswordTestValue>
            <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
            </ParameterizedTestValue>
           </MultiValue>
          </NameValuePair>
         </Authentication>
        </CommonHTTPProperties>
        <protocol>1</protocol>
        <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
        </ApplyableBooleanConfiguration>
        <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
        </ApplyableBooleanConfiguration>
        <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
         <bool>true</bool>
        </ApplyableBooleanConfiguration>
       </HTTPClientHTTPProperties>
       <NoneTransportProperties className="webtool.messaging.NoneTransportProperties" version="1">
       </NoneTransportProperties>
      </ProtocolPropertiesManager>
      <ApplyableBooleanConfiguration className="com.parasoft.gui.ApplyableBooleanConfiguration" version="1.2.2">
       <inverted>true</inverted>
      </ApplyableBooleanConfiguration>
     </TransportProperties>
     <MessagingOutputProvider className="webtool.messaging.MessagingOutputProvider" version="1.2">
      <HTTPNamedToolOutputProvider className="webtool.tool.HTTPNamedToolOutputProvider" version="1.1.2.1">
       <menuName>Transport Header</menuName>
       <name>Request Transport Header</name>
      </HTTPNamedToolOutputProvider>
      <HTTPNamedToolOutputProvider className="webtool.tool.HTTPNamedToolOutputProvider" version="1.1.2.1">
       <menuName>Transport Header</menuName>
       <name>Response Transport Header</name>
      </HTTPNamedToolOutputProvider>
      <NamedXMLToolOutputProvider className="webtool.xml.NamedXMLToolOutputProvider" version="1.2.1">
       <menuName>Traffic</menuName>
       <name>Request Traffic</name>
      </NamedXMLToolOutputProvider>
      <HTTPOutputProvider className="webtool.messaging.HTTPOutputProvider" version="1">
       <m_name>Traffic Stream</m_name>
      </HTTPOutputProvider>
      <ObjectOutputProvider className="webtool.messaging.ObjectOutputProvider" version="1.3.1">
       <outputToolsSize>1</outputToolsSize>
       <TrafficViewer className="webtool.traffic.TrafficViewer" version="v.2.3.14">
        <iconName>TrafficViewer</iconName>
        <name>Traffic Viewer</name>
        <showRequestHeaders>true</showRequestHeaders>
        <showResponseHeaders>true</showResponseHeaders>
       </TrafficViewer>
       <name>Traffic Object</name>
      </ObjectOutputProvider>
     </MessagingOutputProvider>
     <outputToolsSize>1</outputToolsSize>
     <GenericAssertionTool className="webtool.assertor.GenericAssertionTool" version="v.2.1.14">
      <iconName>XMLAssertor</iconName>
      <name>JSON Assertor</name>
      <XMLAssertionTool className="webtool.xml.assertion.XMLAssertionTool" version="v.2.2.1.14">
       <iconName>XMLAssertor</iconName>
       <name>XML Assertor</name>
       <assertionsSize>1</assertionsSize>
       <StringComparisonAssertion className="webtool.assertion.xml.StringComparisonAssertion" version="3.6.2">
        <timestamp>1502911491872</timestamp>
        <name>String Comparison Assertion</name>
        <Assertion_XPath>/root/account/type/text()</Assertion_XPath>
        <ignoreCase>true</ignoreCase>
        <NameValuePair className="webtool.data.NameValuePair" version="3.3">
         <name>String Comparison Assertion</name>
         <MultiValue className="webtool.data.MultiValue" version="1.4">
          <StringTestValue className="webtool.data.StringTestValue" version="4.1">
           <value>${expectedAccountType}</value>
          </StringTestValue>
          <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
          </ParameterizedTestValue>
         </MultiValue>
        </NameValuePair>
       </StringComparisonAssertion>
       <ExpectedXMLMessage className="webtool.xml.ExpectedXMLMessage" version="1.2.1">
        <message>true</message>
       </ExpectedXMLMessage>
      </XMLAssertionTool>
      <TextXmlConversionStrategySerializer className="webtool.textxmlconvert.TextXmlConversionStrategySerializer" version="3">
       <dataFormatName>JSON</dataFormatName>
       <conversionStrategyId>JSON</conversionStrategyId>
       <conversionStrategyClassName>com.parasoft.xml.convert.json.JsonConversionStrategy</conversionStrategyClassName>
      </TextXmlConversionStrategySerializer>
      <ConversionOptionSetSerializer className="webtool.textxmlconvert.ConversionOptionSetSerializer" version="2">
      </ConversionOptionSetSerializer>
      <TextXmlModelTypeSerializer className="webtool.textxmlconvert.TextXmlModelTypeSerializer" version="2">
      </TextXmlModelTypeSerializer>
     </GenericAssertionTool>
     <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
      <code>true</code>
      <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
       <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
        <useText>true</useText>
        <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
        </ScriptingTextInput>
       </ScriptingInput>
       <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
       </ScriptEngineIdentifier>
      </ScriptCode>
      <methodId>true</methodId>
      <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
      </ScriptMethodIdentifier>
     </UserMethod>
     <XMLBuilder className="webtool.xml.builder.XMLBuilder" version="6.6">
     </XMLBuilder>
     <InputUsable className="webtool.tool.InputUsable" version="5">
      <use>1</use>
      <TextUsable className="webtool.packet.TextUsable" version="4">
       <MessagingClient_LiteralMessage></MessagingClient_LiteralMessage>
       <type>application/json</type>
      </TextUsable>
      <InputUsableDataSource className="webtool.tool.InputUsableDataSource" version="1">
      </InputUsableDataSource>
     </InputUsable>
     <mode>Literal</mode>
     <QueryParametersLiteral className="webtool.soap.http.QueryParametersLiteral" version="1.1">
      <isPropertiesRef>true</isPropertiesRef>
     </QueryParametersLiteral>
     <QueryParametersWadl className="webtool.soap.http.QueryParametersWadl" version="1.1">
     </QueryParametersWadl>
     <UrlPathParametersLiteral className="webtool.soap.http.UrlPathParametersLiteral" version="1.1">
      <pathElementss size="2">
       <MultiValue className="webtool.data.MultiValue" index="0" version="1.4">
        <StringTestValue className="webtool.data.StringTestValue" version="4.1">
         <value>accounts</value>
        </StringTestValue>
        <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
        </ParameterizedTestValue>
        <valuesSize>1</valuesSize>
        <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
         <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
          <code>true</code>
          <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
           <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
            <useText>true</useText>
            <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
            </ScriptingTextInput>
           </ScriptingInput>
           <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
           </ScriptEngineIdentifier>
          </ScriptCode>
          <methodId>true</methodId>
          <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
          </ScriptMethodIdentifier>
         </UserMethod>
        </ScriptedValue>
       </MultiValue>
       <MultiValue className="webtool.data.MultiValue" index="1" version="1.4">
        <StringTestValue className="webtool.data.StringTestValue" version="4.1">
         <value>{accountId}</value>
        </StringTestValue>
        <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
        </ParameterizedTestValue>
        <valuesSize>1</valuesSize>
        <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
         <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
          <code>true</code>
          <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
           <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
            <useText>true</useText>
            <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
            </ScriptingTextInput>
           </ScriptingInput>
           <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
           </ScriptEngineIdentifier>
          </ScriptCode>
          <methodId>true</methodId>
          <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
          </ScriptMethodIdentifier>
         </UserMethod>
        </ScriptedValue>
       </MultiValue>
      </pathElementss>
     </UrlPathParametersLiteral>
     <UrlPathParametersWadl className="webtool.soap.http.UrlPathParametersWadl" version="1.1">
      <pathParameters size="1">
       <ElementValue className="webtool.soap.ElementValue" index="0" version="1.11.12">
        <writeType>true</writeType>
        <ElementType className="webtool.soap.ElementType" version="2.12.3">
         <hash>1</hash>
         <defaultValue>0</defaultValue>
         <localName>accountId</localName>
         <IntegerType className="webtool.soap.IntegerType" version="2.2.3">
          <hash>2</hash>
         </IntegerType>
        </ElementType>
        <size>1</size>
        <IntegerValue className="webtool.soap.IntegerValue" version="1.3.1.12">
         <value>${accountId}</value>
        </IntegerValue>
       </ElementValue>
      </pathParameters>
     </UrlPathParametersWadl>
     <RESTResourceMethod className="webtool.soap.http.RESTResourceMethod" version="2.2">
      <resourceId>/accounts/{accountId}</resourceId>
      <httpMethod>GET</httpMethod>
     </RESTResourceMethod>
     <resourceMode>3</resourceMode>
     <MultiValue className="webtool.data.MultiValue" version="1.4">
      <StringTestValue className="webtool.data.StringTestValue" version="4.1">
       <value>${BASEURL}</value>
      </StringTestValue>
      <ParameterizedTestValue className="webtool.data.ParameterizedTestValue" version="3.1">
      </ParameterizedTestValue>
      <valuesSize>2</valuesSize>
      <ScriptedValue className="webtool.data.ScriptedValue" version="1.1">
       <UserMethod className="com.parasoft.scripting.UserMethod" version="2.2">
        <code>true</code>
        <ScriptCode className="com.parasoft.scripting.jsr223.ScriptCode" version="2.1.1.1">
         <ScriptingInput className="com.parasoft.scripting.ScriptingInput" version="6">
          <useText>true</useText>
          <ScriptingTextInput className="com.parasoft.scripting.ScriptingTextInput" version="1.3">
          </ScriptingTextInput>
         </ScriptingInput>
         <ScriptEngineIdentifier className="com.parasoft.scripting.jsr223.ScriptEngineIdentifier" version="1.1">
         </ScriptEngineIdentifier>
        </ScriptCode>
        <methodId>true</methodId>
        <ScriptMethodIdentifier className="com.parasoft.scripting.jsr223.ScriptMethodIdentifier" version="2.1.1">
        </ScriptMethodIdentifier>
       </UserMethod>
      </ScriptedValue>
      <WadlTestValue className="webtool.messaging.wadl.WadlTestValue" version="1.1">
       <value>http://snapper:8090/parabank/services/bank</value>
      </WadlTestValue>
     </MultiValue>
    </RESTClient>
   </RESTClientToolTest>
  </TestSuite>
 </TestSuite>
</SOAtestProject>

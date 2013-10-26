Axis 2 - wsdl2code
******************

Links
=====

- Sample_
- `Maven2 WSDL2Code Plug-in - Version 1.4`_

Dependencies
============

::

  <dependencies>
    <dependency>
      <groupId>backport-util-concurrent</groupId>
      <artifactId>backport-util-concurrent</artifactId>
      <version>3.0</version>
    </dependency>
    <dependency>
      <artifactId>commons-httpclient</artifactId>
      <groupId>commons-httpclient</groupId>
      <version>3.1</version>
    </dependency>
    <dependency>
      <groupId>org.apache.axis2</groupId>
      <artifactId>axis2</artifactId>
      <version>1.4</version>
    </dependency>
    <dependency>
      <groupId>org.apache.neethi</groupId>
      <artifactId>neethi</artifactId>
      <version>2.0</version>
    </dependency>
    <dependency>
      <groupId>org.apache.woden</groupId>
      <artifactId>woden-api</artifactId>
      <version>1.0M8</version>
    </dependency>
    <dependency>
      <groupId>org.apache.ws.commons.axiom</groupId>
      <artifactId>axiom-api</artifactId>
      <version>1.2.7</version>
    </dependency>
    <dependency>
      <groupId>org.apache.ws.commons.axiom</groupId>
      <artifactId>axiom-impl</artifactId>
      <version>1.2.7</version>
    </dependency>
    <dependency>
      <groupId>org.apache.ws.commons.schema</groupId>
      <artifactId>XmlSchema</artifactId>
      <version>1.4</version>
    </dependency>
    <dependency>
      <groupId>org.apache.xmlbeans</groupId>
      <artifactId>xmlbeans</artifactId>
      <version>2.3.0</version>
    </dependency>
    <dependency>
      <groupId>wsdl4j</groupId>
      <artifactId>wsdl4j</artifactId>
      <version>1.6.1</version>
    </dependency>
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>3.8.1</version>
      <scope>test</scope>
    </dependency>
  </dependencies>

Note: Several of those dependencies are used at runtime and are not required to
generate the stub classes.

Configuration
=============

Update the ``wsdlFile`` and ``packageName`` as required:

::

  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.axis2</groupId>
        <artifactId>axis2-wsdl2code-maven-plugin</artifactId>
        <version>1.4</version>
        <executions>
          <execution>
            <goals>
              <goal>wsdl2code</goal>
            </goals>
            <configuration>
              <!--
              <databindingName>axiom</databindingName>
              -->
              <packageName>com.sample.service</packageName>
              <wsdlFile>http://winamini.promotiondemo.com/smsinbound/smsinbound.asmx?wsdl</wsdlFile>
              <!--
              <databindingName>xmlbeans</databindingName>
              -->
              <allPorts>true</allPorts>
              <generateTestcase>true</generateTestcase>
            </configuration>
          </execution>
        </executions>
      </plugin>
    </plugins>
  </build>

Note: I have commented out ``xmlbeans`` in the above sample... so I probably
don't need all the dependencies.

Usage
=====

http://ws.apache.org/axis2/1_4/quickstartguide.html#clients

Running the ``mvn package`` goal will create various classes in
``target/generated-sources``.  Various stub classes will be generated which can
be used like this:

::

  import com.sample.service.SMSInboundSMSInboundSoapStub;
  import com.sample.service.SMSInboundSMSInboundSoapStub.SMSRedemptionInfo;
  import com.sample.service.SMSInboundSMSInboundSoapStub.SendSMSData;
  import com.sample.service.SMSInboundSMSInboundSoapStub.SendSMSDataResponse;

  SMSInboundSMSInboundSoapStub stub = new SMSInboundSMSInboundSoapStub();
  SendSMSData data = new SendSMSData();
  data.setSMSNumber("07840 538 357");
  data.setSMSMessage("zkHb5/2cFGRSVw2iKia6/XD0YJbxGl3awyqz4LNgSxE=");
  SendSMSDataResponse response = stub.SendSMSData(data);
  SMSRedemptionInfo result = response.getSendSMSDataResult();
  System.out.println("The result code is [" + result.getResultCode()
          + "] SMS Message [" + result.getSmsMessage() + "]");

Issues
======

The element type "meta" must be terminated by the matching end-tag
------------------------------------------------------------------

::

  [INFO] [axis2-wsdl2code:wsdl2code {execution: default}]
  Retrieving document at 'https://www.winaminieveryday.co.uk/SMSInbound/SMSInbound.asmx?wsdl'.
  [Fatal Error] SMSInbound.asmx?wsdl:9:467: The element type "meta" must be terminated by the matching end-tag "</meta>".
  org.xml.sax.SAXParseException: The element type "meta" must be terminated by the matching end-tag "</meta>".

The web service had auto-discovery/documentation switched off.  It was not
possible to see the WSDL file:

`How to hide WSDL?`_ from blog entry by `Kishore Gorjala`_

To solve the problem, we got an older copy of the WSDL, and updated the URL of
the service.  Another solution might be to get the WSDL file emailed.

We changed the plugin configuration to point to a local copy of the WSDL as
follows:

::

  <wsdlFile>C:/wip/855/winamini-promotiondemo-com.wsdl</wsdlFile>

This is an interesting comment from a mailing list:

*Sounds like you're passing an HTML stream into SAXBuilder, not an XML stream.
It's seeing an HTML *META* tag and choking (since this tag doesn't have an end
tag */META* in HTML).  You'll have to figure out why the input stream doesn't
contain what you're expecting it to contain*.

So basically... I am being redirected to an html page which is not the normal
WSDL XML file.


.. _Sample: http://toybox/hg/sample/file/tip/java/sample-axis-web-service-client/
.. _`Maven2 WSDL2Code Plug-in - Version 1.4`: http://ws.apache.org/axis2/tools/1_4/maven-plugins/maven-wsdl2code-plugin.html
.. _`How to hide WSDL?`: ../../misc/howto/csharp/how-to-hide-wsdl.html
.. _`Kishore Gorjala`: http://csharpaspnet.blogspot.com/2007/12/how-to-hide-wsdl.html


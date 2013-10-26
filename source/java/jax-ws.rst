JAX-WS
******

Links
=====

- **Probably best to start here**: JAX-WS Maven Plugin,
  :doc:`../maven/mvn-plugin-jax-ws`.
- `JAX-WS Reference Implementation Project`_
- `JAX-WS and SAAJ hits the java.net maven repository`_
- `JAX-WS Maven Plugin`_
- `Project Tango develops and evolves the codebase for Web Services Interoperability Technologies (WSIT)`_
- `Web Services Interoperability Technology (WSIT) Module`_

Download
========

Downloaded ``JAXWS2.1EA3_20061115.jar`` from
https://jax-ws.dev.java.net/ri-download.html.

Install
=======

Running:

::

  java -jar c:\downloads\java.net\JAXWS2.1EA3_20061115.jar

installs ``jax-ws`` to the ``jaxws-ri`` sub-folder.

WS Import
=========

The ``wsimport`` tool is installed into:

::

  bin\wsimport.bat

Maven 2
=======

Dependencies:
-------------

::

  <dependency>
    <groupId>com.sun.xml.messaging.saaj</groupId>
    <artifactId>saaj-impl</artifactId>
    <version>1.3</version>
  </dependency>
  <dependency>
    <groupId>com.sun.xml.bind</groupId>
    <artifactId>jaxb-impl</artifactId>
    <version>2.1.2</version>
  </dependency>
  <dependency>
    <groupId>com.sun.xml.bind</groupId>
    <artifactId>jaxb-xjc</artifactId>
    <version>2.1.2</version>
  </dependency>
  <dependency>
    <groupId>com.sun.xml.stream.buffer</groupId>
    <artifactId>streambuffer</artifactId>
    <version>0.2</version>
  </dependency>
  <dependency>
    <groupId>com.sun.xml.ws</groupId>
    <artifactId>jaxws-rt</artifactId>
    <version>2.1EA2</version>
  </dependency>
  <dependency>
    <groupId>javax.xml.ws</groupId>
    <artifactId>jaxws-api</artifactId>
    <version>2.1</version>
  </dependency>
  <dependency>
    <groupId>stax</groupId>
    <artifactId>stax</artifactId>
    <version>1.2.0</version>
  </dependency>

Repository:
-----------

::

  <repositories>
    <repository>
      <id>dev.java.net</id>
      <name>dev.java.net-repo</name>
      <url>https://maven-repository.dev.java.net/repository/</url>
      <layout>legacy</layout>
    </repository>
  </repositories>

Code Sample
===========

AddNumbersClient.java_

::

  import javax.xml.ws.WebServiceRef;

  import service.myapp.com.mycompany.MyAppService;
  import service.myapp.com.mycompany.MyAppServiceException;
  import service.myapp.com.mycompany.MyAppServicePortType;

  MyAppServicePortType port = new MyAppService().getMyAppServiceHttpPort();
  String response = port.getClassificationSchemes();


.. _`JAX-WS Reference Implementation Project`: https://jax-ws.dev.java.net/
.. _`JAX-WS and SAAJ hits the java.net maven repository`: http://weblogs.java.net/blog/kohsuke/archive/2006/04/jaxws_and_saaj.html
.. _`JAX-WS Maven Plugin`: http://mojo.codehaus.org/jaxws-maven-plugin/
.. _`Project Tango develops and evolves the codebase for Web Services Interoperability Technologies (WSIT)`: https://wsit.dev.java.net/
.. _`Web Services Interoperability Technology (WSIT) Module`: http://websvc.netbeans.org/wsit/
.. _AddNumbersClient.java: https://jax-ws.dev.java.net/jax-ws-ea3/samples/fromwsdl/src/fromwsdl/client/AddNumbersClient.java


JAX-WS
******

Links
=====

- https://jax-ws-commons.dev.java.net/jaxws-maven-plugin/
  JAX-WS Maven Plugin
- `Using JAX-WS with Maven, Enterprise Java Technologies Tech Tips`_

Project
=======

Dependencies
------------

::

  <dependencies>
    <dependency>
      <groupId>com.sun.xml.ws</groupId>
      <artifactId>jaxws-rt</artifactId>
      <version>2.1.3</version>
      <scope>compile</scope>
    </dependency>
  </dependencies>

Repositories
------------

::

  <repositories>
    <repository>
      <id>maven-repository.dev.java.net</id>
      <name>Java.net Repository for Maven 1</name>
      <url>http://download.java.net/maven/1/</url>
      <layout>legacy</layout>
    </repository>
    <repository>
      <id>maven2-repository.dev.java.net</id>
      <name>Java.net Repository for Maven 2</name>
      <url>http://download.java.net/maven/2/</url>
    </repository>
  </repositories>
  <pluginRepositories>
    <pluginRepository>
      <id>maven2-repository.dev.java.net</id>
      <url>http://download.java.net/maven/2/</url>
    </pluginRepository>
  </pluginRepositories>

Configuration
-------------

Add the following to the ``pom.xml`` updating the ``packageName`` and
``wsdlUrl`` as required:

::

  <build>
    <plugins>
      <plugin>
        <groupId>org.codehaus.mojo</groupId>
        <artifactId>jaxws-maven-plugin</artifactId>
        <executions>
          <execution>
            <goals>
              <goal>wsimport</goal>
            </goals>
            <configuration>
              <wsdlUrls>
                <wsdlUrl>
               http://winamini.promotiondemo.com/smsinbound/smsinbound.asmx?wsdl
                </wsdlUrl>
              </wsdlUrls>
              <packageName>com.sample.jaxws.client
              </packageName>
            </configuration>
          </execution>
        </executions>
      </plugin>
    </plugins>
  </build>

Usage
=====

Just run the ``package`` goal to build the stub classes...  or you can run
``jaxws:wsimport``:

::

  mvn jaxws:wsimport

**Note**: I didn't continue with these notes because I ended up using the
Axis 2 - wsdl2code plugin, :doc:`mvn-plugin-axis2-wsdl2code`.

Issues
======

Class Loading Issues
--------------------

See the solution for the Surefire plugin, :doc:`mvn-plugin-surefire`.

::

  java.lang.LinkageError: loader constraints violated when linking javax/xml/namespace/QName class

Ignoring SOAP port "SMSInboundSoap12": it uses non-standard SOAP 1.2 binding
----------------------------------------------------------------------------

No solution... (to this issue).  To solve the problem I used Axis 2.  For more
information see Axis 2 - wsdl2code plugin, :doc:`mvn-plugin-axis2-wsdl2code`.

`wsHttpDualBinding - a non-interoperable binding`_

Problems using JAX-WS 2.1 and JAXB 2.1 with JDK 6
-------------------------------------------------

::

  Exception in thread "main" java.lang.LinkageError: JAXB 2.0 API is being loaded
    from the bootstrap classloader, but this RI (from jar:file:/D:/work/axws-ri/lib/jaxb-impl.jar!
    /com/sun/xml/bind/v2/model/impl/ModelBuilder.class) needs 2.1 API.
  Use the endorsed directory mechanism to place jaxb-api.jar in the bootstrap classloader.
    (See http://java.sun.com/j2se/1.5.0/docs/guide/standards/)

*Links*

- `Migrating JAXB 2.0 applications to JavaSE 6`_
- `Problems using JAX-WS 2.1 and JAXB 2.1 with JDK 6`_
- `Configure plugins jaxws-maven-plugin with jdk1.6`_

*Solution*

Copy version 2.1 of ``jaxb-api.jar`` and ``jaxws-api-2.1.jar`` to
``$JRE_HOME/lib/endorsed``.

::

  copy c:\Users\Patrick\.m2\repository\javax\xml\bind\jaxb-api\2.1\jaxb-api-2.1.jar \tools\Java\jre1.6.0_03\lib\endorsed\
  copy c:\Users\Patrick\.m2\repository\javax\xml\ws\jaxws-api\2.1\jaxws-api-2.1.jar \tools\Java\jre1.6.0_03\lib\endorsed\

**Note**:

- **Check which JRE you are using**!  I assumed my build environment was using
  ``C:\\tools\\Java\\jre1.6.0_03``, but it was not.  It was, in fact, using the
  JRE in my JDK i.e. ``C:\\tools\\Java\\jdk1.6.0_03\\jre\``.
- You will probably have to create the ``lib/endorsed`` folder.  On my
  workstation it was ``C:\\tools\\Java\\jdk1.6.0_03\\jre\\lib\\endorsed\``.


.. _`Using JAX-WS with Maven, Enterprise Java Technologies Tech Tips`: http://java.sun.com/mailers/techtips/enterprise/2008/TechTips_Jan08.html
.. _`wsHttpDualBinding - a non-interoperable binding`: http://blogs.sun.com/arungupta/entry/wshttpdualbinding_a_non_interoperable_binding
.. _`Migrating JAXB 2.0 applications to JavaSE 6`: https://jaxb.dev.java.net/guide/Migrating_JAXB_2_0_applications_to_JavaSE_6.html
.. _`Problems using JAX-WS 2.1 and JAXB 2.1 with JDK 6`: http://weblogs.java.net/blog/ramapulavarthi/archive/2007/01/problems_using.html
.. _`Configure plugins jaxws-maven-plugin with jdk1.6`: http://thegioitinhoccuatoi.blogspot.com/2007/07/configure-plugins-jaxws-maven-plugin.html


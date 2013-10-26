JMX
***

- http://mule.codehaus.org/Jmx+Management

To monitor Mule activity using JMX

The Mule configuration file needs to be modified to include the ``agents`` element:

::

  <mule-configuration id="app-gateway" version="1.0">
    <agents>
      <agent name="RMI" className="org.mule.management.agents.RmiRegistryAgent"/>
      <agent name="JmxAgent" className="org.mule.management.agents.JmxAgent">
        <properties>
          <property name="connectorServerUrl" value="service:jmx:rmi:///jndi/rmi://localhost:1099/server"/>
          <map name="connectorServerProperties">
            <property name="jmx.remote.jndi.rebind" value="true"/>
          </map>
        </properties>
      </agent>
    </agents>

The Maven project.xml includes the following dependencies:

::

      <!-- optional management deps -->
      <dependency>
        <groupId>jmxri</groupId>
        <artifactId>jmxri</artifactId>
        <version>1.2</version>
      </dependency>
      <dependency>
        <groupId>jmxri</groupId>
        <artifactId>jmxtools</artifactId>
        <version>1.2</version>
      </dependency>
      <dependency>
        <groupId>jmxri</groupId>
        <artifactId>jmxremoting</artifactId>
        <version>1.2</version>
      </dependency>
      <!-- Optional mx4j Agent support - for
      <dependency>
        <groupId>mx4j</groupId>
        <artifactId>mx4j-remote</artifactId>
        <version>2.1.1</version>
      </dependency>

Start the Mule application.  The JMX url will be displayed.

In this example the JMX url is:
service:jmx:rmi://myserver/jndi/rmi://localhost:1099/server

It is also possible to set-up monitoring of the JVM.  See :doc:`../jmx/jmx-jvm`
for more information.

**Note:** If we set-up monitoring of the JVM, we also get to view statistics
for the Mule engine.

**Note**:  When monitoring Mule and the JVM... probably need to make sure the
two addresses do not clash:

- mule-config.xml

  ::

    <property name="connectorServerUrl" value="service:jmx:rmi:///jndi/rmi://localhost:1099/server"/>

- Java command line:

  ::

    -Dcom.sun.management.jmxremote.port=1097

To view the JMX management statistics you can use *jManage* or *MC4J* (see
below for more information).

jManage
=======

:doc:`../jmanage/jmanage`

MC4J
====

http://mc4j.org/

Download and run MC4J.  Add a server.  In this example the MC4J connection
properties are:

::

  ../../images/howto/mule/mc4j-connection-properties.gif

The MC4J user interface is easy to understand...

::

  ../../images/howto/mule/mc4j-mbeans.gif


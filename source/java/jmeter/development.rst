Development
***********

Project
=======

The Maven project will need to include a couple of jar files which can be found
in the folder:

::

  C:\tools\jakarta-jmeter-2.2\lib\ext

Maven 2
-------

Install the JMeter jar files into the Maven repository:

::

  cd C:\tools\jakarta-jmeter-2.2\lib\ext
  mvn install:install-file -DgroupId=jakarta-jmeter -DartifactId=apachejmeter_core -Dversion=2.2 -Dfile=ApacheJMeter_core.jar -Dpackaging=jar -DgeneratePom=true
  mvn install:install-file -DgroupId=jakarta-jmeter -DartifactId=apachejmeter_java -Dversion=2.2 -Dfile=ApacheJMeter_java.jar -Dpackaging=jar -DgeneratePom=true

Add the following dependencies to your ``pom.xml``:

::

  <dependency>
    <groupId>jakarta-jmeter</groupId>
    <artifactId>apachejmeter_core</artifactId>
    <version>2.2</version>
  </dependency>
  <dependency>
    <groupId>jakarta-jmeter</groupId>
    <artifactId>apachejmeter_java</artifactId>
    <version>2.2</version>
  </dependency>
  <dependency>
    <groupId>logkit</groupId>
    <artifactId>logkit</artifactId>
    <version>1.2</version>
  </dependency>

The ``logkit`` dependency is also required for JMeter.

Writing a Test
--------------

To test a java class you need to derive the test class from
``AbstractJavaSamplerClient`` and implement the ``runTest`` function:

::

  public final class MySampler extends AbstractJavaSamplerClient {

      /*
       * If you want to pass parameters to your class then implement this function to tell JMeter
       * which parameters are valid.
       * See notes in the next section for more information.
       */
      public Arguments getDefaultParameters() {
          Arguments params = new Arguments();
          params.addArgument("repository-path", null);
          return params;
      }

      public void setupTest(final JavaSamplerContext context) {
          /*
           * To get the parameter values...
           */
          String repositoryPath = context.getParameter("repository-path");
      }

      public SampleResult runTest(final JavaSamplerContext context) {
          SampleResult results = new SampleResult();
          results.sampleStart();
          // Do the work...
          // If you want to do some logging...
          getLogger().debug("this will appear in jmeter.log");
          results.setSuccessful(true);
          results.setSampleLabel("this will appear in a jmeter table");
          results.sampleEnd();
          return results;
      }

      public void teardownTest(final JavaSamplerContext context) {
      }
  }

Running the Test
----------------

Create the jar file and copy to:

::

  C:\tools\jakarta-jmeter-2.1.1\lib\ext\

or

::

  C:\tools\jakarta-jmeter-2.1.1\lib\

Start JMeter, Right click on *Test Plan*, Add *Thread Group*, right click on
*Thread Group*, Add *Sampler*, *Java Request*.  Your class should appear in the
*Classname* drop down list.

If you want to pass parameters from JMeter to your class then do the following:

- See the ``getDefaultParameters`` function in the previous section.
- Set-up the ``User Defined Variables``:

  ::

    ../images/user-defined-variables.gif

- Set-up the "Java Request" parameters for your class:

  ::

    ../images/java-request-send-parameters.gif

Logging
=======

JMeter
------

JMeter does not use log4j or commons logging.

The internal logging system is:

::

  org.apache.log.Logger

This can be found in the jar file (Maven dependency format):

::

  <dependency>
    <groupId>logkit</groupId>
    <artifactId>logkit</artifactId>
    <version>1.2</version>
    <scope>test</scope>
  </dependency>

To write to the log:

::

  getLogger().debug("Some information");

To change the logging level, add:

::

  log_level.jmeter.protocol.java=DEBUG

to:

::

  C:\tools\jakarta-jmeter-2.1.1\bin\jmeter.properties

The log file is:

::

  C:\tools\jakarta-jmeter-2.1.1\bin\jmeter.log

Sample ``jmeter.properties`` file.

::

  ../../misc/howto/jmeter/jmeter.properties

log4j
-----

JMeter does not use log4j.  Many of our applications do.  To get log4j working:

*Might not need to do this... check the application folder for the log file.*

Change the command line in:

::

  C:\tools\jakarta-jmeter-2.1.1\bin\jmeter.bat

Change the final line from:

::

  %JM_START% %JM_LAUNCH% %JVM_ARGS% %ARGS% -jar ApacheJMeter.jar %JMETER_CMD_LINE_ARGS%

to:

::

  %JM_START% %JM_LAUNCH% -Dlog4j.configuration=file:log4j.properties %JVM_ARGS% %ARGS% -jar ApacheJMeter.jar %JMETER_CMD_LINE_ARGS%

(Sample ``jmeter.bat`` file):

::

  ../../misc/howto/jmeter/jmeter.bat

Copied a ``log4j.properties`` to:

::

  C:\tools\jakarta-jmeter-2.1.1\bin\log4j.properties

The log file appears in:

::

  C:\tools\jakarta-jmeter-2.1.1\bin\logger.log


jManage
*******

http://www.jmanage.org/

Download jManage.  I downloaded the binary and installed to:

::

  C:\tools\jmanage-1.0.2\

Open a Command Prompt which has the Java Path set correctly and run
``startup.cmd``:

::

  cd C:\tools\jmanage-1.0.2\bin\
  startup.cmd

Enter the user name ``admin`` and password ``123456``.

This will start the application.  To view the user interface open a web browser and use
the following url: http://localhost:9090

Login to the application, user name ``admin`` and password ``123456``.

If the application has not been set-up, select *Add Application*, *JSR160
Application* and set-up the application details.

I used the Mule JMX URL:

::

  service:jmx:rmi://myworkstation/jndi/rmi://localhost:1099/server

::

  ../../images/howto/jmanage/jmanage-connection-properties.gif

Or for the JVM running Mule on server2:

::

  service:jmx:rmi:///jndi/rmi://server2:1098/jmxrmi

The rest of the application works as you would expect.


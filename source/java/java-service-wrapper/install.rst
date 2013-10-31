Install
*******

Windows
=======

http://wrapper.tanukisoftware.org

Copied:

::

  InstallTestWrapper-NT.bat
  MyApp.bat
  UninstallTestWrapper-NT.bat
  wrapper.exe

from:

::

  C:\Tools\wrapper_win32_3.1.2\bin

into:

::

  C:\projects\mule-gateway\bin

Renamed:

::

  InstallTestWrapper-NT.bat

to:

::

  InstallMessageService-NT.bat

::

  MyApp.bat

to:

::

  MyMessageService.bat

::

  UninstallTestWrapper-NT.bat

to:

::

  UninstallMessageService-NT.bat

Copied:

::

  wrapper.dll

from:

::

  C:\Tools\wrapper_win32_3.1.2\lib

into:

::

  C:\projects\mule-gateway\bin

Added:

::

  <!-- This dependency is required for the Java Service Wrapper -->
  <dependency>
      <groupId>tanukisoft</groupId>
      <artifactId>wrapper</artifactId>
      <version>3.1.2</version>
  </dependency>

to:

::

  C:\projects\mule-gateway\project.xml

Copied:

::

  wrapper.conf

from:

::

  C:\Tools\wrapper_win32_3.1.2\conf

into:

::

  C:\projects\mule-gateway\bin

Edited:

::

  C:\projects\mule-gateway\bin\MessageService.bat

changed:

::

  set _WRAPPER_CONF="%_REALPATH%..\conf\wrapper.conf"

to:

::

  set _WRAPPER_CONF="%_REALPATH%wrapper.conf"

Created a new folder:

::

  C:\projects\mule-gateway\logs

Made the following changes in:

::

  C:\projects\mule-gateway\bin\wrapper.conf

::

  # Use %JAVA_HOME% here if you want!
  wrapper.java.command=C:\Tools\j2sdk1.4.2_08\bin\java
  # Added in all the jar files for the classpath...
  wrapper.java.classpath.1=../target/dep/wrapper-3.1.2.jar
  wrapper.java.classpath.2=../target/mule-gateway-1.0.jar
  wrapper.java.classpath.3=../target/dep/activation-1.0.2.jar
  wrapper.java.classpath.4=../target/dep/activeio-1.0.jar
  wrapper.java.classpath.5=../target/dep/axis-jaxrpc-1.2.jar
  # add in all the rest of the classpath entries - must be no gap in the numbers!
  wrapper.java.library.path.1=./
  wrapper.app.parameter.1=org.mule.MuleServer
  wrapper.app.parameter.2=-config mule-gateway-server.xml
  wrapper.java.mainclass=org.tanukisoftware.wrapper.WrapperSimpleApp
  wrapper.ntservice.name=mule-gateway
  wrapper.ntservice.displayname=Messaging Gateway
  wrapper.ntservice.description=Messaging Gateway

Edited:

::

  InstallMessageService-NT.bat

Changed:

::

  set _WRAPPER_CONF="%_REALPATH%..\conf\wrapper.conf"

to:

::

  set _WRAPPER_CONF="%_REALPATH%wrapper.conf"

Edited:

::

  UninstallMessageService-NT.bat

Changed:

::

  set _WRAPPER_CONF="%_REALPATH%..\conf\wrapper.conf"

to:

::

  set _WRAPPER_CONF="%_REALPATH%wrapper.conf"

For more information see SVN path, revision 351 to 353:

http://g1/svn/projects/mule-gateway/trunk

To test the application:

::

  bin\MessageService.bat console

To install the service:

::

  bin\InstallMessageService-NT.bat

To uninstall the service:

::

  bin\UnInstallMessageService-NT.bat

Note

The home directory appears to be: ``bin\``...

When the Java program creates a file it does so in ``bin\``.  Need to move
property files and "site" folders into ``bin\``.  The easiest thing to do is to
cd into the ``bin\`` folder and think of this folder as the current directory.

Linux
=====

Downloaded ``wrapper_linux_3.1.2.tar.gz``

Copied ``bin/wrapper`` to ``bin/``

Set the permissions on the two files...

::

  chmod a+x gateway-linux
  chmod a+x wrapper

Copied ``lib/libwrapper.so`` to ``bin``.

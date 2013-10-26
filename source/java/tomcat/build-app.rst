Build Application
*****************

See: http://jakarta.apache.org/tomcat/tomcat-5.0-doc/appdev/processes.html

Copy catalina-ant.jar to lib directory of your Ant installation:

::

  cp /opt/tomcat5/server/lib/catalina-ant.jar /usr/share/ant-core/lib/

Had to change permissions on Tomcat to allow me to compile apps:

::

  chmod o+rx /opt/tomcat5/

Set-up the application.  For a simple example see:

::

  ~/development/java/learning/tomcat/sampleapp

I had so many problems getting the servlet working.  The issue was with the
``web.xml`` file.  See the following web page for some hints:

http://www.jetbrains.com/idea/docs/html/webAppl.html#webxml

To build the application:

::

  ant

To build the whole application:

::

  ant all

To install the application on the local Tomcat server (check build.properties)

::

  ant install

To remove the application from the local Tomcat server:

::

  ant remove

To start using new servlets:

::

  ant reload

Issue the command:

::

  ant dist

To create a distributable web application archive (WAR) file, as well as a JAR
file containing the corresponding source code.

Package the contents of the dist directory using the tar or zip utility,
according to the standard release procedures used by your organization.

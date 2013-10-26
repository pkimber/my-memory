Issues
******

Starting a Facelets project on Tomcat from within Eclipse:

::

  20-Jan-2007 14:15:41 org.apache.catalina.core.StandardContext listenerStart
  SEVERE: Error configuring application listener of class org.apache.myfaces.webapp.StartupServletContextListener
  java.lang.ClassNotFoundException: org.apache.myfaces.webapp.StartupServletContextListener
    at org.apache.catalina.loader.WebappClassLoader.loadClass(WebappClassLoader.java:1355)
  ...
  20-Jan-2007 14:15:41 org.apache.catalina.core.StandardContext listenerStart
  SEVERE: Skipped installing application listeners due to previous error(s)
  20-Jan-2007 14:15:41 org.apache.catalina.core.StandardContext start
  SEVERE: Error listenerStart
  20-Jan-2007 14:15:41 org.apache.catalina.core.StandardContext start
  SEVERE: Context [/my-memory] startup failed due to previous errors

I deployed the application in Tomcat and it works perfectly.  The Nabble
mailing list has the following entry: `Exception w/MyFaces 1.1.1`_

::

  >I'm trying to run Facelets 1.0e with the release build of MyFaces 1.1.1
  >(including Tomahawk), and I'm getting the following exception:
  >
  >2006-01-08 17:18:08 StandardContext[/jsf-central]Exception sending context
  >initialized event to listener instance of class
  >org.apache.myfaces.webapp.StartupServletContextListener
  >java.lang.NoClassDefFoundError: com/sun/facelets/compiler/Compiler
  >
  >Any ideas? Should I be using a nightly build of MyFaces instead?

  You might want to blow away your tld cache within the working directory
  of Tomcat-- usually that causes me problems with tld-specified listeners.



.. _`Exception w/MyFaces 1.1.1`: http://www.nabble.com/Exception-w-MyFaces-1.1.1-tf875711.html#a2271029


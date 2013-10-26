Swing Library
*************

Create a ``jython`` virtual environment...

::

  git clone git://github.com/robotframework/RemoteApplications.git
  cd RemoteApplications
  jython build.py package
  cp target/remoteapplications-1.3-jar-with-dependencies.jar demo/lib/
  cd demo
  jython run.py robot-tests/javaws_application.txt

If you change the URL to a valid *WebStart* application, then I managed to find
the page components using the following commands in ``javaws_application.txt``:

::

  *** Settings ***
  Library         RemoteApplications

  *** Variables ***
  ${JNLP URL}  http://docs.oracle.com/javase/tutorial/deployment/webstart/examples/webstart_ComponentArch_DynamicTreeDemo/src/dynamictree-webstart.jnlp

  ${LIB DIRECTORY}  ${CURDIR}${/}..${/}lib

  *** Test Cases ***
  Demonstration
      Start Web Start Application  Demo Application
      Use Application
      Close Application

  *** Keywords ***
  Start Web Start Application
      [Arguments]  ${name}
      Start Application  ${name}  javaws ${JNLP URL}  120 seconds  ${LIB DIRECTORY}
      Take Library Into Use  SwingLibrary

  Use Application
      Select Main Window
      List Components in Context

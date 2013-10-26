Commands
********

At the ``osgi>`` prompt we can:

Help:
=====

::

  osgi> help

Exit
====

::

  osgi> exit

Headers
=======

To view the ``headers`` for the bundle, ``headers`` followed by the *id* of the
bundle:

::

  osgi> headers 0
  Bundle headers:
   Bundle-Activator = org.eclipse.osgi.framework.internal.core.SystemBundleActivator
  ...

Install
=======

::

  osgi> install file:target/sample-modular-java-step-1-simple-bundle-1.0-SNAPSHOT.jar
  Bundle id is 7

Start
=====

::

  osgi> ss

  Framework is launched.

  id  State       Bundle
  0   ACTIVE      org.eclipse.osgi_3.4.0.v20080605-1900
  7   INSTALLED   com.pragprog.HelloWorld_1.0.0

  osgi> start 7

Status (short)
==============

::

  osgi> ss

  Framework is launched.

  id  State       Bundle
  0   ACTIVE      org.eclipse.osgi_3.4.0.v20080605-1900

Stop
====

::

  osgi> ss

  Framework is launched.

  id  State       Bundle
  0   ACTIVE      org.eclipse.osgi_3.4.0.v20080605-1900
  7   ACTIVE      com.pragprog.HelloWorld_1.0.0

  osgi> stop 7

Uninstall
=========

::

  osgi> ss

  Framework is launched.

  id  State       Bundle
  0   ACTIVE      org.eclipse.osgi_3.4.0.v20080605-1900
  6   RESOLVED    com.pragprog.HelloWorld_1.0.0

  osgi> uninstall 6



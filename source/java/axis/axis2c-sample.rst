Axis2/C - Sample
****************

Sample Code
===========

- Copy the sample source file, ``hello_svc.c``, from the installation folder to
  a folder of your choice:

  ::

    copy C:\bin\axis2c-bin-1.1.0-win32\docs\docs\hello\service\hello_svc.c

- Copy the sample, ``services.xml`` file to the same folder:

  ::

    copy C:\bin\axis2c-bin-1.1.0-win32\docs\docs\hello\service\hello\services.html services.xml

  Note: ``services.html`` need to be renamed to ``services.xml``.

Setup
=====

Open a *Visual Studio .NET 2003 Command Prompt* and set the standard
environment variables:

::

  set AXIS2C_HOME=C:\bin\axis2c-bin-1.1.0-win32
  set PATH=%PATH%;%AXIS2C_HOME%\lib

Compile
=======

Compile and link the code (creates ``hello.dll``):

::

  cl.exe /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "AXIS2_DECLARE_EXPORT" /D "AXIS2_SVR_MULTI_THREADED" /w /nologo /I  %AXIS2C_HOME%\include /c hello_svc.c
  link.exe /nologo /LIBPATH:%AXIS2C_HOME%\lib axutil.lib axiom.lib axis2_parser.lib axis2_engine.lib /DLL /OUT:hello.dll *.obj

Deploy
======

- In the ``services`` folder of the ``axis2c`` installation, create a folder
  to contain the service e.g. ``services/hello``:

  ::

    C:\bin\axis2c-bin-1.1.0-win32\services\hello\

- Copy ``hello.dll`` and ``services.xml`` to this folder:

  ::

    copy hello.dll C:\bin\axis2c-bin-1.1.0-win32\services\hello\
    copy services.xml C:\bin\axis2c-bin-1.1.0-win32\services\hello\

- Re-start the *Simple Axis2 HTTP Server* and list the services to see if your new ``hello``
  service has been deployed:

  http://localhost:9090/axis2/services

Client
======

To build a test client, use similar command lines, just remove ``/DLL`` from
the link command and name the output file ``exe`` rather than ``dll``.

REST
====

hello
-----

The service (above) can be called as a REST service (I think), using this
 ``curl``, :doc:`../../linux/curl`, command:

::

  curl http://localhost:9090/axis2/services/hello/greet -d "<name>Sam</name>"

echo
----

Build the ``echo`` sample in exactly the same way as we build the hello sample
(above).  To invoke the REST service, use ``curl``, :doc:`../../linux/curl`.

::

  curl http://localhost:9090/axis2/services/echo/echoString?name=Patrick

Doing an HTTP POST rather than a get, returns a nice error message:

::

  curl http://localhost:9090/axis2/services/echo/echoString -d "name=Patrick"


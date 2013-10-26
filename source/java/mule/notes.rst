Notes
*****

Links
=====

- http://mule.codehaus.org/

Source Control
==============

Checkout using CVS.  The CVS location is:

::

  :pserver:anonymous@cvs.mule.codehaus.org:/home/projects/mule/scm

I checked out to:

::

  C:\src\mule\

Build
=====

From the top level, just typing ``maven`` will build the entire Mule train.

If the tests are failing then update ``project.properties``:

::

  maven.test.failure.ignore=true

Eclipse
=======

To debug Mule from source.

Typing ``maven eclipse`` at the top level will generate the ``.classpath`` and
``.project`` files for each sub-project.

History
=======

Tried to create my own classes with a default constructor.

It does not work now!

Took out the default constructor and all is OK.

Starting the Server
===================

::

  org.mule.MuleServer -config mule-config.xml


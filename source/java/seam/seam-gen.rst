seam-gen
********

Links
=====

- `Chapter 2. Getting started with Seam, using seam-gen`_

Install
=======

- Install JBoss IDE plugin for Eclipse, :doc:`../jboss/eclipse`.
- Install TestNG plugin for Eclipse, :doc:`../testng/eclipse`.
- Install ANT 1.6.

Getting Started
===============

- Add your JBoss installation to the JBoss Server View in Eclipse.  Edit the
  launch configuration, *Run*, *Debug...*, *Generic Server*, *JBOSS 4.0*,
  *Arguments*, update the *VM arguments* to include:

  ::

    -Xms512m -Xmx1024m -XX:PermSize=256m -XX:MaxPermSize=512

- Start a command prompt in the directory where you unzipped the Seam
  distribution and run setup:

  ::

    cd C:\src\jboss-seam-1.2.1.GA\
    seam setup

  In this example we will ask ``seam-gen`` to create an application in:

  ::

    C:\development\learn\java\seam\my-first-seam-project\

  For any questions where I have not suggested a response, accept the default
  by pressing enter:

- *Enter your Java project workspace*:

  ::

    C:\development\learn\java\seam\

- *Enter your JBoss home directory*:

  ::

    C:\tools\jboss-4.0.5.GA

- *Enter the project name*:

  ::

    my-first-seam-project

- *Enter the Java package name for your session beans*:

  ::

    com.sample

The settings are stored in ``seam-gen/build.properties``, but you can also
modify them simply by running ``seam setup`` a second time.

Create a Project
================

Now we can create a new project in our Eclipse workspace directory, by typing:

::

  cd C:\src\jboss-seam-1.2.1.GA\
  seam new-project

Import the project into Eclipse... (this will deploy the project into JBoss
AS):

Run the application by opening http://localhost:8080/my-first-seam-project/
in your browser.

You can edit this page, or the template, in Eclipse, and see the results
immediately, by clicking refresh in your browser.

Create an Action
================

::

  cd C:\src\jboss-seam-1.2.1.GA\
  seam new-action

Seam will prompt for some information, and generate a new facelets page and
Seam component for your project:

- *Enter the Seam component name*:

  ::

    ping

To re-start the application in Eclipse, right click on ``build.xml``, *Run As*,
*Ant Build...*, tick ``restart``, un-tick ``deploy``, append *restart* to the
*Name* and click *Run*...

Run the action by opening
http://localhost:8080/my-first-seam-project/ping.seam.

You can see the code behind this action by looking in the project ``src``
directory (you might need to refresh the project first).

...put a breakpoint in the ``ping()`` method in the ``PingBean`` class, and
click the button again (you might need to attach the source code).

...*doesn't seem to work for me*... but, locate the ``PingTest.xml`` file in
the test package and run the integration tests using the TestNG plugin.

Create an Entity
================

``seam-gen`` will also create an edit and list page:

::

  cd C:\src\jboss-seam-1.2.1.GA\
  seam new-entity

Creating a Form with an Action
==============================

::

  cd C:\src\jboss-seam-1.2.1.GA\
  seam new-form

- *Enter the Seam component name*:

  ::

    hello

Follow the instructions in the previous section to re-start the application and
run the form by opening http://localhost:8080/my-first-seam-project/hello.seam.

Issues
======

PermGen space
-------------

::

  com.sun.facelets.FaceletException: PermGen space
  java.lang.OutOfMemoryError: PermGen space

For the solution see the *Getting Started* notes above...



.. _`Chapter 2. Getting started with Seam, using seam-gen`: http://docs.jboss.org/seam/1.2.1.GA/reference/en/html/gettingstarted.html


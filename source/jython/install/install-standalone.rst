Install - Standalone jar
************************

Links
=====

- `Distributing Jython Scripts`_

Install
=======

To get a ``jar`` file which can be copied to other computers and used to run
``jython`` applications:

- Download the installer (as normal).
- Start the installer:

  ::

    java -jar ~/Downloads/jython/jython-installer-2.5.3.jar

- On the *Installation type* page, select
  "*Standalone (a callable .jar file)*".

  Continue with the installation as normal...

- The installation will put a single ``jython.jar`` file into the selected
  folder.

Usage
=====

The ``jython.jar`` file can be copied and used with a simple ``java`` command
line:

- If your script requires 3rd party ``jar`` files, then run using a batch file
  like this:

  ::

    SET CLASSPATH=jtds-1.2.jar
    java -cp "jython.jar;%CLASSPATH%" org.python.util.jython prepare_daily_report.py

- If your script doesn't require any third party ``jar`` files, then it can be
  run like this:

  ::

    java -jar jython.jar script.py


.. _`Distributing Jython Scripts`: http://wiki.python.org/jython/JythonFaq/DistributingJythonScripts

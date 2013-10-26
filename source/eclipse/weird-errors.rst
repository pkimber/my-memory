Weird Errors
************

cannot find main (or something)
===============================

23/01/2006 15:44

Could not find any main methods in the whole application.

Solved by starting Eclipse using the "``-vm``" parameter and using the same VM
as was being used by Maven.

See :doc:`install` for more information on the "``-vm``" parameter.

import somepackage cannot be resolved
=====================================

http://www.brunningonline.net/simon/blog/archives/001748.html

I've come across the error message:

``import somepackage cannot be resolved``

loads of times - I'm sure that we all have.

It usually means that you are missing a JAR file from your project's build
path. But I'm getting it under strange circumstances this time...

Solution: I faced the same problem and got it resolved by clicking on the
*clean* option in the *project* menu. I'm using Eclipse 3.1.0

The type List is not generic; it cannot be parameterized with arguments *Employee*
==================================================================================

The IDE is probably using a version of Java before 1.5.  Check the Java Build
path (Project, *Properties* *Java Build Path*), it probably contains a
reference to the J2SE 1.4.2 libraries.

Unable to get class information for @throws tag
===============================================

Solved by switching CheckStyle on for the project.  It had been switched on but
probably got switched off by the Maven eclipse goal.

This is the actual error message:

::

  Got an exception - java.lang.RuntimeException: Unable to get class information for @throws tag 'LuceneAppException'

Workspace in use or cannot be created
=====================================

- Make sure you do not have any Eclipse and Eclipse VM running.  If so, exit
  from them or kill their processes.

  My Eclipse ran out of memory.  I ended the process of Eclipse and a JVM in
  the task manager and could open the workspace.

- If you are sure that there is NO Eclipse and Eclipse VM running, you can
  attempt to delete the ``.lock`` file:

::

  <your workspace>/.metadata/.lock

log4j
*****

Had a project where we did not want the ``log4j.properties`` to be added to the
jar file but we still wanted log4j to work for unit tests.

For the Maven configuration see: ``../maven/log4j.html``.

Eclipse needs to be configured per *Run* configuration.  Assuming you have
moved ``log4j.properties`` to the root of your project...

Select *Run*, *Run...*, choose the configuration which needs updating, select
the *Arguments* tab and enter the following into *VM arguments*:

::

  -Dlog4j.configuration=file:log4j.properties

log4j Java VM Arguments:

::

  ../images/log4j-vm-arguments.gif


Services
********

Shortcut
========

To create a shortcut to the Services dialog, just create a shortcut to
``services.msc``.

Startup
=======

*Run*, *msconfig*

Issues
======

::

  Failed.  Access is denied

Stop
====

**Note**: Not tested!

We can just setup a scheduled task to run:

::

  sc stop <service_name>

or

::

  net stop <service_name>

...and then disable the service:

::

  reg add HKLM\SYSTEM\CurrentControlSet\Services\<service_name> /v Start /t reg_dword /f /d 00000004



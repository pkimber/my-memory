Tim Golden - python WMI
***********************

Links
=====

- http://timgolden.me.uk/python/wmi.html
- http://timgolden.me.uk/python/wmi_cookbook.html

Description
===========

Windows Management Instrumentation

Presents a consistent view across system administration functions on a Windows
workstation.

Very good for finding out information about the system e.g. what is the serial
number...

Notes
=====

``wmiweb.py`` is a nice browser which will show all the objects and methods
(currently only available on ``trunk``).

WMI is wrapping *MOF* files, which can easily be created for different
sub-systems.

WMI always returns a set (or a list in python terminology).

Available on Windows 2000 onwards.

Is easy to query properties on other servers (have to satisfy security
requirements).

Can use WMI to start and stop programs, list processes, list process
attributes.

Can create watchers which call events.

Disadvantages
-------------

WMI is not fast.

Sometimes it can be too simplistic.

CIM data files... will try and grab every file on your machine and take down
the service.

Not really designed to write properties back, but in some cases, there are
change methods for some of the properties e.g. changing the name of a service.

Future
------

Microsoft are adding features to WMI, so we think it is a growing technology.

Event handling could be improved.

Asynchronous

Try and build a slimline version.

Might use com types rather than the win32 module... or might use a hand rolled
library (to get a bit extra performance).

Sample
======

::

  import wmi
  c = wmi.WMI ()
  for s in c.Win32_Service ():
    if s.State == 'Stopped':
      print s.Caption, s.State

::

  import wmi
  c = wmi.WMI()
  c.Win32_

::

  # Will speed up startup.
  c = wmi.WMI (find_classes=False)

::

  c.classes()
  c.Win32_Processor
  c.Win32_Processor.methods()
  c.Win32_Processor.properties()
  # To see the method and it's parameters.
  c.Win32_Processor.SetPowerState()

::

  for i in c.Win32_Service(State="Stopped")
  c.Win32_Service.Change(

::

  watcher = c.watch_for("creation"...

Associates of objects:

::

  dd.associators


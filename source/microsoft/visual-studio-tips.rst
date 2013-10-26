Visual Studio - Tips
********************

Build Events
============

To copy the application ``.config`` folder to the ``Debug`` or ``Release``
folder create a *Post-build Event*:

Right click on the project, *Properties*, *Build Events*, *Post-build Event
Command Line* and enter the following command:

::

  xcopy "$(ProjectDir)$(TargetFileName).config" "$(TargetDir)" /YR

Note:

- A batch file, ``PostBuildEvent.bat``, will be created in the ``Debug`` or
  ``Release`` folder.  This batch file can be run and inspected to help
  diagnose any issues.
- I tried creating this as a *Pre-build Event*, but it didn't appear to work.

Colour Schemes
==============

`VS2008 Color Schemes`_

Documentation
=============

See `C# Links, GhostDoc for a useful documentation tool`_.

Version Control
===============

`Which Visual C++ Files to Add to Source-Code Control`_

Do not check in files ending in:

- ``_i.c``
- ``_i.h``
- ``_I*Events_CP.h``
- ``_p.c``
- ``aps``
- ``.csproj.user``.  This does seem to be the general advice... but it has
  caused problems for me in the past.
- ``dlldata.c``
- ``ncb``
- ``suo``


.. _`VS2008 Color Schemes`: http://www.winterdom.com/weblog/2007/11/22/VS2008ColorSchemes.aspx
.. _`C# Links, GhostDoc for a useful documentation tool`: ../csharp/comments.html
.. _`Which Visual C++ Files to Add to Source-Code Control`: http://support.microsoft.com/kb/156513


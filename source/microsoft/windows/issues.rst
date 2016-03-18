Issues
******

Narrator
========

`How do I turn OFF Windows Narrator?`_

*Control Panel*, *Ease of Access Center*, *Use the computer without a display*,
remove the check from *Turn on Narrator*.

or...

Press the *Windows Logo* and the *Enter* key...

.. important:: To get rid of the blue boxes, find *Narrator* in the tool-bar
               (it is a running application) and *Exit* from it.

Recycle Bin
===========

If it takes forever to delete a file... then empty your recycle bin.

svchost.exe
===========

`How To Identify What Programs Started svchost.exe in Windows`_::

  tasklist /svc /FI "IMAGENAME eq svchost.ex"e

*svchost.exe exists to run programs, implemented as DLL's, as a service*.

Also see Windows - Processes, :doc:`processes`.

Unlock File
===========

If you cannot unlock a file... try *Unlocker*.  For more information see notes
on software tools, :doc:`apps/software`.


.. _`How do I turn OFF Windows Narrator?`: http://superuser.com/questions/618252/how-do-i-turn-off-windows-narrator
.. _`How To Identify What Programs Started svchost.exe in Windows`: http://www.watchingthenet.com/how-to-identify-what-programs-started-svchostexe-in-windows.html

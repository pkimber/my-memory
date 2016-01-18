Shutdown
********

.. highlight:: batch

From `How do I Shutdown - Restart - Logoff Windows via bat file`_

Here's how to do the shutdown functions via a batch file::

  REM restarts
  shutdown -r
  REM shuts down
  shutdown -s
  REM logoff
  shutdown -l
  REM where xx is number of seconds to wait till shutdown/restart/logoff
  shutdown -t xx
  REM gives you a dialog box to fill in what function you want to use
  shutdown -i
  REM aborts the previous shutdown command....very handy!
  shutdown -a
  REM hibernate. Easy mistake - it's not for help
  shutdown -h

Additional options::

  REM force the selected action
  -f


.. _`How do I Shutdown - Restart - Logoff Windows via bat file`: http://stackoverflow.com/questions/162304/how-do-i-shutdown-restart-logoff-windows-via-bat-file

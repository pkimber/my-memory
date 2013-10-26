tail
****

Output appended data as the file grows:

::

  tail -f /etc/httpd/logs/error_log

Last x Lines
============

Last 30 lines of ``catalina.out``:

::

  tail -n30 /opt/tomcat5/logs/catalina.out

Long Lines
==========

`Tail a log file with long lines truncated`_

::

  tail -f logfile.log | cut -b 1-80

Also useful for looking at different parts of the line,
e.g. ``cut -b 50-100`` shows columns 50 through 100.

Or even smarter, use ``tput cols`` to tell you the width of the
terminal:

::

  tail -f logfile.log | cut -b -$(tput cols)


.. _`Tail a log file with long lines truncated`: http://www.commandlinefu.com/commands/view/1710/tail-a-log-file-with-long-lines-truncated


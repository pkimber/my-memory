Printing - cups-pdf
*******************

::

  emerge -av cups-pdf

For more information see:
http://cip.physik.uni-wuerzburg.de/~vrbehr/cups-pdf/

::

  /etc/init.d/cupsd restart
  rc-update add cupsd default

To select the CUPS admin web page...
http://localhost:631/admin/

The print file will be placed into:

::

  /var/spool/cups-pdf/patrick

If not - check the log file in:

::

  /var/log/cups/cups-pdf_log


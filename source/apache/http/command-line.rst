Command Line
************

Linux
=====

::

  sudo /etc/init.d/apache2 stop
  sudo /etc/init.d/apache2 start
  sudo /etc/init.d/apache2 restart

Windows
=======

**Note**: To start and stop Apache on Windows Vista, you will need to start the
command prompt using the "*Run as administrator*" option:

Apache 2
--------

- Start

  ::

    bin\Apache.exe -k start

- Stop

  ::

    bin\Apache.exe -k stop

Apache 2.2
----------

- Start

  ::

    bin\httpd.exe -k start

- Stop

  ::

    bin\httpd.exe -k stop

Logging
=======

Error log location:

::

  /var/log/apache2/


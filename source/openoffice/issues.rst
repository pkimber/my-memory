Issues
******

Locked File
===========

To un-lock an OpenOffice file, delete the *hidden* lock file e.g:

::

  # ls -la
  -rwx------  1 www-data www-data 117936 2010-08-11 17:16 build-data.ods
  -rwx------  1 www-data www-data    118 2010-08-19 10:01 .~lock.build-data.ods#

In this example, to un-lock the file, you would:

::

  rm .~lock.build-data.ods#


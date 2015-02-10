ftp
***

Install ftp
===========

See: http://www.faqs.org/docs/Linux-mini/FTP.html#ss3.1

::

  emerge -av ftp

::

  ftp ftp.westwood.com

or:

::

  ftp
  open ftp.westwood.com

Login
=====

For anonymous login - login as:

::

  anonymous

List
====

To list files:

::

  ls

cd
==

To change folder:

::

  cd <folder name>

Download
========

To download a file:

::

  get <filename>

To download multiple files:

::

  mget <filename with wildcard>


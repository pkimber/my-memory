Symbolic Links
**************

Links
=====

- http://enterprise.linux.com/print.pl?sid=04/08/27/1435207

Usage
=====

**Note**:

- Make sure you specify the full path to each of the files.
- In the following example the file in ``/usr`` is the real file.

::

  ln -s /usr/local/bin/original/script /etc/init.d/new-script

Just do a simple ``rm`` to remove the link.

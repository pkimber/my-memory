scp
***

Links
=====

- putty_

Sample
======

::

  scp patrick@10.0.0.3:/home/patrick/development/python/utility/copy_mail_config.py /home/patrick/temp/temp.py

  scp 10.0.0.4:/home/patrick/development/python/learning/cgi/test.py ./

Wildcard
--------

To recursively copy all files and folders from the current location::

  scp -r ./* root@localhost:/var/www/localhost/htdocs/my-memory/

Note: To copy a folder use ``./folder-name/`` rather than ``./folder-name/*``.

Port and throttle
-----------------

In this example, ``-l`` limits the connection, ``-P`` sets the port number::

  scp -l 5000 -p -P 22116 patrick@10.0.0.3:/home/patrick/archive.tar.gz .

Windows
=======

See :doc:`../../cygwin/cygwin` for how to install the *cygwin* versions of
``ssh`` and ``scp``.

Download ``pscp.exe`` from
http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html

*I cannot get it to work*!


.. _putty: ssh.html

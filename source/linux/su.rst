su
**

Command
=======

To run a command as a specified user:

::

  su -c "/usr/local/bin/continuum-1.0.3/bin/linux/run.sh start" - integration

This will run the command between the speech marks as the user
``integration``.

Issues
======

Red Hat
-------

The normal ``su - username`` doesn't seem to create a shell on Red Hat linux
(as we would expect)...  It probably just runs a command as a user then drops
back to the calling shell.  

Ubuntu
------

To ``su`` to another user on Ubuntu server, first ``sudo`` to the ``root``
user, then ``su`` to the user you want e.g:

::

  patrick@server:~$ sudo -i
  root@server:~# su - jenkins
  jenkins@server:~$

Note: ``-`` to start the environment which is almost the same as with login
environment for that user.

ssh
***

Configuration
=============

Make sure the following is at the start of your ``~/.vimrc`` file:

::

  set nocompatible

Usage
=====

To open a file:

::

  :e scp://root@test.com//srv/django/wiki/urls.py

To diff two remote files:

::

  vimdiff scp://user@host//path/to/file scp://user@otherhost//path/to/file


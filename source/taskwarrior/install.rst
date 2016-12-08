Install
*******

Note: Remove ``task`` using the Ubuntu Software Centre before installing from
source.

Source
======

Prequisites
-----------

Install *CMake* using ``apt-get``::

  sudo apt-get install cmake uuid-dev

.. note:: ``libgnutls-dev`` is required for the ``sync`` command, but is no
          longer available on Ubuntu 16.10.  To work around this issue, we
          build without sync ``-DENABLE_SYNC=OFF``

Download
--------

Download the *Source code tarball* from `Taskwarrior Download`_::

  cd ~/Downloads/taskwarrior/
  wget http://www.taskwarrior.org/download/task-2.0.0.tar.gz

Install
-------

::

  cd ~/repo/src/
  tar xzf ~/Downloads/taskwarrior/task-2.0.0.tar.gz
  cd task-X.Y.Z
  cmake . -DENABLE_SYNC=OFF
  make
  sudo make install


.. _`Taskwarrior Download`: http://taskwarrior.org/projects/taskwarrior/wiki/Download

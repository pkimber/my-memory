Install
*******

Note: Remove ``task`` using the Ubuntu Software Centre before installing from
source.

Source
======

Prequisites
-----------

Install *CMake* using ``apt-get``::

  sudo apt-get install cmake libgnutls-dev uuid-dev

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
  cmake .
  make
  sudo make install


.. _`Taskwarrior Download`: http://taskwarrior.org/projects/taskwarrior/wiki/Download

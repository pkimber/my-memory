System
******

.. highlight:: bash

Also see :doc:`./apps/inxi`...

Hard Disk
=========

Free Space
----------

To see free disk space::

  df -H

Partitions
----------

To list all available partitions::

  fdisk -l

Memory
======

::

  free -m

  cat /proc/meminfo

To `find out what process is using all the RAM`_::

  ps -e -o pid,vsz,comm= | sort -n -k 2

Processor
=========

::

  cat /proc/cpuinfo


.. _`find out what process is using all the RAM`: http://superuser.com/questions/398862/linux-find-out-what-process-is-using-all-the-ram

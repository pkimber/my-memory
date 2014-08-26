df
**

.. highlight:: bash

Human Readable
==============

df - report file system disk space usage::

  df -h

Where has my space gone?
========================

From `Where has all my disk space gone?`_

To find out where your space has gone... start by checking in the root folder::

  du -smh /*
  du -smh /home/*
  du -smh /home/patrick/*

Here we are working our way down through the largest folder...


.. _`Where has all my disk space gone?`: http://rimuhostine.com/knowledgebase/linux/misc/where-has-all-my-disk-space-gone

tar
***

.. highlight:: bash

Create
======

::

  tar -cvzf archive.tar.gz .

I think ``.tar.gz`` and ``.tgz`` both describe a Gzip_ file.  To compress a
folder::

  tar cvzf svn-3281.tgz svn-3281/

Extract
=======

tar
---

To extract the archive ``filename.tar`` into the current directory::

  tar xf filename.tar

bz2
---

To extract the archive ``filename.tar.bz2`` into the current directory::

  tar xjf filename.tar.bz2

gz
--

A ``gz`` file is a not actually a ``tar`` format.  Use ``gunzip``::

  gunzip dump.1.gz

tar.gz
------

To extract the archive ``filename.tar.gz`` into the current directory::

  tar xzf filename.tar.gz

To strip the initial folder::

  tar --strip-components=1 -xzf filename.tar.gz

List
====

::

  tar -tvf sample.tar
  tar -ztvf sample.tar.gz
  tar -jtvf sample.tar.bz2


.. _Gzip: http://en.wikipedia.org/wiki/Gzip

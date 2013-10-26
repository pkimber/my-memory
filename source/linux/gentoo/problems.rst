Problems
********

Conversation with Steve 29th August 2005
========================================

See ``revdep-rebuild``:
http://www.gentoo.org/doc/en/gentoolkit.xml

Gentoo's Reverse Dependency rebuilder. It will scan your installed ebuilds to
find packages that have become broken as a result of an upgrade of a package
they depend on.


23rd December 2005
==================

::

  Calculating world dependencies
  !!! Problems have been detected with your world file
  !!! Please run emaint --check world

Solved the problem by running the following command:

::

  emaint --fix world

openmotif
=========

2005-12-27

::

  [blocks B     ] =x11-libs/openmotif-2.2.3-r3 (is blocking x11-libs/motif-config- 0.9)

http://forums.gentoo.org/viewtopic-t-416112-highlight-openmotif+blocking+motifconfig.html

::

  emerge -C openmotif
  emerge openmotif

11/05/2007 17:59
================

::

  >>> Emerging (1 of 1) sys-kernel/gentoo-sources-2.6.20-r8 to /
  !!! Digest verification failed:
  !!! /usr/portage/sys-kernel/gentoo-sources/gentoo-sources-2.6.21.ebuild
  !!! Reason: Filesize does not match recorded size
  !!! Got: 742
  !!! Expected: 731

To solve the problem:

::

  emerge --sync



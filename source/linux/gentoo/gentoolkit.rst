Gentoolkit
**********

Gentoolkit contains a whole bunch of useful tools to help manage your packages
and keep track of what is going on in your system.

Links
=====

http://www.gentoo.org/doc/en/gentoolkit.xml

revdep-rebuild
==============

Gentoo's Reverse Dependency rebuilder.  It will scan your installed ebuilds to
find packages that have become broken as a result of an upgrade of a package
they depend on.

To run in pretend mode:

::

  revdep-rebuild -p

Note:

- To get ``revdep-rebuild`` to re-evaluate reverse dependencies delete the
  temporary files - as suggested when the command fails:

  ::

    rm /root/.revdep-rebuild*.?_*


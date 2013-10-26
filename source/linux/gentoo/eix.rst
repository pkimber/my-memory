eix
***

Links
=====

http://gentoo-portage.com/app-portage/eix

Description
===========

``eix`` is a tool for the Gentoo Linux portage system.  It uses indexing to
allow quick searches through the package tree.

Install
=======

::

  emerge -av eix

Setup
=====

Create the database cache of Portage settings:

::

  update-eix

Usage
=====

``eix`` *package name* e.g.

::

  eix apr-util

Sample
======

::

  weezy ~ # eix apr-util
  [I] dev-libs/apr-util
       Available versions:
          (0)     0.9.12 0.9.12-r1 [M]~0.9.13
          (1)     1.2.8 ~1.2.8-r1
          {berkdb gdbm ldap mysql postgres sqlite sqlite3}
       Installed versions:  0.9.12-r1(17:08:43 07/13/07)(-berkdb gdbm -ldap)
                            1.2.8(1)(17:11:32 07/13/07)(-berkdb gdbm -ldap -postgres -sqlite -sqlite3)
       Homepage:            http://apr.apache.org/
       Description:         Apache Portable Runtime Library


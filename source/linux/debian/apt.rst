apt
***

Links
=====

- http://aptoncd.sourceforge.net/index.html

Check
=====

::

  apt-get check

Setup
=====

Edit::

  /etc/apt/sources.list

My ``sources.list`` contains::

  #
  # deb cdrom:[Debian GNU/Linux 4.0 r0 _Etch_ - Official i386 NETINST Binary-1 20070407-11:29]/ etch contrib main
  # deb cdrom:[Debian GNU/Linux 4.0 r0 _Etch_ - Official i386 NETINST Binary-1 20070407-11:29]/ etch contrib main

  deb http://security.debian.org/ etch/updates main contrib
  deb-src http://security.debian.org/ etch/updates main contrib

  deb http://ftp2.de.debian.org/debian/ etch main
  deb-src http://ftp2.de.debian.org/debian/ etch main

**Note**: I have commented out the ``cdrom`` section.

To make sure ``apt-get`` knows about these sources:

::

  apt-get update

Install
=======

::

  apt-get install application-name

To install a specific version::



Reinstall
---------

::

  apt-get --reinstall install application-name

Uninstall
---------

::

  apt-get remove application-name

Packages
========

To list all installed packages:

::

  dpkg -l | grep vim
  # or...
  dpkg --get-selections|cut -f1

Search
======

To search the apt cache::

  apt-cache search application-name


To find which PPA a package belongs to::

  apt-cache policy application-name

To see the available versions::

  apt-cache show application-name | grep Version

Upgrade
=======

`Upgrading your Distribution`_

Distribution
------------

To upgrade your distribution to the newest release, as well as all the
packages available:

::

  apt-get update
  apt-get dist-upgrade

Packages
--------

If you want to simply upgrade the packages you have installed for your
current distro:

::

  apt-get update
  apt-get upgrade

Version
=======

::

  apt-cache policy postgresql
  apt-cache show postgresql
  apt-cache showpkg nginx

... ``policy`` will show if the package is installed or not.
... or install the ``aptitude`` application...


.. _`Upgrading your Distribution`: http://wiki.linuxhelp.net/index.php/Apt-get_Guide#Upgrading_your_System
.. _`Which PPA a package belongs to`: http://www.webupd9.org/2012/11/how-to-find-out-to-which-ppa-repository.html

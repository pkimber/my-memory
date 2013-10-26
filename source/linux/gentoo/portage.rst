portage
*******

Links
=====

`Powerful Portage`_

Clean
=====

eclean_ is small tool to remove obsolete portage files:

::

  eclean distfiles

Update
======

Message after ``emerge sync``

::

  * An update to portage is available. It is _highly_ recommended
  * that you update portage now, before any other packages are updated.
  * Please do so and then update ALL of your configuration files.

See http://gentoo-wiki.com/TIP_Upgrade_Portage

I ran the following commands:

::

  cd /etc/
  mv make.profile /home/patrick/temp/
  ln -s /usr/portage/profiles/default-linux/x86/2005.1 make.profile
  emerge -uavD system

History
=======

11-01-2006
----------

::

   * An update to portage is available.

The normal **emerge** search showed there was a new version of portage
available:

::

  emerge -s portage
  emerge -n sys-apps/portage
  cd /etc/
  rm make.profile
  ln -s /usr/portage/profiles/default-linux/x86/2006.0/ make.profile
  emerge -uavD system

It looks to me as if a new version is when there is a new folder in:

::

  /usr/portage/profiles/default-linux/x86/

In this case the new folder was ``2006.0``.  So we are effectively linking in a
new ``make.profile``.

http://www.gentoo.org/doc/en/gentoo-upgrading.xml




.. _`Powerful Portage`: http://www.linux-mag.com/id/3130/
.. _eclean: http://gentoo-wiki.com/HOWTO_Maintain_Gentoo_-_%22Best_Practices%22#eclean


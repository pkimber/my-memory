InitScript
**********

Links
=====

`Gentoo Linux InitScripts`_

Example
=======

I have set-up a very simple init script for Continuum:

Created a new shell script ``/etc/init.d/continuum``:

::

  #!/sbin/runscript
  # Copyright 1999-2004 Gentoo Foundation
  # Distributed under the terms of the GNU General Public License v2

  start() {
          ebegin "Starting Continuum"
          start-stop-daemon --start --quiet \
                  --chuid integration \
                  --env JAVA_HOME="/etc/java-config-2/current-system-vm/" \
                  --exec /usr/local/bin/continuum-1.0.3/bin/linux/run.sh -- start
          sleep 5
          eend $?
  }

  stop()  {
          ebegin "Stopping Continuum"
          start-stop-daemon --start --quiet \
                  --chuid integration \
                  --exec /usr/local/bin/continuum-1.0.3/bin/linux/run.sh -- stop
          sleep 5
          eend $?
  }

The options on this script are fairly simple:

=======================  ===============================================================
``start-stop-daemon``    Is the special Gentoo script.  Have a look at the ``man`` page.
``--chuid integration``  Run the script as the ``integration`` user.
``--exec``               Execute this command.
``-- stop``              Any parameters after the ``--`` are passed to the application
=======================  ===============================================================

Change the permissions on the script:

::

  chmod 755 /etc/init.d/continuum

Then add Continuum to the Gentoo startup:

::

  rc-update add continuum default

The actual script can be viewed in Subversion:
https://weezy/svn/backup/linux-config/weezy/etc/init.d/continuum



.. _`Gentoo Linux InitScripts`: http://www.gentoo.org/doc/en/handbook/handbook-x86.xml?part=2&chap=4


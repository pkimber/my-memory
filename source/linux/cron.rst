cron
****

.. warning:: If a cron script in ``/etc/cron.d`` has a ``.`` in the file name,
             then it will not run!
             ref `configs with dots in file name not working in /etc/cron.d`_

Links
=====

- `Newbie: Intro to cron`_
- `Discover the Power of Cron Jobs`_ copy of article `by Scott Spear`_.
- `redhat - Configuring a Cron Task`_
- `Linux Crontab: 15 Awesome Cron Job Examples`_

Configuration (System)
======================

::

  /etc/crontab

email
=====

To email the output of your cron job to a specific user, add the following
at the top of your cron script::

  MAILTO=patrick@mycompany.com

To stop emails::

  MAILTO=

...or pipe the output of your command to a file (see *Logging* below)...

Logging
=======

To write output to a log file, add the following after your command::

  >> /home/my-user-name/logs/update_index.log 2>&1

Note: This re-directs ``stdout`` AND ``stderr`` which isn't much good if you
are doing a SQL dump to ``stdout``.  In this case, try something like this::

  mysqldump --host=localhost --user=patrick --password=mypassword redmine > $DUMP_FILE 2>> $LOG_FILE

System
======

System cron tasks are configured from the ``/etc/crontab`` file.  The
``/etc/crontab`` file is set-up to run commands hourly, daily, monthly and
weekly::

  /etc/crontab

To set-up a task to run at these times, just add your shell script to the
relevant folder::

  /etc/cron.daily
  /etc/cron.hourly
  /etc/cron.monthly
  /etc/cron.weekly

.. note:: Check your shell script file name does **NOT** have an extension.
          For details, see `run-parts doesn't run script with sh extension`_

.. note:: To run a command at a different time, setup your file in the
          ``/etc/cron.d`` folder.  Note: The files in this folder are in
          ``crontab`` format with the user inserted before the command (see
          *Sample*, *System* below):

User
====

.. tip:: It is probably less confusing to use the global cron system for jobs
         on a server.  It Will be easier to work out which processes are being
         run...

To view your own ``crontab`` file::

  crontab -l

To edit your own ``crontab`` file::

  crontab -e

To edit the ``crontab`` file of another user::

  crontab -e -u username

Sample
======

System
------

::

  SHELL=/bin/bash
  PATH=/sbin:/bin:/usr/sbin:/usr/bin
  MAILTO=me@mail.com
  HOME=/home/patrick/

  # minute  (0-59),
  # |       hour (0-23),
  # |       |       day of the month (1-31),
  # |       |       |       month of the year (1-12),
  # |       |       |       |       day of the week (0-6 with 0=Sunday).
  # |       |       |       |       |       user        commands
    0       0       *       *       *       myusername  /usr/bin/python2.4 /home/USERNAME/scripts/svn-hot-backup.py --archive-type=zip --num-backups=10 /home/USERNAME/svn/REPOSITORY_NAME/ /home/USERNAME/backup/svn/

User
----

A nice looking cron script layout (from the link below)::

  MAILTO=me@mail.com
  # minute (0-59),
  # |       hour (0-23),
  # |       |       day of the month (1-31),
  # |       |       |       month of the year (1-12),
  # |       |       |       |       day of the week (0-6 with 0=Sunday).
  # |       |       |       |       |       commands
    0       0       *       *       *       /usr/bin/python2.4 /home/USERNAME/scripts/svn-hot-backup.py --archive-type=zip --num-backups=10 /home/USERNAME/svn/REPOSITORY_NAME/ /home/USERNAME/backup/svn/

`Backing up your Subversion (SVN) repository on Dreamhost with cron`_

.. note:: This sample does not include the ``user`` parameter.  The ``user``
          parameter **is** required for scripts in ``cron.d``.

Working Hours
-------------

Cron Job every weekday during working hours.  This example checks the status
of the database every weekday (i.e. excluding Sat and Sun) during the
working hours 9 a.m – 6 p.m::

  00 09-18 * * 1-5 /home/ramesh/bin/check-db-status

::

  00     0th Minute (Top of the hour)
  09-18  9am, 10am, 11am, 12am, 1pm, 2pm, 3pm, 4pm, 5pm, 6pm
  *      Every day
  *      Every month
  1-5    Mon, Tue, Wed, Thu and Fri (Every Weekday).


.. _`Backing up your Subversion (SVN) repository on Dreamhost with cron`: http://blog.localkinegrinds.com/2008/02/10/backing-up-your-subversion-svn-repository-on-dreamhost-with-cron/
.. _`by Scott Spear`: http://www.webmastersbydesign.com/2008/06/14/discover-the-power-of-cron-jobs/
.. _`configs with dots in file name not working in /etc/cron.d`: https://bugs.launchpad.net/ubuntu/+source/cron/+bug/706565
.. _`Discover the Power of Cron Jobs`: ../../misc/howto/linux/discover-the-power-of-cron-jobs.htm
.. _`Linux Crontab: 15 Awesome Cron Job Examples`: http://www.thegeekstuff.com/2009/06/15-practical-crontab-examples/
.. _`Newbie: Intro to cron`: http://www.unixgeeks.org/security/newbie/unix/cron-1.html
.. _`redhat - Configuring a Cron Task`: http://www.redhat.com/docs/manuals/linux/RHL-7.2-Manual/custom-guide/cron-task.html
.. _`run-parts doesn't run script with sh extension`: https://bugs.launchpad.net/ubuntu/+source/debianutils/+bug/38022

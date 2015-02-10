Install
*******

apt
===

Follow `these notes to setup the apt`, :doc:`apt`, ``sources.list`` file.

ssh
===

::

  apt-get install openssh-server

bash
====

::

  aptitude install bash-completion
  echo ". /etc/bash_completion" >> .bashrc

ntp
===

::

  apt-get install ntp ntpdate

**Note**: On Ubuntu server, ``sudo apt-get install ntp``.
https://help.ubuntu.com/10.04/serverguide/C/serverguide.pdf

Edit:

::

  vim /etc/default/ntpdate

Change the value of ``NTPSERVERS`` so it reads:

::

  NTPSERVERS="tock.eclipse.co.uk"

Restart ntp by running

::

  /etc/init.d/ntp restart

The clock should be synchronised daily:

::

  vim /etc/cron.daily/ntpsync.sh

Add the following to the file:

::

  ntpdate ntp.ubuntu.com

The file must also be executable:

::

  chmod 755 /etc/cron.daily/ntpsync.sh

motd
====

To clear out the rubbish from the *message of the day* file:

::

  echo "" > /etc/motd

inittab
=======

To stop the server shutting down when a user presses *Ctrl*, *Alt*,
*Delete*, edit:

::

  vim /etc/inittab

And comment out this line:

::

  # What to do when CTRL-ALT-DEL is pressed.
  #ca:12345:ctrlaltdel:/sbin/shutdown -t1 -a -r now

file
====

::

  apt-get install file

links2
======

If you want, you can use the links web browser:

::

  apt-get install links2

Java
====

Follow the `Debian, Java install notes`, :doc:`java`.

make
====

::

  apt-get install make
  apt-get install build-essential

Maven
=====

To extract the Maven ``maven-2.0.4-bin.tar.bz2`` file you will need to install
``bzip2``:

::

  apt-get install bzip2

Subversion
==========

::

  apt-get install subversion

python
======

::

  apt-get install python

Note: python 2.5 is the default version in Debian 5.

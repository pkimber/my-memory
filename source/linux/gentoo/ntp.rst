NTP
***

Links
=====

http://gentoo-wiki.com/HOWTO_NTP

Install
=======

::

  emerge -av ntp

Edit:

::

  /etc/conf.d/ntp-client

And add the following line (for the UK):

::

  NTPCLIENT_OPTS="-b -u ntp.demon.co.uk ntp2b.mcc.ac.uk ntp2c.mcc.ac.uk"

Start the service and add to the default run level:

::

  /etc/init.d/ntp-client start
  rc-update add ntp-client default


Synergy
*******

Synergy is Free and Open Source Software that lets you easily share your mouse
and keyboard between multiple computers.

Links
=====

- http://synergy-foss.org/
- http://code.google.com/p/quicksynergy/

Install
=======

If using a Linux server and a Windows client (nice and simple), start by
installing the Windows client:

Windows
-------

Download the software from
http://synergy-foss.org/pm/projects/synergy/tabs/download

- If using a Linux server and a Windows client, then you only need to select
  the *Use another computers shared keyboard and mouse (client)* and set the
  *other computers host name* to the IP address of the server.
- Get the name of the Windows computer by running the ``hostname`` command.

Linux
-----

- Then install ``quicksynergy``.  We did this using the *Ubuntu Software
  Centre*.  This will automatically install *Synergy*.
- *Applications*, *Accessories*, *QuickSynergy*.
- In the *Share* tab, put the name of the Windows computer (see *Windows*
  section above into the correct position.
- Click *Execute*...

For notes on the Ubuntu Firewall, :doc:`distro/ubuntu/firewall`

WIP
===

March 2015
----------

::

  # linux
  synergys -f --config ~/.synergy.conf

  # windows
  telnet 192.168.1.247 24800

I switched off the Firewall and it still doesn’t connect::

  CD c:\Program Files\Synergy
  synergyc.exe -f -d DEBUG2 192.168.1.247

06/07/2015
==========

Had similar issues to March (see above).  Finally solved the problem, by
opening the firewall port::

  ufw allow 24800/tcp

To see the firewall status::

  ufw status

To view the firewall log (where I found the problem)::

  tail -f /var/log/ufw.log

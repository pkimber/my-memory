Upgrade
*******

Links
=====

http://trac.edgewall.org/wiki/TracUpgrade

Install
=======

Download and install the new version of Trac (on Windows Vista "*Run as
administrator*").

Upgrade
=======

If you had the ``webadmin`` plugin installed, you need to uninstall it as it is
now part of the Trac code base (check the ``plugins`` folder).

Upgrade the database (if you are using PostgreSQL, see link above for more
information):

::

  trac-admin my-test-trac upgrade

Update the documentation:

::

  trac-admin my-test-trac wiki upgrade

Issues
======

DistributionNotFound
--------------------

::

  File "c:\tools\python25\lib\site-packages\pkg_resources.py", line 524, in resolve
      raise DistributionNotFound(req)  # XXX put more info here
  pkg_resources.DistributionNotFound: Trac==0.11

Uninstall and re-install ``Trac-0.11rc1.win32.exe``:

  http://www.gossamer-threads.com/lists/trac/users/36136

Install Genshi:

  http://pacopablo.com/irclogs/2008/06/22

::

  easy_install Genshi

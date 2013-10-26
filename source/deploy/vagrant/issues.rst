Issues
******

From `Install and configure Vagrant on Ubuntu Oneiric 11.10`_:

::

  Invalid gemspec in [/var/lib/gems/1.8/specifications/json-1.5.4.gemspec]:
  invalid date format in specification: "2011-08-31 00:00:00.000000000Z"

Edit ``/var/lib/gems/1.8/specifications/json-1.5.4.gemspec`` and remove
``00:00:00.000000000Z`` on the ``s.date`` line.


.. _`Install and configure Vagrant on Ubuntu Oneiric 11.10`: http://cisight.com/install-and-configure-vagrant-on-ubuntu-oneiric-11-10/

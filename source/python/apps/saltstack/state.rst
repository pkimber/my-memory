State Management
****************

Similar to Puppet and Chef.  Declarative states - declare how the system is
set-up.

Configuration
=============

Master
------

::

  vim /etc/salt/master
  # uncomment the following lines:
  # file_roots:
  #   base:
  #     - /srv/salt
  restart salt-master

  # or:
  sudo /etc/init.d/salt-master restart

Check out the ``sls`` and pillar files from your repository.

To apply the state to all minions::

  salt '*' state.highstate

  # with less output
  salt 'kb-c' state.highstate  --state-verbose=False

States
======

user
----

To create a password hash (where ``<password>`` is your password)::

  mkpasswd -m sha-512 <password>

The following gist_ shows another way to create password hashes::

  python -c "import crypt; print crypt.crypt('password', '\$6\$SALTsalt\$')"


.. _gist: https://gist.github.com/UtahDave/3785738

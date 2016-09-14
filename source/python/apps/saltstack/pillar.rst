Pillar
******

::

  vim /etc/salt/master

Uncomment the following::

  pillar_roots:
    base:
      - /srv/pillar

Create the ``top`` file::

  vim /srv/pillar/top.sls

e.g::

  base:
    '*':
      - packages

Password
========

See :doc:`state`

top.sls
=======

To add a configuration section for a list of servers::

  'folland,vickers':
    - match: list

.. note:: Our fabric task does not know how to read a list, so this won't work
          for now.  We will need to update ``_load`` in ``lib/siteinfo.py``.

View
====

To view the pillar data for a minion (from the master)::

   salt '*' pillar.data

.. note::

  For this to work, the minion must be connected to the master and be able to
  respond positively to a ``ping``.  Pillar data is based off of variables etc,
  so the server must be accessible to the master.

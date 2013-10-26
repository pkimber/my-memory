Pillar
******

::

  vim /etc/salt/master

Uncomment the following:

::

  pillar_roots:
    base:
      - /srv/pillar

Create the ``top`` file:

::

  vim /srv/pillar/top.sls

e.g:

::

  base:
    '*':
      - packages

Password
========

See :doc:`state`

View
====

To view the pillar data for a minion (from the master):

::

   salt '*' pillar.data

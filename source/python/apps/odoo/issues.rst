Issues
******

.. highlight:: bash

Cannot login
============

The master password might by in the configuration file e.g::

  /etc/odoo/odoo-server.conf

Service will not run
====================

Check the init script can read the Odoo config file.  Test this by running
``odoo`` using the config file e.g::

  ./odoo.py -c /etc/odoo/odoo-server.conf

Check the init script can write to the log file e.g. from
`How to Install OpenERP/Odoo 9 on Ubuntu Server 14.04 LTS`_ where the
``/etc/init.d/odoo-server`` script says::

  LOGFILE=/var/log/odoo/odoo-server.log

Then the permissions can be set-up as follows::

  sudo mkdir /var/log/odoo
  touch /var/log/odoo/odoo-server.log
  sudo chmod 755 /var/log/odoo/odoo-server.log
  sudo chown odoo:root -R /var/log/odoo/


.. _`How to Install OpenERP/Odoo 9 on Ubuntu Server 14.04 LTS`: http://openies.com/install-openerp-odoo-9-on-ubuntu-server-14-04-lts/

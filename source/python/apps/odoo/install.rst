Install
*******

.. note:: I already have Postgres installed on my laptop.

Following `Installing Odoo`_ (*Source Install*) and
`How to Install OpenERP/Odoo 9 on Ubuntu Server 14.04 LTS`_

Get the source code (without history)::

  cd ~/repo/src/
  # will install into the 'odoo' folder
  git clone https://github.com/odoo/odoo.git --depth 1 --branch 9.0 --single-branch

Create a virtual environment and install the dependencies::

  virtualenv venv-odoo
  source venv-odoo/bin/activate
  pip install --upgrade pip

  pip install -r requirements.txt

System dependencies::

  # fatal error: lber.h: No such file or directory
  sudo apt-get install libsasl2-dev python-dev libldap2-dev libssl-dev

Install node and npm, :doc:`../../../javascript/node/install`

Install node dependencies::

  sudo npm install -g less less-plugin-clean-css

Run
===

::

  ./odoo.py --addons-path=addons

Browse to http://localhost:8069/, create a database and set the password.  The
default user name (email) will be ``admin``.

.. tip:: The password is the one you set-up when creating the database
         (or ``admin`` if Odoo set-up the database for you).


.. _`Installing Odoo`: https://www.odoo.com/documentation/9.0/setup/install.html
.. _`How to Install OpenERP/Odoo 9 on Ubuntu Server 14.04 LTS`: http://openies.com/install-openerp-odoo-9-on-ubuntu-server-14-04-lts/

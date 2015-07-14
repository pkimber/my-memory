Install Modules
***************

.. highlight:: bash

Links
=====

- :doc:`../dev/version-2.4`

lxml
====

::

  apt-get install libxslt1-dev

::

  pip install lxml

mxDateTime
==========

Install ``mxDateTime`` manually
(`stackoverflow, Can’t install egenix-mx-base on Django production VPS`_)
(can't find a way to install this using ``easy_install`` or ``pip``):

Make sure the python development libraries are installed::

  apt-get install python-dev

Activate your python virtual environment...

Build and install::

  cd ~/Downloads/python/
  wget http://downloads.egenix.com/python/egenix-mx-base-3.1.3.tar.gz
  cd ~/src
  tar -xzvf ~/Downloads/python/egenix-mx-base-3.1.3.tar.gz
  cd egenix-mx-base-3.1.3
  python setup.py install

MySQL
=====

...for CentOS::

  yum install mysql-devel

...for Debian::

  apt-get install libmysqlclient15-dev

...then install the module::

  pip install MySQL-python==1.2.3

PIL - Python Imaging Library
============================

:doc:`../modules/pillow`

Pychart
=======

::

  pip install -e bzr+http://download.gna.org/pychart/bzr-archive#egg=pychart

pyodbc
======

::

  sudo apt-get install pyodbc
  sudo apt-get install unixodbc-dev
  sudo apt-get install g++

::

  pip install pyodbc

pysqlite/pysqlite2
==================

Requires the python development kit and GCC::

  sudo aptitude install libsqlite3-dev
  pip install pysqlite

psycopg2
========

Install ``mxDateTime`` (see above).

Install the PostgreSQL development libraries::

  aptitude install libpq-dev

Install ``psycopg2``::

  pip install psycopg2

ReportLab
=========

Install python development libraries::

  apt-get install python-dev

.. - Install ``lxml`` (also see ``lxml`` above)...
..
..   ::
..
..     pip install lxml
..
.. - Install ``psycopg2`` (see above).

Install ReportLab::

  pip install reportlab==2.5

Twisted
=======

Install the python development libraries::

  sudo apt-get install python-dev

Then install twisted::

  pip install twisted


.. _`How to compile and install python-libxml2 and libxslt into a virtualenv.`: http://www.thomasdesvenain.fr/
.. _`Compile and install libxml2 python`: http://www.upfrontsystems.co.za/Members/hedley/my-random-musings/compile-and-install-libxml2-python
.. _`How to compile and install python-libxml2 and libxslt into a virtualenv.`: http://www.thomasdesvenain.fr/
.. _`stackoverflow, Can’t install egenix-mx-base on Django production VPS`: http://stackoverflow.com/questions/2649420/cant-install-egenix-mx-base-on-django-production-vps

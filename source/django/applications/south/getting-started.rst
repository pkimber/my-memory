Getting Started
***************

Links
=====

- http://south.aeracode.org/

Install
=======

::

  pip install south

Initial
=======

If you are using South on an application for the first time, you have two
choices:

Convert an existing application (where the database already contains live data
etc): :doc:`converting`

Starting from scratch i.e. South will create the database for you (in the same
way as ``syncdb`` would):

Add ``south`` to ``INSTALLED_APPS``:

::

  INSTALLED_APPS = (
      'django.contrib.auth',
      'django.contrib.contenttypes',
      'django.contrib.sessions',
      'django.contrib.sites',
      'south',
  )

Run ``syncdb`` to create the migration history table:

::

  django-admin.py syncdb --noinput

For each application which you want to convert to South:

::

  django-admin.py schemamigration app_name --initial

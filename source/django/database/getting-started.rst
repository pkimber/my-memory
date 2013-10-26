Database
********

Settings
========

Database settings in ``settings.py``.

Sample
======

PostgreSQL
----------

Install ``psycopg2``, :doc:`../../python/database/postgresql`

Update ``settings.py``:

**postgresql**:

::

  DATABASE_ENGINE = 'postgresql_psycopg2'
  DATABASE_NAME = 'tractime'
  DATABASE_USER = 'patrick'
  DATABASE_PASSWORD = 'password'
  DATABASE_HOST = 'storagebox'
  DATABASE_PORT = ''

**sqlite**:

::

  DATABASE_ENGINE = 'sqlite3'
  DATABASE_NAME = 'C:/repository/sqlite/mysite.db'
  DATABASE_USER = ''
  DATABASE_PASSWORD = ''
  DATABASE_HOST = ''
  DATABASE_PORT = ''

Test
====

To test the database:

::

  python manage.py shell
  >>> from django.db import connection
  >>> cursor = connection.cursor()

If nothing happens, then your database is configured properly.

Model
=====

Django automatically gives every model an integer primary key field called
``id``.

Each Django model is required to have a single-column primary key.

See :doc:`../model/fields`

Create
------

Create your model in ``app-name/models.py``:

::

  from django.db import models

  class Publisher(models.Model):
      name = models.CharField(max_length=30)
      address = models.CharField(max_length=50)
      website = models.URLField()

      def __unicode__(self):
          return '%s %s' % (self.name, self.address)

      class Meta:
          ordering = ['name']
          verbose_name = 'Publisher'
          verbose_name_plural = 'Publishers'

**Note**:

- Create a ``__unicode__`` method for each model.  Django uses the output
  of ``__unicode__()`` in several places when it needs to display objects.
- ``ordering`` specifies the default order for the table.
- ``verbose_name`` and ``verbose_name_plural`` are human readable
  singular and plural names (both are optional).
- Use the ``help_text`` parameter on a field to set the help text on the
  admin form.

Foreign Key
-----------

See :doc:`../model/fields`

Validate
--------

::

  python manage.py validate

**Note**: Make sure the application has been added to ``settings.py`` (See
:doc:`../getting-started`, create, application)...

SQL
---

::

  python manage.py sqlall <application name>

Create
------

::

  python manage.py syncdb

**Note**: Note that ``syncdb`` does not sync changes in models or deletions of
models.

To stop any prompts:

::

  django-admin.py syncdb --noinput

Delete
------

**NOTE**: This will **IRREVERSIBLY DESTROY** data:

::

  python manage.py reset <application name>

Note: To delete the tables for an application... run this command which will
print the SQL statements required to drop the tables:

::

  python manage.py sqlclear <application name>

...then run the generated SQL on your database.

Interactive Prompt
------------------

See :doc:`../model/query-set`.

Database Shell
--------------

Will probably work better in Linux:

::

  python manage.py dbshell

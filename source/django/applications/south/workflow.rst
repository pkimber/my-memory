Workflow
********

.. highlight:: bash

.. attention:: South has been replaced with Django Migrations.
               For more information,
               https://www.pkimber.net/open/dev-django-migrations.html

Workflow - Standard
===================

Do the initial migration (see :doc:`getting-started`)...

Change your model!

Create the new migration using the ``auto`` feature::

  django-admin.py schemamigration appname --auto

Apply the migration::

  django-admin.py migrate appname

List current migrations::

  django-admin.py migrate --list

Workflow - Data Migration
==========================

Firstly, we need to create a skeleton data migration::

  ./manage.py datamigration appname update_some_data

If you open up the file, you'll see that South has made the shell of a
migration; the models definitions are there, the ``forwards()`` and
``backwards()`` functions are there, but there's no code in either.  Write some
code for the ``forwards`` function.

If the ``backwards`` function is irreversible, then add the following:

.. code-block:: python

  def backwards(self, orm):
      raise RuntimeError("Cannot reverse this migration.")

Note: Use ``orm.ModelName`` to access the models - this gives us the version of
the model from when this migration was created, so if we want to run the
migration in future, it won’t get a completely different, newer, model e.g:

.. code-block:: python

  orm.User.objects.all()

Workflow - Manual Migration
===========================

To create a manual migration where South cannot auto-detect the changes you
want to make:

Create an empty migration script::

  ./manage.py schemamigration myshop rename_some_tables --empty

In this example, South will create a script with the migration number
pre-pended to the name e.g: ``0003_rename_some_tables.py``.

Edit the script e.g:

.. code-block:: python

  class Migration(SchemaMigration):

      def forwards(self, orm):
          db.rename_table('product_productvariation', 'configurable_productvariation')

      def backwards(self, orm):
          db.rename_table('configurable_productvariation', 'product_productvariation')

      models = {
          ...

Note: `South has a nice database API for doing stuff like this...`_

Apply the migration as normal (see below).

Workflow - Reset/Collapse
=========================

(Probably worth reading this article too: `Resetting Your South Migrations`_).

`Best way to clear and reset Django-South migration history`_:

Reset your migration history for the app up to the last checked in migration
(the one before the group of migrations you want to collapse)::

  ./manage.py migrate appname --fake MIGRATION_NUMBER

``--fake`` means don't touch the application's DB. Just remove all migration
rows ``from south_migrationhistory`` up to that migration number.

Remove all the recent migration files (up to that number)::

  rm appname/migrations/ALL_MIGRATIONS_AFTER_THE MIGRATION_NUMBER

Recreate the "next" migration to match your current DB state::

  ./manage.py schemamigration appname --auto

Apply the migration to create the DB objects::

  ./manage.py migrate appname


.. _`Best way to clear and reset Django-South migration history`: http://blog.picante.co.nz/post/Best-way-to-clear-and-reset-Django-South-migration-history/
.. _`Resetting Your South Migrations`: http://lincolnloop.com/blog/2011/jun/20/resetting-your-south-migrations/
.. _`South has a nice database API for doing stuff like this...`: http://south.aeracode.org/docs/databaseapi.html

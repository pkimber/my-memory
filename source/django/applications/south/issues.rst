Issues
******

.. highlight:: python

Dependency
==========

If you need a migration from another app to run first::

  class Migration(SchemaMigration):

      depends_on = (
          ("pay", "0001_initial"),
      )

      def forwards(self, orm):

Ghost
=====

.. warning:: Be very careful before using the solution below on a production
             database.  Something has probably gone wrong!

If you are using a development database and you have been deleting and
re-creating migrations, you might get the following error::

  ! These migrations are in the database but not on disk:
  <pay: 0003_auto__add_field_product_bundle>
  ! I'm not trusting myself; either fix this yourself by fiddling
  ! with the south_migrationhistory table, or pass --delete-ghost-migrations
  ! to South to have it delete ALL of these records (this may not be good).

The following message solved the problem::

  django-admin.py migrate --delete-ghost-migrations

.. warning:: Read the warning above before running this command!

`South - Settings`_...
======================

If your tables are not all getting created when using the Django test
runner, then you can put the following in ``settings.py``.  South's test
runner integration will create the test database using ``syncdb`` rather
than with migrations::

  SOUTH_TESTS_MIGRATE=False


.. _`South - Settings`: http://south.aeracode.org/docs/settings.html#south-tests-migrate

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


`South - Settings`_...
======================

If your tables are not all getting created when using the Django test
runner, then you can put the following in ``settings.py``.  South's test
runner integration will create the test database using ``syncdb`` rather
than with migrations::

  SOUTH_TESTS_MIGRATE=False


.. _`South - Settings`: http://south.aeracode.org/docs/settings.html#south-tests-migrate


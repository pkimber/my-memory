Issues
******

`South - Settings`_...

If your tables are not all getting created when using the Django test
runner, then you can put the following in ``settings.py``.  South's test
runner integration will create the test database using ``syncdb`` rather
than with migrations:

::

  SOUTH_TESTS_MIGRATE=False


.. _`South - Settings`: http://south.aeracode.org/docs/settings.html#south-tests-migrate


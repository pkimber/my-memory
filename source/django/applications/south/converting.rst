Converting an Application
*************************

.. attention:: South has been replaced with Django Migrations.
               For more information,
               https://www.pkimber.net/open/dev-django.html#migrations

Links
=====

- `South Documentation - Converting an App`_.

Converting an existing application
==================================

Note:  I am not too sure about this yet... still testing it out.

- Follow the :doc:`getting-started` instructions for each application.
- When you deploy your code to another workstation (or server), you will have
  to run the following command:

  ::

    /manage.py migrate myapp 0001 --fake

  Note: ``--fake`` means don't touch the application's DB. Just remove all
  migration rows from ``south_migrationhistory`` up to that migration number.


.. _`South Documentation - Converting an App`: http://south.aeracode.org/docs/convertinganapp.html

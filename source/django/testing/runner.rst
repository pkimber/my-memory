Test Runner
***********

.. highlight:: python

To set-up your own test runner (perhaps to limit the number of applications
tested by default):

Create a new module e.g::

  mkdir mytests
  touch mytests/__init__.py

Inside the module, create a new file which will contain the test runner e.g::

  mytests/test_runner.py

Inside the ``test_runner.py`` file, create a function for running your unit
tests e.g::

  from django.test.simple import run_tests

  def run_my_tests(test_labels, verbosity=1, interactive=True, extra_tests=[]):
      test_labels = test_labels + (
          'regcode',
          'optionapp',
          )
      run_tests(test_labels, verbosity, interactive, extra_tests)

This function simply sets up a list of applications which we want to test
and calls the Django test runner.

In your ``settings.py`` file, set the test runner e.g::

  TEST_RUNNER = 'mytests.test_runner.run_my_tests'

The Django ``test`` command will now run only the tests in the list::

  python manage.py test

Issues
======

Django tests will not run unless there is a ``models.py`` file in the
application folder::

  django.core.exceptions.ImproperlyConfigured: App with label testapp could not be found

To solve the problem, create a ``models.py`` file in the application
folder e.g::

  touch testapp/models.py

For more information see http://code.djangoproject.com/ticket/3310.

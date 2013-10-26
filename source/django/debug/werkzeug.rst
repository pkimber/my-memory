Werkzeug
********

Links
=====

- http://code.google.com/p/django-command-extensions/
- `django :: Debugging nirvana with werkzeug`_
- `Create a default django development environment on python virtualenv`_
- `RunServerPlus`_

Install
=======

::

  pip install werkzeug
  pip install django-extensions

Configuration
=============

Add the following to ``INSTALLED_APPS`` in your ``settings.py`` file:

::

  INSTALLED_APPS = (
      'django_extensions',
  )

Usage
=====

Run the application using the ``runserver_plus`` command extension:

::

  python manage.py runserver_plus

If you have any errors, the Werkzeug debugger will pop-up a nice helpful page.
For AJAX errors, check the request in FireBug.

To trigger a test exception, I just put an ``Assert`` statement into the code.


.. _`Create a default django development environment on python virtualenv`: http://www.yilmazhuseyin.com/blog/dev/create-default-django-development-environment-python-virtualenv/
.. _`django :: Debugging nirvana with werkzeug`: http://blog.tkbe.org/archive/django-debugging-nirvana-with-werkzeug/
.. _`RunServerPlus`: http://packages.python.org/django-extensions/runserver_plus.html

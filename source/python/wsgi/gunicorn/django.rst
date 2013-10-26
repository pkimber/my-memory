gunicorn
********

- http://gunicorn.org/
- `Easy Django Deployment`_

Install
=======

::

  pip install gunicorn

Django
======

For Django 1.4 and above:

::

  gunicorn example.wsgi:application

Old
---

If you have a ``settings.py`` file in the current folder:

::

  gunicorn_django

If the ``settings.py`` file is in a separate folder:

::

  gunicorn_django ./example/settings.py

Alternatively
-------------

Alternatively, they also provide integration for both Django applications in
case your deployment strategy would be better served by such invocation styles.

::

  # Add 'gunicorn' to 'INSTALLED_APPS':
  INSTALLED_APPS = (
      ...
      "gunicorn",
  )

  # Run from the command line:
  python manage.py run_gunicorn
  python manage.py run_gunicorn -b 127.0.0.1:8080 --daemon


.. _`Easy Django Deployment`: http://ericholscher.com/blog/2010/aug/16/lessons-learned-dash-easy-django-deployment/

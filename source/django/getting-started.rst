Getting Started
***************

Create
======

Project
-------

Run the command:

::

  django-admin.py startproject mysite

...to create a ``mysite`` directory in your current directory.

Application
-----------

(For me) a Django project contains one (or more) applications.

If you're using Django's database layer (models), you must create a Django app.

Django app - a bundle of Django code, including models and views, that lives
together in a single Python package and represents a full Django application.

If you're building a complex Web site with several unrelated pieces such as an
e-commerce system and a message board, you'll probably want to split those into
separate apps so that you'll be able to reuse them individually in the future.

Create

::

  python manage.py startapp books

Add the application to ``settings.py``:

::

  INSTALLED_APPS = (
      'django.contrib.auth',
      'django.contrib.contenttypes',
      'django.contrib.sessions',
      'django.contrib.sites',
      'mysite.books',
  )

The application name is the path to the package, separated by dots..

Development Server
==================

Change into the ``mysite`` directory, if you haven't already, and run the
command:

::

  python manage.py runserver

Browse to http://127.0.0.1:8000/

To allow remote workstations to access the development server:

::

  python manage.py runserver 0.0.0.0:8080

Next Steps
==========

If you like, change the ``TIME_ZONE`` and ``LANGUAGE_CODE`` in ``settings.py``:

::

  TIME_ZONE = 'Europe/London'
  LANGUAGE_CODE = 'en-gb'

:doc:`database/getting-started` for instructions to configure the database and
create a model.

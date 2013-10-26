Model and Admin
***************

Preparation
===========

- VNC

Description
===========

Build a simple application to show how easy it is to create models and provide
an admin interface for the model.

- Partner:

  - ``id``, default (provided by Django).
  - ``name``, e.g. Sainsbury.

- Promotion:

  - ``id``, default (provided by Django).
  - ``partner_id``, Partner ID (see above table).
  - ``promo_code``, Promotion code e.g. ``SAINS01``.
  - ``start_datetime``, Start date of the promotion.
  - ``thanks_message``, Displayed on the web site page.
  - ``terms``, Terms and Conditions.

Steps
=====

Introduction
------------

- Django - written in python:

  - http://www.python.org/ dynamic object-oriented programming language.  One
    of Google's main languages....
  - http://www.djangoproject.com/
  - http://www.djangopony.com/

- Use Case:

  - To build simple a simple admin interface when we need to collect some data
    e.g. Trips, Promo Codes, where we typically receive the data in an Excel
    spreadsheet or Word document and have to spend significant time moving and
    formatting the data manually.

Preparation
-----------

- Created project and application.

  A couple of command line tools to create a basic project and application:

  - Project: ``demo_model_and_admin``.
  - Application: ``promotion``.

- Database settings - using SQLite - (for development).

  ::

    cd demo_model_and_admin\
    python manage.py syncdb

  - PostgreSQL
  - SQL Server, http://code.google.com/p/django-mssql/.

- Set-up basic admin interface.

  - Development server:

    ::

      cd demo_model_and_admin\
      python manage.py runserver

  - http://127.0.0.1:8000/admin/

Model
-----

- A simple class with a method creating a string representation of the object.
- Create the database table:

  ::

    python manage.py syncdb

- Enable in the admin interface.
- Another model which uses the first model as a lookup.
- Admin interface options.


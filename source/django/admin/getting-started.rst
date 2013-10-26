Getting Started
***************

Application
===========

- Make sure the ``django.contrib.admin`` is installed in ``settings.py``:

  ::

    INSTALLED_APPS = (
        'django.contrib.admin',
        'django.contrib.auth',
        'django.contrib.contenttypes',
        'django.contrib.sessions',
        'django.contrib.sites',
    )

- Make sure that the following are uncommented, since the admin application
  depends on them:

  ::

    django.contrib.auth
    django.contrib.contenttypes
    django.contrib.sessions

Database
========

Create the database tables which are used by admin interface:

::

  python manage.py syncdb

**Note**:

- When you first run ``syncdb`` with ``django.contrib.auth`` in
  ``INSTALLED_APPS``, you'll be asked about creating a superuser.  If you
  didn't do so at that time, you'll need to run
  ``django/contrib/auth/bin/create_superuser.py`` to create an admin user.
  Otherwise, you won't be able to log in to the admin interface.

Models
======

Not all models can (or should) be editable by admin users.  You need to
create a ``ModelAdmin`` class for each model which you want included in
the admin interface.

Edit the ``app-name/admin.py`` file:

::

  from django.contrib import admin
  from myproject.myapp.models import Book

  class BookAdmin(admin.ModelAdmin):
      pass
  admin.site.register(Book, BookAdmin)

URL
===

Add (or uncomment) the ``autodiscover`` and URL pattern to ``urls.py``:

::

  from django.contrib import admin
  admin.autodiscover()

  urlpatterns = patterns('',
      (r'^admin/(.*)', admin.site.root),

Usage
=====

Start your development server:

::

  python manage.py runserver 0.0.0.0:8080

Visit the administration interface: http://127.0.0.1:8000/admin/.

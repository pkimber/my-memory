devserver
*********

Links
=====

- http://github.com/dcramer/django-devserver
  A drop-in replacement for Django's runserver.

Install
=======

- Install the following dependencies:

  ::

    pip install sqlparse
    pip install werkzeug
    pip install guppy

- Install the ``devserver``:

  ::

    pip install git+git://github.com/dcramer/django-devserver#egg=django-devserver

Configuration
=============

- Add ``devserver`` to your ``INSTALLED_APPS``:

  ::

    INSTALLED_APPS = (
        'devserver',
    )

- Add the following options to ``settings.py``:

  ::

    DEVSERVER_MODULES = (
        'devserver.modules.sql.SQLRealTimeModule',
        'devserver.modules.sql.SQLSummaryModule',
        'devserver.modules.profile.ProfileSummaryModule',
        # Modules not enabled by default
        'devserver.modules.ajax.AjaxDumpModule',
        'devserver.modules.profile.MemoryUseModule',
        'devserver.modules.cache.CacheSummaryModule',
    )

Usage
=====

- To run the server:

  ::

    python manage.py rundevserver


django-storages
***************

Links
=====

- http://bitbucket.org/david/django-storages/

Install
=======

::

  pip install django-storages

Note: Will probably also want to install
:doc:`../../python/modules/cloudfiles`

Configuration
=============

In ``settings.py`` set-up your credentials e.g:

::

  CLOUDFILES_USERNAME = 'myusername'
  CLOUDFILES_API_KEY = '9879879879879878979879'
  CLOUDFILES_CONTAINER = 'testing-wiki_cloudfiles'
  DEFAULT_FILE_STORAGE = 'backends.mosso.CloudFilesStorage'


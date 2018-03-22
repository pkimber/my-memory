django-extensions
*****************

.. highlight:: python

https://github.com/django-extensions/django-extensions

Prerequisites
=============

::

  sudo apt-get install graphviz
  sudo apt-get install libgraphviz-dev

Install
=======

::

  pip install django-extensions
  pip install pygraphviz

::

  INSTALLED_APPS = (
      'django_extensions',

Usage
=====

Graph
-----

::

  django-admin.py graph_models --all-applications --output=graph_myapp_models.png
  django-admin.py graph_models myappname --output=graph_myapp_models.png

Secret Key
----------

::

  django-admin.py generate_secret_key

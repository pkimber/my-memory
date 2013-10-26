Getting Started
***************

Links
=====

- http://www.buildout.org/
- `A Django Development Environment with zc.buildout`_.
- `Jacob Kaplan-Moss, Developing Django apps with zc.buildout`_.

Getting Started
===============

Configuration
-------------

`Creating a buildout defaults file`_:

Create a ``~/.buildout/default.cfg`` file with the following contents:

::

  [buildout]
  eggs-directory = /home/patrick/.buildout/eggs
  download-cache = /home/patrick/.buildout/downloads
  extends-cache = /home/patrick/.buildout/extends

Note:

- You will need to create these folders!!!

- ``eggs-directory``: allows multiple buildouts to share the same eggs.
- ``download-cache``: shared directory for downloaded archives.
- ``extends-cache``: shared directory for extended buildout configurations.

To specify a particular python interpreter other than the default:

::

  executable = /opt/python24/bin/python

Setup
-----

- Create a folder (and optionally a :doc:`../virtualenv/virtualenv` for your
  project.
- Change into your project folder e.g:

  ::

    cd sample-django-buildout/

- Download the ``bootstrap.py`` script:

  ::

    wget http://svn.zope.org/*checkout*/zc.buildout/trunk/bootstrap/bootstrap.py

- Create a basic ``buildout.cfg`` in the root of your project folder:

  ::

    [buildout]
    parts =

- Bootstrap the environment (this only has to be done once):

  ::

    python bootstrap.py

  Note:

  - If you run ``bootstrap.py`` with python 2.4 (or 2.5 for example), then
    your buildout configuration will continue to use this version of python
    e.g:

      ::

        python2.4 bootstrap.py

  - The ``bootstrap.py`` script will create a ``buildout`` script in the
    ``bin`` folder.
  - I had to update my version of ``setuptools``...

Usage
=====

- Update/download/create the ``buildout.cfg`` file e.g:

  ::

    [buildout]
    parts =
        PIL
        django

    [django]
    recipe = djangorecipe
    version = 1.1
    eggs =
        psycopg2
        markdown
        PIL

    [PIL]
    recipe = zc.recipe.egg
    egg = PIL==1.1.6
    find-links = http://dist.repoze.org/

  Note: The ``buildout.cfg`` file is added to version control (probably
  some other bits as well).

- Run the ``buildout`` script to setup the environment:

  ::

    bin/buildout


.. _`A Django Development Environment with zc.buildout`: http://www.stereoplex.com/2008/nov/12/a-django-development-environment-with-zc-buildout/
.. _`Jacob Kaplan-Moss, Developing Django apps with zc.buildout`: http://jacobian.org/writing/django-apps-with-buildout/
.. _`Creating a buildout defaults file`: http://manage.plone.org/documentation/manual/developer-manual/managing-projects-with-buildout/creating-a-buildout-defaults-file


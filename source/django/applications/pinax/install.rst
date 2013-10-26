Install
*******

Links
=====

- Installation_

Download
========

Download ``Pinax-0.7.1-bundle.tar.gz`` from http://pinaxproject.com/download/

Dependencies
============

- Install PIL:

  ::

    sudo pip install http://effbot.org/downloads/Imaging-1.1.6.tar.gz

Install
=======

Note: ``pinax`` creates new projects by building a special virtual environment.
We create new projects by using the ``clone_project`` command from this virtual
environment.  I guess this is all so complicated because pinax has so many
dependencies.

- ``deactivate`` any active virtual environments.

- Extract the source bundle:

  ::

    cd ~/src/
    tar xzf ~/download/django/Pinax-0.7.1-bundle.tar.gz

- Use the *special* pinax *virtual environment* creator:

  ::

    cd ~/src/Pinax-0.7.1-bundle
    python scripts/pinax-boot.py ~/repo/ve/pinax-env

Starting a new project
======================

- Activate the special virtual environment:

  ::

    source ~/repo/ve/pinax-env/bin/activate

- Pinax can create different project types.  To list all available types:

  ::

    $VIRTUAL_ENV/bin/pinax-admin clone_project -l

- Change into the folder where you want to create your new project:

  ::

    cd ~/dev/

- Create your new project:

  ::

    $VIRTUAL_ENV/bin/pinax-admin clone_project cms_project_company pinax-demo-cms-site

  Note: ``cms_project_company`` is one of the *project types* (see above).

- Test your project:

  ::

    cd pinax-demo-cms-site/
    python manage.py syncdb
    python manage.py runserver



.. _Installation: http://pinaxproject.com/docs/0.7/install.html


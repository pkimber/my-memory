virtualenvwrapper - Commands
****************************

Create
======

::

  mkvirtualenv --no-site-packages <env-name>

Note: See ``toggleglobalsitepackages`` below...

Activate
========

::

  workon <env-name>

Deactivate
----------

::

  deactivate

Delete
======

::

  rmvirtualenv <env-name>

Folders
=======

::

  cdvirtualenv
  cdsitepackages

  lssitepackages

Path Management - PYTHONPATH
----------------------------

To add extra directories to ``PYTHONPATH`` (using ``.pth`` file in the
``site-packages`` folder:

- List current:

  ::

    add2virtualenv

- Add a new path:

  ::

    add2virtualenv path_to_source

  **Note**:

  - To add multiple folders, just separate them with spaces e.g.

    ::

      add2virtualenv ../item ../item_notify

  - Paths can be absolute or relative, in which case they're relative to the
    directory containing the ``.pth`` file.
  - The ``.pth`` file is created in ``virtualenv_path_extensions.pth`` in
    ``site-packages`` for the virtual environment i.e:

    ::

      cdsitepackages
      cat virtualenv_path_extensions.pth

Path Management - Global Site Packages
--------------------------------------

Just toggle on and off using:

::

  toggleglobalsitepackages

List
====

::

  workon


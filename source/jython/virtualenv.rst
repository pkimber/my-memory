virtualenv
**********

Install :doc:`easy_install`.

Install ``virtualenv`` (copied from :doc:`easy_install` page):

::

  ~/bin/jython2.5.3/bin/pip install virtualenv

Note: In these sample sessions, ``my-project-name`` will be the name of the
environment *and the project folder*:

::

  cd ~/a/suitable/folder/
  ~/bin/jython2.5.3/bin/virtualenv my-project-name
  cd my-project-name

Note: ``--no-site-packages`` flag is deprecated; it is now the default
behavior.

To activate the jython virtual environment:

::

  source bin/activate

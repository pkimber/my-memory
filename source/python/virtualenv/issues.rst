Issues
******

I had major issues upgrading to the 2.0 series.  To solve the problems, edit
``.bashrc`` from:

::

  source /usr/local/bin/virtualenvwrapper_bashrc

to

::

  source /usr/local/bin/virtualenvwrapper.sh

**and**

::

  sudo pip uninstall virtualenv
  sudo pip uninstall virtualenvwrapper
  sudo pip install virtualenvwrapper

ImportError: No module named virtualenvwrapper.hook_loader
==========================================================

When starting :doc:`../../linux/apps/tmux`.  To solve the issue ``deactivate``
your virtual environment before starting ``tmux``.

pip install virtualenv and virtualenvwrapper
============================================

Lots of build errors trying to install ``virtualenv`` and
``virtualenvwrapper``.  To solve the problem, reinstall ``setuptools``:

::

    sudo sh setuptools-0.6c11-py2.7.egg



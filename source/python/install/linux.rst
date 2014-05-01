Linux
*****

.. highlight:: bash

.. note::

  The release of ubuntu 14.04 has made this alot more complicated (at least
  for now).

  We need python 2 and python 3 to work alongside each other in a similar
  manner.

  01/05/2014, For now, I will stop using ``virtualenvwrapper`` and just use
  ``activate`` instead.

See:

https://django-dev-and-deploy-using-salt.readthedocs.org/en/latest/dev-env.html
and
https://github.com/pkimber/docs/blob/master/source/dev-env.rst


.. Prerequisites
.. =============
.. 
.. Check to make sure the following are **not** installed::
.. 
..   dpkg -l | grep python-virtualenv
..   dpkg -l | grep python-pip
..   dpkg -l | grep python-setuptools
..   dpkg -l | grep virtualenvwrapper
.. 
.. python 2
.. ========
.. 
.. Download and install ``setuptools``::
.. 
..   wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - | sudo python
..   sudo easy_install pip
..   sudo pip install virtualenv
.. 
.. To create and activate a virtual environment::
.. 
..   virtualenv --no-site-packages venv-name
..   source venv-name/bin/activate
.. 
.. python 3
.. ========
.. 
.. To create a virtual environment::
.. 
..   pyvenv-3.4 --without-pip venv-name
..   source venv-name/bin/activate
..   wget https://raw.githubusercontent.com/pypa/pip/master/contrib/get-pip.py
..   python get-pip.py
.. 
.. To activate a virtual environment::
.. 
..   source venv-name/bin/activate
.. 
.. 
.. virtualenv and virtualenvwrapper
.. ================================
.. 
.. ::
.. 
..   sudo pip install virtualenvwrapper


.. _`release notes`: http://www.pip-installer.org/en/latest/news.html

Deploy
******

Links
=====

- `Jacob Kaplan-Moss - django-deployment-workshop`_
- `An improved WSGI script for use with Django`_.

Note
====

These instructions are for debian... and are adapted from the presentation
by Jacob Kaplan-Moss (above).

Debian
======

Make sure you can ``ssh`` into the server.

Install pre-requisites (mercurial is for my sample code):

::

  apt-get install mercurial python-dev build-essential

Install python pre-requisites:

::

  mkdir -p ~/downloads/python
  cd ~/downloads/python
  wget http://pypi.python.org/packages/2.5/s/setuptools/setuptools-0.6c11-py2.5.egg
  sh setuptools-0.6c11-py2.5.egg
  easy_install pip

Test site:

::

  mkdir -p /home/web/static
  cd /home/web
  hg clone https://pkimber@bitbucket.org/pkimber/sample_django_debug_toolbar
  cd sample_django_debug_toolbar
  pip install -r requirements.txt
  ./manage.py runserver 0.0.0.0:8000

Apache
======

:doc:`apache`

nginx
=====

:doc:`nginx`


.. _`An improved WSGI script for use with Django`: http://blog.dscpl.com.au/2010/03/improved-wsgi-script-for-use-with.html
.. _`Jacob Kaplan-Moss - django-deployment-workshop`: http://github.com/jacobian/django-deployment-workshop/

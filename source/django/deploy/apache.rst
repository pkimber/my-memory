Apache with WSGI
****************

Links
=====

- :doc:`deploy` (continued)...

`Jacob Kaplan-Moss - django-deployment-workshop`_

Note
====

These instructions are for debian... and are adapted from the presentation
by Jacob Kaplan-Moss (above).

Install
=======

::

  aptitude install apache2 libapache2-mod-wsgi

Configuration
=============

::

  cd /etc/apache2/
  rm -rf apache2.conf conf.d/ httpd.conf magic mods-* sites-* ports.conf
  ln -s /home/web/sample_django_debug_toolbar/apache/apache2.conf .

Note:

- On my debian system, the ``rm`` just leaves the ``envvars`` file.
- See :doc:`deploy` and :doc:`../cookies` for details on sub-domains and
  setting up multiple sites using WSGI.

Next...
=======

- :doc:`deploy` (continued)...


.. _`Jacob Kaplan-Moss - django-deployment-workshop`: http://github.com/jacobian/django-deployment-workshop/


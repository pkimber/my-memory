Install
*******

Download
========

Download ``Django-1.0.tar.gz`` from http://www.djangoproject.com/download/.

Previous Versions
=================

**If you are upgrading your installation of Django from a previous version,
you will need to uninstall the old Django version**.

If you installed Django using ``setup.py install``, uninstalling is as
simple as deleting the ``django`` directory from your Python
``site-packages``.

If you installed Django from a Python egg, review these instructions:
`Remove any old versions of Django`_

Install
=======

`Installing on Windows`_

Linux
-----

::

  tar xzvf Django-1.0.tar.gz
  cd Django-1.0
  sudo python setup.py install

Source
------

`Setting up a Django Development Environment`_

Windows
-------

Extract the archive to a temporary folder.  Change into the folder and run:

::

  python setup.py install

Verify
======

Open a command prompt, enter the python console, ``import django`` and make
sure the ``VERSION`` call succeeds:

::

  C:\development>python
  Python 2.5.1 (r251:54863, Apr 18 2007, 08:51:08) [MSC v.1310 32 bit (Intel)] on win32
  >>> import django
  >>> django.VERSION
  (1, 0, 'final')


.. _`Remove any old versions of Django`: http://docs.djangoproject.com/en/dev/topics/install/#removing-old-versions-of-django
.. _`Installing on Windows`: http://code.djangoproject.com/wiki/WindowsInstall
.. _`Setting up a Django Development Environment`: http://eflorenzano.com/blog/post/first-two-django-screencasts/


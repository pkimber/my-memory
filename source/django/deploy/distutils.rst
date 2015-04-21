distutils
*********

.. attention:: https://packaging.python.org/ is the authoritative resource on
               packaging.

Links
=====

- :doc:`../../python/distutils/getting-started`

- ``django-app-skeleton``

  - https://github.com/callowayproject/django-app-skeleton
  - `App-Centric Django Development Part 1: Introduction`_
  - `App-Centric Django Development Part 2: App Factory`_

- `django-setuptest`_
  Simple module enabling Django app testing via ``python setup.py test``.

Install
=======

::

  cd ~/repo/src/
  git clone git://github.com/callowayproject/django-app-skeleton.git

Usage
=====

::

  cd <dev folder>
  ~/repo/src/django-app-skeleton/create_app.py

Note: Don't create a folder for your new application.  ``create_app`` will
create a folder for you.

Sample Output
-------------

::

  cd ~/temp/
  ~/repo/src/django-app-skeleton/create_app.py
  Application name: my_new_app
  Package Name [my_new_app]:
  Author [patrick]:
  Destination directory [/home/patrick/temp]:
  Application template directory [/home/patrick/src/django-app-skeleton/skel]:
  Virtual environment name [my_new_app]:

  cd my_new_app/
  workon my_new_app


.. _`App-Centric Django Development Part 1: Introduction`: http://opensource.washingtontimes.com/blog/2010/nov/23/app-centric-django-development-part-1-introduction/
.. _`App-Centric Django Development Part 2: App Factory`: http://opensource.washingtontimes.com/blog/2010/nov/28/app-centric-django-development-part-2-app-factory/
.. _`django-setuptest`: http://pypi.python.org/pypi/django-setuptest/

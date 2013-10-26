Folder
******

Links
=====

- `Testing In Django - Daniel Greenfeld`_

Sample
======

To put your tests into a folder (rather than putting them all in the
``tests.py`` file):

Create a ``tests`` folder:

::

  mkdir src/my_app/tests/

Create an ``__init__`` file in the folder:

::

  touch src/my_app/tests/__init__.py

Create test classes in the folder:

::

  src/my_app/tests/region_tag_test.py
  src/my_app/tests/region_test.py

Edit the ``__init__.py`` file so that it includes the test classes:

::

  from region_tag_test import *
  from region_test import *

Remove the old ``tests.py`` class file.


.. _`Testing In Django - Daniel Greenfeld`: http://www.slideshare.net/pydanny/testing-in-django

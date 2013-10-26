Issues
******

Database
========

Shop
----

If the shop tables are not all getting created when using the Django test
runner... it will probably be because of this (hidden) import error:

::

  ImportError: No module named django_satchmo_shop_utility

To solve the problem, <<<pip install>>> the following:

::

  -e hg+http://bitbucket.org/bkroeze/django-signals-ahoy/#egg=django-signals-ahoy

South
-----

:doc:`../south/issues`, South vs syncdb...

If your tables are not all getting created when using the Django test
runner...

Import
======

I was getting the following exception when trying to run any <<<manage.py>>>
command:

::

  livesettings.models.SettingNotSet: ['PRODUCT.PRODUCT_TYPES', None]

To solve the problem, I removed:

::

  import config

...from the module containing my custom products.

Templates
=========

::

  Exception Type: DjangoUnicodeDecodeError

To solve the issue, see :doc:`internationalisation`,
``DjangoUnicodeDecodeError``.


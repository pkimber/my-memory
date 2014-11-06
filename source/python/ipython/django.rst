Django
******

.. highlight:: bash

From `Turbocharge your Python prompt and Django shell with IPython Notebook`_:

Install the :doc:`notebook`

Requirements::

  pip install django_extensions pyzmq tornado

Settings:

.. code-block:: python

  INSTALLED_APPS = INSTALLED_APPS + ('django_extensions',)

Start ``ipython`` with all models imported::

  python manage.py shell_plus

Start an ``ipython`` notebook for the project::

  python manage.py shell_plus --notebook

Logging
=======

The notebook displays console logging.  To disable this, you might like to send
some logging to the ``null`` handler e.g for the ``requests`` library::

  'requests': {
      'handlers': ['null'],
      'propagate': True,
      'level':'WARN',
  },


.. _`Turbocharge your Python prompt and Django shell with IPython Notebook`: http://opensourcehacker.com/2014/08/13/turbocharge-your-python-prompt-and-django-shell-with-ipython-notebook/

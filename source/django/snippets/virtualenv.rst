virtualenv
**********

Stop using ``manage.py`` and use the following instead:

::

  echo "export DJANGO_SETTINGS_MODULE=example.settings" >> $VIRTUAL_ENV/bin/postactivate
  echo "unset DJANGO_SETTINGS_MODULE" >> $VIRTUAL_ENV/bin/postdeactivate

::

  django-admin.py shell
  django-admin.py runserver

For more information, see :doc:`../standards`...

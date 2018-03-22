KA-Lite
*******

.. highlight:: bash

.. note::

  Be sure to deactivate any virtual environments before running the following
  commands...

To create the initial database::

  deactivate
  cd kalite
  python manage.py install

To run the development server, open two terminal sessions.  In the first run::

  deactivate
  cd kalite
  python manage.py runserver

In the second::

  deactivate
  cd kalite
  python manage.py cronserver 5

Kill
****

.. highlight:: bash

To terminate instances of the ``django-admin.py`` script, one might use the
following sequence:

::

  $  ps -ef | grep django-admin.py | grep -v grep
  501 20060     1   0   0:00.11 ttys001    0:00.38 python django-admin.py runserver 0.0.0.0:8002
  501 20063 20060   0   0:00.35 ttys001    0:01.07 python django-admin.py runserver 0.0.0.0:8002
  $ kill -TERM 20060 20063
  $ ps -ef | grep django-admin.py | grep -v grep

To kill a list of processes by name::

  $ pkill salt-minion

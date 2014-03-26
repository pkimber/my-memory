Supervisor
**********

Links
=====

- http://supervisord.org/
  Supervisor is a client/server system that allows its users to monitor and
  control a number of processes on UNIX-like operating systems.
- :doc:`snippets/supervisor-uwsgi`

.. image:: ../../django/deploy/misc/nginx-uwsgi-django.png
   :height: 500px
   :scale: 100

Install
=======

Note: Better to install using ``apt-get`` rather than ``pip`` because then you
get all the ``init.d`` scripts::

  sudo apt-get install supervisor

Usage
=====

::

  sudo /etc/init.d/supervisor start

Test
----

To create a test application::

  sudo vim /etc/supervisor/conf.d/foo.conf

::

  [program:foo]
  command=/bin/cat

Control
=======

Start the shell (type ``help`` for help)::

  sudo supervisorctl

To list processes run ``status``::

  supervisor> status
  uwsgi                            RUNNING    pid 15435, uptime 0:27:13

Reload
------

::

  supervisor> reread
  supervisor> update

  # or...
  supervisorctl update

Issues
======

Another program is already
--------------------------

::

  Starting supervisor:
  Error: Another program is already listening on a port that one of our HTTP
  servers is configured to use.

To solve this issue::

  sudo unlink /var/run/supervisor.sock

Weird/repeating errors
----------------------

I think ``supervisor`` caches the contents of the ``config`` file.  I had an
issue where I updated my python path to use a ``virtualenv`` and it couldn't
import packages which had been installed.

To solve the issue make sure the config file is ``reread``, ``reload``,
``update`` (or something)...

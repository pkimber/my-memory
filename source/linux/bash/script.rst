Script
******

Links
=====

- `Advanced Bash-Scripting Guide`_ (Paul says to start with this one!)
- `10 Steps to Beautiful Shell Scripts`_ *You can learn parameter substitution
  in less than 2 minutes*.
- `Writing Robust Bash Shell Scripts`_

Getting Started
===============

Sample script with some basic error checking::

  #!/bin/bash
  # exit immediately if a command exits with a nonzero exit status.
  set -e
  # treat unset variables as an error when substituting.
  set -u

  # Print Hello World!
  # Do the work.
  echo Hello world

Permissions::

  chmod 755 scriptname

Note: Not sure if these are the correct permissions... (perhaps try
``chmod +x myfile.py``).

To run this script::

  bash <script-name>

Sample
======

Run a python application, passing all parameters to the command::

  #!/bin/sh
  . ~/repo/env/env-app/bin/activate
  PYTHONPATH=/srv/django/:/srv/django/app/:/srv/django/modules/region/src/; export PYTHONPATH
  python /root/repo/env/env-app/bin/django-admin.py $* --settings=settings_webtest

Note: To pass all parameters to a command, Simon says to use ``$@``.  You
should (almost) always put it in double-quotes to avoid misparsing of argument
with spaces in them e.g::

  #!/bin/sh
  ack-grep "$@"


.. _`10 Steps to Beautiful Shell Scripts`: http://bashcurescancer.com/10-steps-to-beautiful-shell-scripts.html
.. _`Advanced Bash-Scripting Guide`: http://tldp.org/LDP/abs/html/
.. _`Writing Robust Bash Shell Scripts`: http://www.davidpashley.com/articles/writing-robust-shell-scripts.html

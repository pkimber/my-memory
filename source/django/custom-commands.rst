Custom Commands
***************

.. highlight:: python

Links
=====

- `Writing custom django-admin commands`_
- `Writing a custom management command`_
- `Source code (trunk)`_

Folder structure
================

::

  polls/
      __init__.py
      models.py
      management/
          __init__.py
          commands/
              __init__.py
              closepoll.py
      tests.py
      views.py

Sample
------

From `Parsing boolean values with argparse`_::

  # -*- encoding: utf-8 -*-
  import csv

  from django.core.management.base import BaseCommand


  class Command(BaseCommand):

      help = "Convert 'username' #1234"

      def add_arguments(self, parser):
          parser.add_argument("--update", dest="update", action="store_true")
          parser.set_defaults(update=False)

      def handle(self, *args, **options):
          self.stdout.write(self.help)
          update = options["update"]
          if update:
              # do something useful
              pass
          self.stdout.write("\n{} - Complete".format(self.help))

.. tip:: Call this command with ``--update`` (or nothing for ``False``).

Script
======

To create a simple python script which will run from the root of the site:

::

  #!/usr/bin/env python2.4

  from django.core.management import setup_environ
  import settings

  # Setup our environment
  setup_environ(settings)

  import sys
  import traceback

  from mycompany.cheese.models import stilton

  l = stilton.objects.filter(active=False)
  for s in l:
      if s.user:
          print "%s,%s" % (s.type, s.user.email)


.. _`Parsing boolean values with argparse`: https://stackoverflow.com/questions/15008758/parsing-boolean-values-with-argparse
.. _`run_monitor.py`: http://toybox/hg/dev/file/tip/simple_url_monitor/monitor/management/commands/run-monitor.py
.. _`Source code (trunk)`: http://code.djangoproject.com/svn/django/trunk/django/core/management/base.py
.. _`Writing a custom management command`: http://oebfare.com/blog/2008/nov/03/writing-custom-management-command/
.. _`Writing custom django-admin commands`: https://docs.djangoproject.com/en/1.3/howto/custom-management-commands/

Custom Commands
***************

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

`run_monitor.py`_

Simple (from `Writing custom django-admin commands`_):

::

  from django.core.management.base import BaseCommand, CommandError
  from example.polls.models import Poll

  class Command(BaseCommand):
      args = '<poll_id poll_id ...>'
      help = 'Closes the specified poll for voting'

      def handle(self, *args, **options):
          for poll_id in args:
              try:
                  poll = Poll.objects.get(pk=int(poll_id))
              except Poll.DoesNotExist:
                  raise CommandError('Poll "%s" does not exist' % poll_id)

              poll.opened = False
              poll.save()

              self.stdout.write('Successfully closed poll "%s"\n' % poll_id)

Arguments.  This is a more complicated sample, which takes a command line
parameter:

::

  from django.core.management.base import BaseCommand, CommandError
  from optparse import OptionParser, make_option
  import os

  class Command(BaseCommand):

      option_list = BaseCommand.option_list + (
          make_option(
              "-f",
              "--folder",
              dest="folder",
              help='''Output folder.'''),
          )

      def create_parser(self, prog_name, subcommand):
          """
          Create and return the ``OptionParser`` which will be used to
          parse the arguments to this command.
          See this blog article for details of why we need to do this:
          http://oebfare.com/blog/2008/nov/03/writing-custom-management-command/
          """
          return OptionParser(prog=prog_name,
              usage=self.usage(subcommand),
              version = self.get_version(),
              option_list = self.option_list,
              conflict_handler = "resolve")

      def handle(self, *args, **options):
          folder = options['folder']
          if folder:
              self._backup(folder)
          else:
              raise CommandError('''Missing folder parameter...''')

      def _backup(self, folder):
          # do the stuff you want to do...
          pass

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


.. _`run_monitor.py`: http://toybox/hg/dev/file/tip/simple_url_monitor/monitor/management/commands/run-monitor.py
.. _`Source code (trunk)`: http://code.djangoproject.com/svn/django/trunk/django/core/management/base.py
.. _`Writing a custom management command`: http://oebfare.com/blog/2008/nov/03/writing-custom-management-command/
.. _`Writing custom django-admin commands`: https://docs.djangoproject.com/en/1.3/howto/custom-management-commands/

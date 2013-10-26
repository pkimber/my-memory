sudo
****

.. highlight:: python

::

  from fabric.api import settings
  from fabric.api import sudo

  def sample():
      with settings(sudo_user='web'):
          sudo('whoami')

To save you entering the ``sudo`` password every time:

::

  fab -p password sample

**Note**: Be aware of the security risks when using this command.

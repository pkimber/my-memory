ssh
***

.. highlight:: python

To tell fabric to use the ``~/.ssh/config`` file:

::

  from fabric.api import env
  from fabric.api import run
  
  env.hosts = ['rs.web.connexionsw',]
  env.use_ssh_config = True
  
  def example():
      run('uname -s')

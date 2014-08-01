ssh
***

Also see :doc:`commands/clone`

If we create an ``ssh`` configuration file (see :doc:`../linux/ssh/config`),
then we should be able to clone using this command::

  hg clone ssh://hg@server//myrepo

Push
====

To clone a local repository change into it's folder::

  hg clone . ssh://my.server/repo/env

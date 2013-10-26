Global Configuration
********************

Links
=====

http://trac.edgewall.org/wiki/TracIni#GlobalConfiguration

Search for ``plugins_dir`` on this page:
http://trac.edgewall.org/wiki/TracDev/ReleaseNotes/0.11

Setup
=====

Create a global ``trac.ini`` file e.g:

::

  E:\trac\global\conf\trac.ini

Update the ``[inherit]`` section of the ``trac.ini`` file for existing Trac
environments.

Remove "``plugins_dir =``" and "``templates_dir =``" and update each
environment so that it inherits configuration from the global ``trac.ini``
file:

::

  [inherit]
  file = E:\trac\global\conf\trac.ini

Create a folder which will contain the egg files for the plugins you want to
share:

::

  E:\trac\global\plugins\

In the global configuration file, (``E:\\trac\\global\\conf\\trac.ini`` in this
example), set the shared directory for the plugins:

::

  [inherit]
  plugins_dir = E:\trac\global\plugins\

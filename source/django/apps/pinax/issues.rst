Issues
******

sudo
====

Had loads of weird *permission required* errors:

::

  OSError: [Errno 13] Permission denied

... when trying to create or clone pinax virtual environments.  These errors
always included a reference to an ``egg`` file in the system python folder.

To solve the issue, I un-installed the packages for these egg files e.g:

::

  sudo pip uninstall sorl_thumbnail
  sudo pip uninstall django_storages


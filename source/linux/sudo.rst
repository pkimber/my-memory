sudo
****

Links
=====

sudoers
-------

- `Sudoers Manual`_
- `Visudo Manual`_
- :doc:`security/sample/office`, for details on how we updated the ``sudoers``
  file.

To add ``patrick`` to the ``sudo`` group::

  sudo adduser patrick sudo

Shell
=====

::

  sudo -s

User
====

To run the ``deploy.sh`` command as the ``hg`` user::

  sudo -u hg ./deploy.sh

To *become* the user::

  sudo -i -u web

``-i``

  runs the shell specified by the password database entry of the target user as
  a login shell.


.. _`Sudoers Manual`: http://www.gratisoft.us/sudo/sudoers.man.html
.. _`Visudo Manual`: http://www.gratisoft.us/sudo/visudo.man.html

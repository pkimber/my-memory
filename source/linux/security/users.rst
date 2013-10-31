Users
*****

Links
=====

- `Managing Linux Users`_

Create
======

On Ubuntu, it is easier to simply use::

  adduser patrick

``useradd`` is more primitive::

  useradd -g users -s /bin/bash -m patrick
  passwd patrick

In this example:

========  ================================
``-g``    Add to the ``users`` group.
``-s``    Use this shell.
``-m``    Create the home directory.
========  ================================

Other options:

========  ================================
``-u``    Force the user ID (UID).
========  ================================

Note:

- To reject shell login attempts, set the shell to ``/bin/false``.
  This doesn't stop the user from using the account to authenticate over ssh.
  For details see
  http://www.semicomplete.com/articles/ssh-security/#id54098.

Delete
======

::

  userdel patrick

Files
=====

Where the user's name, and other pertinent information are stored. This
includes the password unless your system is using shadow passwords::

  /etc/passwd

Where group names are stored::

  /etc/group

Modify
======

To modify a users account see the ``man`` pages for the ``usermod``
command.

To change a users password::

  passwd patrick

To change a users group::

  usermod -a -G users patrick

In this example, we add ``patrick`` to the ``users`` group.

*Note*:

- Use ``-g`` to set the initial login group.
- The user will be removed from any groups which are not listed.

To change a user ID and group, run the ``vipw`` and ``vipw -g`` commands.
After updating the ID's you will need to convert existing files to use the
correct permissions.  The following command will find all files in the home
folder owned by UID 500 and pass them to ``chmod`` to change to the correct
UID for the user name::

  find /home -uid 500 -exec chown patrick: "{}" +

See :doc:`../find` for more information on the ``-exec`` command.

View
====

To find your user name::

  whoami

To view the groups which a user belongs to::

  groups username


.. _`Managing Linux Users`: http://www.comptechdoc.org/os/linux/usersguide/linux_ugusers.html

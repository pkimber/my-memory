Office
******

In the office, we have a linux server and a few workstations.  We wanted users
to be able to create files in shared folders which all other users could read.

To get this to work, we want users to create files which, by default, the
group can read and write.  If these files are then copied to a shared folder
other users in the group will be able to read and write.

We set-up permissions as follows:

- Make sure the user and group ID's match across the server and all
  workstations.
- Edit ``/etc/profile`` on the **workstations** to change the ``umask`` from
  ``022`` to ``007``:

  ::

    # /etc/profile
    # ...
    # umask 022
    umask 007

  - The default permissions for a folder are ``777``.

    A ``umask`` value of ``007`` will create folders with ``drwxrwx---``.
    This will allow the user and any member of the group full access to the
    folder.

  - The default permissions for a file are ``666``.

    A ``umask`` value of ``007`` will create files with ``-rw-rw----``.  This
    will allow the user and any member of the group read, write and delete
    access to the files, but deny access to *others*.

- Edit ``/etc/profile`` on the **server** and change the ``umask`` from
  ``002`` to ``007``:

  ::

    # /etc/profile
    # ...
    # umask 002
    umask 007

  This will continue to allow full user and group access, but deny access to
  *others*.

- Shared folders should be created with ``SGID`` (*Set Group Identification*)
  attribute set.  For details see :doc:`../permissions`, *Folders*,
  *Group Identification*.
- If you have shared folders, where the files and directories have incorrect
  permissions, then the following should set them back to defaults which suit
  the above.

  To set all directories as 770 and files as 660:

  ::

    find . -type d -exec chmod 2770 {} \;
    find . -type f -exec chmod 0660 {} \;

  *Note*: You might need to use ``sudo`` with these commands if you do not
  have permission...

**Note**: If you use ``sudo`` with the above settings, then the ``sudo`` user
(probably ``root``) will be using the updated mask i.e. ``007`` rather than
``022``.  To try and solve the problem, we have updated the ``visudo``
settings as follows:

::

  Defaults▸   env_reset, umask_override, umask=0022

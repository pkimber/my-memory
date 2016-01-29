rsync
*****

Links
=====

- `rsync over ssh Configuration in debian`_
- `rsync page`_
- `rsync Tips & Tricks`_
- `A Tutorial on Using rsync`_
- `Get to Know rsync`_
- http://www.nongnu.org/duplicity/
  Encrypted bandwidth-efficient backup using the rsync algorithm.
- http://duplicity.nongnu.org/
  Encrypted bandwidth-efficient backup using the rsync algorithm.

Install
=======

::

  apt-get install rsync

Setup
=====

Edit:

::

  /etc/default/rsync

and change ``RSYNC_ENABLE=false`` to::

  RSYNC_ENABLE=true

Re-start the daemon::

  /etc/init.d/rsync restart

ssh
===

Create a key for the user who will be doing the backup on the source machine::

  ssh-keygen -t rsa
  Generating public/private rsa key pair.
  Enter file in which to save the key (/home/patrickk/.ssh/id_rsa):
  Created directory '/home/patrickk/.ssh'.
  Enter passphrase (empty for no passphrase):
  Enter same passphrase again:
  Your identification has been saved in /home/patrickk/.ssh/id_rsa.
  Your public key has been saved in /home/patrickk/.ssh/id_rsa.pub.
  The key fingerprint is:
  d0:37:a0:3b:11:a2:27:0c:f9:9a:b9:6d:e8:c4:71:c6 patrickk@server

Note:

- when asked where to store it, put it in the default
  (i.e. ``/home/patrickk/.ssh/id_rsa``)
- when asked for a password, just press enter (ie, no password).  Note, this is
  a security hole.
- Make sure that no unauthorized user can read the private key file (the one
  without the ``.pub`` extension).
- This key serves no purpose until we copy the public portion into the
  ``authorized_keys`` file on the remote host.

Now we have a key with no password in the two files mentioned above.

Now, go into ``/home/patrickk/.ssh/`` and copy the file ``id_rsa.pub`` to the
target machine.  Copy the key into the file ``~/.ssh/authorized_keys`` (create
it if necessary).

Update the permissions on the folder (and file) if required::

  chmod 700 ~/.ssh
  chmod 600 ~/.ssh/authorized_keys

You should now be able to ``scp`` files to the target machine without entering
a password.

Sample
======

Here are a some sample ``rsync`` command lines::

  rsync --recursive --rsh=ssh --size-only --verbose \
    /home/patrick/projects \
    patrick@weezy:/home/patrick/temp/

::

  rsync -av --exclude=.svn --exclude=health --exclude=satchmo.log ./ db1:/srv/django/ -n | grep -v .pyc

::

  /usr/bin/rsync --compress --verbose --rsh=ssh --times --owner --group --ignore-times --links  --perms \
      --recursive --size-only --delete --force --numeric-ids \
      /home/patrick/projects/lucene-test/ \
      patrick@weezy:/home/patrickk/temp/lucene-test

::

  rsync --checksum --delete --recursive --rsh=ssh --size-only --verbose \
    /home/patrick/projects \
    patrick@weezy:/home/patrick/temp/

.. warning:: The ``checksum`` option will forces rsync to calculate a checksum
             for all files.  It might take a very long time
             ``sending incremental file list``.

Command
=======

`rsync man page:`_::

  rsync [OPTION]... SRC [SRC]... DEST

*You can think of a trailing / on a source as meaning "copy the contents of
this directory" as opposed to "copy the directory by name"...*

Options
-------

=================  =======================================================================================
``compress``       compress the file data as it is sent to the destination machine
``delete``         delete extraneous files from dest dirs
``force``          force deletion of dirs even if not empty
``group``          preserve group
``ignore-times``   don't skip files that match size and time
``links``          copy symlinks as symlinks
``numeric-ids``    don't map uid/gid values by user/group name
``owner``          preserve owner (super-user only)
``perms``          destination permissions to be the same as the source permissions
``recursive``      recurse into directories
``rsh=ssh``        specify the remote shell to use
``size-only``      skip files that match in size
``times``          transfer modification times along with the files and update them on the remote system.
``verbose``        increase verbosity
=================  =======================================================================================

Windows
=======

See `cygwin packages`_.

Note: If you are transferring files from the Windows workstation to the Linux
box you will need to generate the key in ``cygwin`` and copy the public key to
the Linux box.


.. _`A Tutorial on Using rsync`: http://everythinglinux.org/rsync/
.. _`cygwin packages`: ../cygwin/packages.html
.. _`Get to Know rsync`: http://www.linux.com/learn/tutorials/271175-get-to-know-rsync
.. _`rsync man page:`: http://www.samba.org/ftp/rsync/rsync.html
.. _`rsync over ssh Configuration in debian`: http://www.debianhelp.co.uk/rsync.htm
.. _`rsync page`: http://www.samba.org/ftp/rsync/rsync.html
.. _`rsync Tips & Tricks`: http://sial.org/howto/rsync/

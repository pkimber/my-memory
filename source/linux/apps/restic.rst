Restic
******

.. highlight:: bash

Install
=======

.. note:: Update for 03/03/2018, I downloaded ``restic_0.8.3_linux_amd64.bz2``.

Download ``restic_0.7.3_linux_amd64.bz2`` from
https://github.com/restic/restic/releases/latest

Extract ``restic_0.7.3_linux_amd64`` to your ``bin`` folder (or somewhere
suitable)::

  chmod +x restic_0.7.3_linux_amd64

Usage
=====

Set the ``RESTIC_PASSWORD`` environment variable::

  # using the fish shell
  set -x RESTIC_PASSWORD "my-password"

Initialise the repository::

  # local
  restic_0.7.3_linux_amd64 init --repo ./my-first-repo
  # ssh
  restic_0.7.3_linux_amd64 -r sftp:123@usw-s001.rsync.net:restic/my-repo init

Backup::

  # local
  restic_0.7.3_linux_amd64 -r ./my-first-repo backup ~/media
  # ssh
  restic_0.7.3_linux_amd64 -r sftp:123@usw-s001.rsync.net:restic/my-repo backup ~/media

.. note:: This will create a snapshot.  The identifier is displayed at the end
          of the backup e.g. ``snapshot 5b49043d saved``

Check::

  restic_0.7.3_linux_amd64 -r ./my-first-repo check

List snapshots::

  restic_0.7.3_linux_amd64 -r ./my-first-repo snapshots

Restore::

  # local
  restic_0.7.3_linux_amd64 -r ./my-first-repo restore latest --target ~/repo/temp/restic-restore-my-first-repo
  # ssh
  restic_0.7.3_linux_amd64 -r sftp:123@ch-s011.rsync.net:restic/patrick restore latest --target ~/repo/temp/restic-restore-my-first-repo

Restic
******

.. highlight:: bash

Install
=======

::

  apt install restic

Usage
=====

Set the ``RESTIC_PASSWORD`` environment variable::

  # using the fish shell
  set -x RESTIC_PASSWORD "my-password"

Initialise the repository::

  # local
  restic init --repo ./my-first-repo
  # ssh
  restic -r sftp:123@usw-s001.rsync.net:restic/my-repo init

Backup::

  # local
  restic -r ./my-first-repo backup ~/media
  # ssh
  restic -r sftp:123@usw-s001.rsync.net:restic/my-repo backup ~/media

.. note:: This will create a snapshot.  The identifier is displayed at the end
          of the backup e.g. ``snapshot 5b49043d saved``

Check::

  restic -r ./my-first-repo check

List snapshots::

  restic -r ./my-first-repo snapshots

Restore::

  # local
  restic -r ./my-first-repo restore latest --target ~/repo/temp/restic-restore-my-first-repo

  # ssh - restore latest
  restic -r sftp:123@ch-s011.rsync.net:restic/patrick restore latest --target ~/repo/temp/restic-restore-my-first-repo

  # ssh - list snapshots
  restic -r sftp:123@ch-s011.rsync.net:restic/patrick snapshots
  # e.g.
  # ID        Time                 Host ...
  # ----------------------------------- ...
  # 6059b8ee  2022-02-28 01:01:51
  # 3146d2d5  2022-03-31 01:01:07

  # ssh - restore snapshot
  restic -r sftp:123@ch-s011.rsync.net:restic/patrick restore 3146d2d5 --target ~/repo/temp/restic-restore-my-snapshot

Retention Policy
================

To free disk space, run the ``prune`` command...

Restic
******

.. highlight:: bash

Install
=======

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

  restic_0.7.3_linux_amd64 init --repo ./my-first-repo

Backup::

  restic_0.7.3_linux_amd64 -r ./my-first-repo backup ~/media

.. note:: This will create a snapshot.  The identifier is displayed at the end
          of the backup e.g. ``snapshot 5b49043d saved``

Check::

  restic_0.7.3_linux_amd64 -r ./my-first-repo check

List snapshots::

  restic_0.7.3_linux_amd64 -r ./my-first-repo snapshots

Restore::

  restic_0.7.3_linux_amd64 -r ./my-first-repo restore latest --target ~/repo/temp/restic-restore-my-first-repo

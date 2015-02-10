Server
******

LTS (Long Term Support)
=======================

To check the current version:

::

  lsb_release -a

Upgrade
=======

`Lucid Upgrades`_

Probably best to do this upgrade from the console and not over SSH.

- Install ``update-manager-core`` if it is not already installed:

  ::

    sudo apt-get install update-manager-core

- Edit ``/etc/update-manager/release-upgrades`` and set ``Prompt=lts``.
- Launch the upgrade tool:

  ::

    sudo do-release-upgrade --help
    sudo do-release-upgrade --proposed

- Follow the on-screen instructions.
- At the end of the upgrade process you will be required to restart the
  server in order to boot into the new kernel.  If you do not have access to
  the console of the system you are upgrading, you may need to edit
  ``/boot/grub/menu.lst`` and change the default boot kernel to the newly
  installed 10.04 kernel. If this step is not performed your server may
  attempt to boot into the 8.04 LTS kernel and will hang.


.. _`Lucid Upgrades`: https://help.ubuntu.com/community/LucidUpgrades

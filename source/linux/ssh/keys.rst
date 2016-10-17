Keys
****

.. highlight:: bash

Links
=====

- `OpenSSH key management`_
- `ubuntu documentation - SSH Keys`_

Usage
=====

Create a folder for the keys (if it doesn't already exist)::

  mkdir ~/.ssh
  chmod 700 ~/.ssh

To create your key::

  ssh-keygen -o -a 100 -t ed25519

.. note:: Do not enter a password here.

.. note:: The old command line was ``ssh-keygen -t rsa``.  I updated on the
          advice of this article, `Upgrade your SSH keys!`_

To add your key to the authentication agent::

  ssh-add

To copy your key to a server (so you no longer need the password)::

  ssh-copy-id root@myserver

This command will simply copy your key to ``~/.ssh/authorized_keys``.

To append the key without an editor::

  cat mykey.pub >> .ssh/authorized_keys

To copy the key to your clipboard::

  xclip -sel clip < ~/.ssh/id_rsa.pub

Forward
=======

To use SSH agent forwarding for ``example.co.uk``::

  ssh -A example.co.uk


.. _`OpenSSH key management`: http://www.ibm.com/developerworks/library/l-keyc2/
.. _`ubuntu documentation - SSH Keys`: https://help.ubuntu.com/community/SSH/OpenSSH/Keys
.. _`Upgrade your SSH keys!`: https://blog.g3rt.nl/upgrade-your-ssh-keys.html

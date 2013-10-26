Keys
****

Links
=====

- `OpenSSH key management`_
- `ubuntu documentation - SSH Keys`_

Usage
=====

Create a folder for the keys (if it doesn't already exist):

::

  mkdir ~/.ssh
  chmod 700 ~/.ssh

To create your key:

::

  ssh-keygen -t rsa

**Note**: I don't think there is any need to enter a password here.

To add your key to the authentication agent:

::

  ssh-add

To copy your key to a server (so you no longer need the password):

::

  ssh-copy-id root@myserver

This command will simply copy your key to ``~/.ssh/authorized_keys``.

To copy the key to your clipboard:

::

  xclip -sel clip < ~/.ssh/id_rsa.pub


.. _`OpenSSH key management`: http://www.ibm.com/developerworks/library/l-keyc2/
.. _`ubuntu documentation - SSH Keys`: https://help.ubuntu.com/community/SSH/OpenSSH/Keys

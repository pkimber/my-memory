putty
*****

Links
=====

- `PuTTY Download Page`_
- `Key-Based SSH Logins With PuTTY`_
- `Secure Linux/UNIX access with PuTTY and OpenSSH`_

Utility
-------

- `PuTTY Tray`_
- `Customizing color schemes in PuTTY`_

Setup
=====

- Download ``puttygen.exe`` from the putty download page:
  http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html
- Run ``puttygen.exe`` (it has no installer):

  [../../images/howto/linux/puttygen.gif]puttygen

- Generate the key pair.  Do not enter a *passphrase* or you will need to
  enter the password each time you want to use the key.
- Create (or edit) the ``~/.ssh/authorized_keys2`` file on the server you
  want to log on to.  Paste the *Public key* into the
  ``~/.ssh/authorized_keys2`` file.  Note: This must be done for the user
  which you will be using for the password-less login.
- Save the private key into a folder.  Start ``putty`` and select the
  private key file in *Connection*, *SSH*, *Auth*.
- You should now be able to log into the remote server without entering a
  password.


.. _`PuTTY Download Page`: http://www.chiark.greenend.org.uk/%7Esgtatham/putty/download.html
.. _`Key-Based SSH Logins With PuTTY`: http://www.howtoforge.com/ssh_key_based_logins_putty
.. _`Secure Linux/UNIX access with PuTTY and OpenSSH`: http://www.unixwiz.net/techtips/putty-openssh.html
.. _`PuTTY Tray`: http://www.xs4all.nl/~whaa/putty/
.. _`Customizing color schemes in PuTTY`: http://www.igvita.com/2008/04/14/custom-putty-color-themes/


Issues
******

Delay connecting
================

If you experience a delay when making an ssh connection (in my case, using SSH
keys), then it could be a `reverse DNS issue`_.  To solve the problem, I added
my IP address to the servers ``/etc/hosts`` file.

ssh-add
=======

Could not open a connection to your authentication agent
--------------------------------------------------------

According to `passwordless ssh`_, *your shell isn't running under ssh-agent*:

::

  exec ssh-agent bash
  patrick@buzz:~$ ssh-add

I am really not sure what the problem is here, but ``ssh-add`` is now working.

The agent has no identities
---------------------------

If ``ssh-add -L`` returns ``The agent has no identities``, then just run
``ssh-add``:

::

  $ ssh-add
  Identity added: /home/patrick/.ssh/id_rsa (/home/patrick/.ssh/id_rsa)


.. _`passwordless ssh`: http://ubuntuforums.org/archive/index.php/t-28213.html
.. _`reverse DNS issue`: http://serverfault.com/questions/289158/10-second-ssh-delay-prior-to-successful-login

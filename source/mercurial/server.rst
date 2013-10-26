Server
******

Links
=====

- `mercurial-server`_
- `Source code`_
- `Shared SSH`_: ``mercurial-server`` provides the most complete and
  easiest-to-use solution to this problem for hosting a collection of
  repositories on Unix systems.

  Despite its name, this is not a Mercurial server. It offers an improved
  management interface for the shared ssh mechanism like that provided by
  ``hg-ssh``.

- `step-by-step install Mercurial Server on Ubuntu`_
- `Setting up private SSH-based Mercurial repo hosting on Centos`_
- `Gitosis for Mercurial`_
- `No such repository hgadmin while installing mercurial-server`_

Install
=======

Ubuntu
------

On the server:

::

  sudo apt-get install mercurial
  sudo apt-get install mercurial-server

*Note*: This will create a special ``hg`` user.

Configuration
=============

- Root users can edit add new users (see ``hgadmin`` below), create new
  repositories and read and write to existing ones.
- Normal users cannot access ``hgadmin`` (create users) or create new
  repositories, but they can read and write to any other repository.

Following these `Step by step`_ instructions.

Admin
-----

We need to start by setting up a ``root`` (admin) user on the server:

::

  ssh -A server

  ssh-add -L > ~/temp/patrick.key

  cd /etc/mercurial-server/keys/root/
  sudo mkdir patrick
  cd patrick/
  sudo mv /home/patrick/temp/patrick.key .
  sudo -u hg /usr/share/mercurial-server/refresh-auth

  exit

Users
-----

To create a user, first clone the ``admin`` repository on your local
workstation:

::

  cd ~/repo/src/
  hg clone ssh://hg@server/hgadmin
  cd hgadmin

  mkdir -p keys/users/sam
  cp ~/sam-saucer-key.pub keys/users/sam/saucer
  hg add
  hg commit -m "Add Sam's key"
  hg push

Note:

- The ``keys`` folder will not exist when you clone the repository.
- After running these commands, user ``sam`` will be able to read and write
  any repositories on the server.
- In this example, the user is ``sam``, and his workstation is called
  ``saucer``.
- If you are trying to access this repository from the server, just replace
  ``server`` with ``localhost``.

Usage
=====

Create Repository
-----------------

To create a repository on the server you *must be an administrator*:

::

  hg clone . ssh://hg@server/my_project

Note:

- The repositories are created in ``/var/lib/mercurial-server/repos/``.
- If you are trying to access this repository from the server, just replace
  ``server`` with ``localhost``.

Clone etc
---------

::

  hg clone ssh://hg@server/my_project

Note: If you are trying to access this repository from the server, just replace
``server`` with ``localhost``.


.. _`mercurial-server`: http://www.lshift.net/mercurial-server.html
.. _`Source code`: http://hg.opensource.lshift.net/mercurial-server
.. _`Step by step`: http://dev.lshift.net/paul/mercurial-server/docbook.html
.. _`Shared SSH`: http://mercurial.selenic.com/wiki/SharedSSH
.. _`step-by-step install Mercurial Server on Ubuntu`: http://ekkescorner.wordpress.com/blog-series/git-mercurial/step-by-step-install-mercurial-server-on-ubuntu/
.. _`Setting up private SSH-based Mercurial repo hosting on Centos`: http://blog.mixu.net/2010/10/04/setting-up-private-ssh-based-mercurial-repo-hosting-on-centos/
.. _`Gitosis for Mercurial`: http://kurtgrandis.com/blog/2010/03/20/gitosis-for-mercurial/
.. _`No such repository hgadmin while installing mercurial-server`: http://stackoverflow.com/questions/2562218/no-such-repository-hgadmin-while-installing-mercurial-server-wtf


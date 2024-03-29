Getting Started
***************

.. highlight:: bash

Docker Community Edition (CE) (**Docker CE**) is the version we are using.

Install
=======

How To Install and Use Docker on Ubuntu 20.04
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04

::

  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
  apt install docker-ce

Legacy
======

.. tip:: If you are using the Docker files created by Django CookieCutter, then
         the version from the Ubuntu repositories is not new enough, so it is
         better to follow the official instructions to install Docker:
         https://docs.docker.com/engine/installation/linux/ubuntu/

.. note:: ``docker-compose`` is installed using ``pip``!
          Add ``docker-compose`` to ``requirements/local.txt``.

Ubuntu 16.10
------------

.. note:: See ``tip`` above...

::

  sudo apt install docker.io

Ubuntu 16.04
------------

.. important:: Make sure you have Ubuntu 14.04 (64 bit)

.. important:: Install Docker on a **64 bit** operating system.

Remove old versions::

  sudo apt-get remove docker docker-engine

Verify that you have wget installed::

  which wget

Install Docker::

  wget -qO- https://get.docker.com/ | sh

Configure
---------

If you would like to use Docker as a non-root user, you should now consider
adding your user to the ``docker`` group with something like::

  sudo usermod -aG docker patrick

.. note:: Log out and back in again.

Verify docker is installed correctly::

  docker run hello-world

.. Make sure you have Ubuntu 14.04 (64 bit)::
..
..   cat /etc/issue
..
.. ::
..
..   [ -e /usr/lib/apt/methods/https ] || {
..     apt-get update
..     apt-get install apt-transport-https
..   }
..
..   sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
..   sudo sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
..   sudo apt-get update
..   sudo apt-get install lxc-docker

Docker uses a bridge to manage containers networking, by default UFW drops all
forwarding, a first step is to enable forwarding::

  sudo vim /etc/default/ufw
  # Change:
  # DEFAULT_FORWARD_POLICY="DROP"
  # to
  DEFAULT_FORWARD_POLICY="ACCEPT"

Then reload UFW::

  sudo ufw reload

Install Docker Compose::

  sudo -i
  curl -L https://github.com/docker/compose/releases/download/1.3.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
  chmod +x /usr/local/bin/docker-compose

.. note:: This looks like a very useful starting point:
          https://docs.docker.com/compose/django/

..
.. Verify
.. ------
..
.. Download the base 'ubuntu' container and run bash inside it while setting up
.. an interactive shell (type ``exit`` to exit)::
..
..   docker run -i -t ubuntu /bin/bash
..
.. If you receive this message::
..
..   # WARNING: Docker detected local DNS server on resolv.conf.Using default external servers: [8.8.8.8 8.8.4.4]
..
.. Then running the ``docker`` command with the ``dns`` parameter seems to solve
.. the problem::
..
..   sudo docker run -dns 8.8.8.8 -dns 8.8.4.4 -i -t ubuntu /bin/bash
..
.. ::
..
..   i to open an interactive shell
..   t to allocate a pseudo-tty

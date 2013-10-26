Getting Started
***************

Install
=======

Make sure you have Ubuntu Raring 13.04 (64 bit)

::

  cat /etc/issue

::

  sudo apt-get install linux-image-extra-`uname -r`
  sudo apt-get install software-properties-common

  sudo add-apt-repository ppa:dotcloud/lxc-docker
  sudo apt-get update
  sudo apt-get install lxc-docker

Docker uses a bridge to manage containers networking, by default UFW drop all
forwarding, a first step is to enable forwarding::

  sudo vim /etc/default/ufw
  # Change:
  # DEFAULT_FORWARD_POLICY="DROP"
  # to
  DEFAULT_FORWARD_POLICY="ACCEPT"

Then reload UFW:

::

  sudo ufw reload

Verify
------

Download the base 'ubuntu' container and run bash inside it while setting up
an interactive shell (type ``exit`` to exit)::

  docker run -i -t ubuntu /bin/bash

If you receive this message::

  # WARNING: Docker detected local DNS server on resolv.conf.Using default external servers: [8.8.8.8 8.8.4.4]

Then running the ``docker`` command with the ``dns`` parameter seems to solve
the problem::

  sudo docker run -dns 8.8.8.8 -dns 8.8.4.4 -i -t ubuntu /bin/bash

::

  i to open an interactive shell
  t to allocate a pseudo-tty

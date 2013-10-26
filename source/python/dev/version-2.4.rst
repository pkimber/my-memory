Version 2.4
***********

Links
=====

- `Installing Python 2.4 on Ubuntu 10.04 Lucid Lynx`_

Ubuntu
======

To install python 2.4 and the development libraries:

32 bit
------

::

  cd ~/Downloads/python/
  wget http://mirror.aarnet.edu.au/pub/ubuntu/archive/pool/main/p/python2.4/python2.4-minimal_2.4.6-1ubuntu3.2.9.10.1_i386.deb
  wget http://mirror.aarnet.edu.au/pub/ubuntu/archive/pool/main/p/python2.4/python2.4_2.4.6-1ubuntu3.2.9.10.1_i386.deb
  wget http://mirror.aarnet.edu.au/pub/ubuntu/archive/pool/main/p/python2.4/python2.4-dev_2.4.6-1ubuntu3.2.9.10.1_i386.deb
  sudo dpkg -i python2.4-minimal_2.4.6-1ubuntu3.2.9.10.1_i386.deb
  sudo dpkg -i python2.4_2.4.6-1ubuntu3.2.9.10.1_i386.deb
  sudo dpkg -i python2.4-dev_2.4.6-1ubuntu3.2.9.10.1_i386.deb

64 bit
------

::

  cd ~/Downloads/python/
  wget http://mirror.aarnet.edu.au/pub/ubuntu/archive/pool/main/p/python2.4/python2.4-minimal_2.4.6-1ubuntu3.2.9.10.1_amd64.deb
  wget http://mirror.aarnet.edu.au/pub/ubuntu/archive/pool/main/p/python2.4/python2.4_2.4.6-1ubuntu3.2.9.10.1_amd64.deb
  wget http://mirror.aarnet.edu.au/pub/ubuntu/archive/pool/main/p/python2.4/python2.4-dev_2.4.6-1ubuntu3.2.9.10.1_amd64.deb
  sudo dpkg -i python2.4-minimal_2.4.6-1ubuntu3.2.9.10.1_amd64.deb
  sudo dpkg -i python2.4_2.4.6-1ubuntu3.2.9.10.1_amd64.deb
  sudo dpkg -i python2.4-dev_2.4.6-1ubuntu3.2.9.10.1_amd64.deb

Virtual Environment
-------------------

To create a virtual environment using this version of python:

::

  virtualenv -v -p python2.4 --no-site-packages ~/repo/env/env-name/


.. _`Installing Python 2.4 on Ubuntu 10.04 Lucid Lynx`: http://davidjb.com/blog/2010/05/installing-python-2-4-on-ubuntu-10-04-lucid-lynx


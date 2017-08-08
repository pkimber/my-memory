Ember - Getting Started
***********************

.. highlight:: bash

From `Quick Start`_

Install Node and ``npm``::

  curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -e
  sudo npm install npm -g

Install ``ember-cli``::

  sudo npm install -g ember-cli@2.14.0

Create an application::

  ember new ember-quickstart

Run the application::

  cd ember-quickstart
  ember server

.. note:: ``watchman`` doesn't seem to work.
          The error message is here, `Linux inotify Limits`_

To build and install ``watchman``::

  sudo apt-get install libtool m4 automake pkg-config

  cd ~/repo/src/
  git clone https://github.com/facebook/watchman.git
  cd watchman/
  git checkout v4.6.0
  sudo apt-get install automake
  ./autogen.sh
  ./configure
  make
  sudo make install

To remove ``watchman``::

  cd watchman/
  sudo make uninstall


.. _`Linux inotify Limits`: https://facebook.github.io/watchman/docs/install.html#system-specific-preparation
.. _`Quick Start`: https://guides.emberjs.com/v2.7.0/getting-started/quick-start/

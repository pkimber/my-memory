Ember - Getting Started
***********************

.. highlight:: bash

From `Quick Start`_

Install Node and ``npm``::

  curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
  apt install -y nodejs

To uninstall old versions of ember::

  sudo npm uninstall -g ember-cli
  sudo npm cache verify

Install ``ember-cli``::

  sudo npm install -g ember-cli@3.0.0-beta.2
  sudo npm install -g yarn

Create an application (``--yarn`` makes the application *yarn aware*)::

  ember new myapp --no-welcome --yarn

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

Install
*******

.. highlight:: bash

Links
=====

http://nodejs.org/

Install
=======

Using a repository
------------------

.. note:: Ember requires node version 4.

From https://github.com/nodesource/distributions::

  curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
  sudo apt install nodejs

Update ``npm``::

  sudo npm install -g npm

or:

.. note:: The following command installs ``nodejs`` which is the same as the
          old ``node`` command.  If you need to use the ``node`` command, then
          install ``nodejs-legacy`` as well.

.. note:: The version of node installed by Ubuntu 16.10 is not supported by
          Ember.

From `Installing Node.js via package manager`_::

  sudo apt install nodejs npm

Using Node Version Manager
--------------------------

From `Node Version Manager`_ and `How To Install Node.js on Ubuntu`_

Prerequisites::

  sudo apt-get update
  sudo apt-get install build-essential libssl-dev

Install node version manager::

  curl https://raw.githubusercontent.com/creationix/nvm/v0.10.0/install.sh | bash
  source ~/.profile

Install node::

  nvm install 0.10.29
  nvm install 4.3.1

To use this version of node in another shell::

  nvm use 0.10.29

Sample
======

Here is the sample code from the node home page: example-web-server.js_::

  $ node ~/repo/sample/javascript/node/example-web-server.js
  Server running at http://127.0.0.1:8000/

...browse to http://127.0.0.1:8000/


.. _`How To Install Node.js on Ubuntu`: https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-16-04
.. _`Installing Node and npm`: http://joyeur.com/2010/12/10/installing-node-and-npm/
.. _`Installing Node.js via package manager`: https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
.. _`Node Package Manager`: http://npmjs.org/
.. _`Node Version Manager`: https://github.com/creationix/nvm
.. _`use-nave.sh`: https://gist.github.com/579814#file_use_nave.sh
.. _example-web-server.js: http://toybox/hg/sample/file/tip/javascript/node/example-web-server.js
.. _nave: https://github.com/isaacs/nave

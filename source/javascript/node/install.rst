Install
*******

Links
=====

http://nodejs.org/

Install
=======

From `Node Version Manager`_ and
`How To Install Node.js on an Ubuntu 14.04 server`_

Prerequisites::

  sudo apt-get update
  sudo apt-get install build-essential libssl-dev

Install node version manager::

  curl https://raw.githubusercontent.com/creationix/nvm/v0.10.0/install.sh | bash
  source ~/.profile

Install node::

  nvm install 0.10.29

To use this version of node in another shell::

  nvm use 0.10.29

Sample
======

Here is the sample code from the node home page: example-web-server.js_::

  $ node ~/repo/sample/javascript/node/example-web-server.js
  Server running at http://127.0.0.1:8000/

...browse to http://127.0.0.1:8000/


.. _`How To Install Node.js on an Ubuntu 14.04 server`: https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-an-ubuntu-14-04-server
.. _`Installing Node and npm`: http://joyeur.com/2010/12/10/installing-node-and-npm/
.. _`Node Package Manager`: http://npmjs.org/
.. _`Node Version Manager`: https://github.com/creationix/nvm
.. _`use-nave.sh`: https://gist.github.com/579814#file_use_nave.sh
.. _example-web-server.js: http://toybox/hg/sample/file/tip/javascript/node/example-web-server.js
.. _nave: https://github.com/isaacs/nave

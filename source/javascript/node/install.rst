Install
*******

Links
=====

http://nodejs.org/

Installation instructions from:

- `Installing Node and npm`_
- `use-nave.sh`_

Install
=======

We start by installing nave_ (which creates virtual environments for
node.js)::

  mkdir ~/bin/
  mkdir ~/.nave/
  cd ~/.nave/
  wget http://github.com/isaacs/nave/raw/master/nave.sh
  chmod +x nave.sh
  ln -s $PWD/nave.sh ~/bin/nave

.. warning::

  The following step will take a long time...

Create a virtual environment for ``node.js``::

  nave use 0.10.24
  exit

Install `Node Package Manager`_::

  nave use 0.10.24
  curl http://npmjs.org/install.sh | sh

  # or...
  nave use 0.10.24
  wget http://npmjs.org/install.sh
  sh install.sh

Usage
=====

To enter the virtual environment created above::

  nave use 0.10.24

To leave the virtual environment::

  exit

Sample
======

Here is the sample code from the node home page: example-web-server.js_::

  $ node ~/repo/sample/javascript/node/example-web-server.js
  Server running at http://127.0.0.1:8000/

...browse to http://127.0.0.1:8000/


.. _`Installing Node and npm`: http://joyeur.com/2010/12/10/installing-node-and-npm/
.. _`Node Package Manager`: http://npmjs.org/
.. _`use-nave.sh`: https://gist.github.com/579814#file_use_nave.sh
.. _example-web-server.js: http://toybox/hg/sample/file/tip/javascript/node/example-web-server.js
.. _nave: https://github.com/isaacs/nave

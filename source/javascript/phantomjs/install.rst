Install
*******

Links
=====

- http://code.google.com/p/phantomjs/wiki/QuickStart
- https://github.com/n1k0/casperjs
  ``Casper.js`` is a navigation utility for PhantomJS.

Prerequisites
=============

::

  sudo apt-get install libqt4-dev libqtwebkit-dev qt4-qmake

Install
-------

::

  cd ~/repo/src/
  git clone git://github.com/ariya/phantomjs.git
  cd phantomjs
  git checkout 1.2
  qmake-qt4 && make

  cd ~/bin/
  ln -s ~/repo/src/phantomjs/bin/phantomjs .

Sample
======

Copy the following code into ``loadspeed.js``:

.. code-block:: js

  var page = new WebPage(),
      t, address;

  if (phantom.args.length === 0) {
      console.log('Usage: loadspeed.js <some URL>');
      phantom.exit();
  } else {
      t = Date.now();
      address = phantom.args[0];
      page.open(address, function (status) {
          if (status !== 'success') {
              console.log('FAIL to load the address');
          } else {
              t = Date.now() - t;
              console.log('Loading time ' + t + ' msec');
          }
          phantom.exit();
      });
  }

Run the script

::

  phantomjs loadspeed.js http://www.google.com


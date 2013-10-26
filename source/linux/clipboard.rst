Clipboard
*********

xclip
=====

Install
-------

::

  sudo apt-get install xclip

Usage
-----

`Command Line to Clipboard`_

To copy a file to the *middle button* clipboard:

::

  cat robots.txt | xclip

To copy your public key to the clipboard:

::

  xclip -sel clip < ~/.ssh/id_rsa.pub


.. _`Command Line to Clipboard`: http://linuxtidbits.wordpress.com/2008/02/22/command-line-to-clipboard/

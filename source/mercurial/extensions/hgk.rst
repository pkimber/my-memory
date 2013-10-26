Hgk
***

Links
=====

- http://mercurial.selenic.com/wiki/HgkExtension
- http://www.saltycrane.com/blog/2008/04/how-to-install-mercurial-10-on-ubuntu/

Install
=======

We need to install Tcl/Tk:

::

  sudo apt-get install tk

Issues
------

- Note: if you get a ``/usr/bin/env: wish: No such file or directory error``,
  it means you need to install the Tk package (see above).

Configuration
=============

Edit your ``~/hgrc`` file and add the following:

::

  [extensions]
  hgk=

Usage
=====

::

  hg help view
  hg view
  hg view 53


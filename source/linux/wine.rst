Wine
****

Links
=====

http://wiki.winehq.org/FAQ

Install (Ubuntu)
================

`Wine for Ubuntu and Ubuntu derivatives`_:

::

  sudo add-apt-repository ppa:ubuntu-wine/ppa
  sudo apt-get update
  sudo apt-get install wine

Applications
============

Install
-------

To install an application (you can just double click on the file):

- Change into the folder containing the ``exe``.
- Run ``wine`` followed by the name of the set-up file.  If the file name
  doesn't end in ``exe``, you can run ``wine start`` e.g:

  ::

    cd ~/Desktop
    wine FluffyBunnySetup.exe
    wine start FluffyBunnySetup.msi

  In most cases, you can just double click on the file...


.. _`Wine for Ubuntu and Ubuntu derivatives`: http://www.winehq.org/download/deb


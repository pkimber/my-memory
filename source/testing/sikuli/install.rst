Install
*******

Links
=====

- http://sikuli.org/

Install
=======

Dependencies
------------

::

  sudo apt-get install libcv2.1
  sudo apt-get install libcvaux2.1

Application
-----------

- Download Sikuli from http://sikuli.org/download.shtml.

  ::

    cd ~/Downloads/sikuli/
    wget http://launchpad.net/sikuli/sikuli-x/x1.0-rc2/+download/Sikuli-X-1.0rc2-linux-x86_64.zip

- Install

  ::

    cd ~/opt/
    unzip ~/Downloads/sikuli/Sikuli-X-1.0rc2-linux-x86_64.zip

Usage
=====

IDE
---

::

  ~/opt/Sikuli-X-1.0rc2-linux/Sikuli-IDE/sikuli-ide.sh

Script
------

::

  ~/opt/Sikuli-X-1.0rc2-linux/Sikuli-IDE/sikuli-ide.sh --stderr --r ~/dev/sikuli/learning.sikuli

Note: In this example, I think ``learning.sikuli`` is a folder name.


Build
*****

Build from Source
=================

`Unix Install`_

- Make sure python-dev is installed:

  ::

    apt-get install python-dev

- Download mercurial-0.9.5.tar.gz from
  http://www.selenic.com/mercurial/wiki/index.cgi/Download

- Extract and compile:

  ::

    tar xvzf /home/patrick/download/mercurial/mercurial-0.9.5.tar.gz
    cd mercurial-0.9.5/
    make install

- Test

  ::

    /usr/local/bin/hg debuginstall


.. _`Unix Install`: http://www.selenic.com/mercurial/wiki/index.cgi/UnixInstall


Subversion
**********

Links
=====

- http://bitbucket.org/durin42/hgsubversion/
- http://mercurial.selenic.com/wiki/HgSubversion

Dependencies
============

::

  sudo apt-get install python-subversion

... you might need these as well:

::

  sudo apt-get install swig
  sudo apt-get install python-svn

Install
=======

.. ---
.. sudo pip install hgsubversion
.. ---
..
..   ...or...

::

  cd ~/src
  hg clone https://pkimber@bitbucket.org/durin42/hgsubversion/
  cd hgsubversion/

Edit your ``~/.hgrc`` file and add the following:

::

  [extensions]
  rebase=
  svn=/home/patrick/src/hgsubversion/hgsubversion

Test
====

::

  sudo pip install nose

Usage
=====

::

  hg clone svn+http://wikir.googlecode.com/svn/trunk/ wikir


..   Tried "<<<hg convert>>>" (with no success) and "<<<hgsvn>>>":
..
.. *hgsvn
..
..   http://cheeseshop.python.org/pypi/hgsvn
..
.. **Install
..
..   Using :doc:`../python/easy install`:
..
.. ---
.. \tools\Python25\Scripts\easy_install hgsvn
.. ---
..
.. **Usage
..
.. ---
.. \tools\python25\scripts\hgimportsvn file:///c:/repository/subversion/svn-1307/
.. cd svn-1307
.. hgpullsvn
.. ---
..
.. *convert
..
.. **Configuration
..
..   Add the following to your <<<Mercurial.ini>>> file:
..
.. ---
.. [extensions]
.. hgext.convert=
.. ---
..
..   On my workstation the <<<Mercurial.ini>>> file is in:
..
.. ---
.. C:\Documents and Settings\patrick\Mercurial.ini
.. ---
..
.. **python
..
..   Install the
..   :doc:`../subversion/python`
..
.. *Convert
..
.. ---
.. hg convert file:///c:/repository/subversion/svn-1307
.. ---
..
..   ...it doesn't work:
..
.. ---
.. hg convert file:///c:/repository/subversion/svn-1307/
.. assuming destination svn-1307-hg
.. initializing destination svn-1307-hg repository
.. abort: file:///c:/repository/subversion/svn-1307/: unknown repository type
.. ---
..
..   ...to see the problem add the <<<--debug>>> parameter:
..
.. ---
.. hg convert --debug file:///c:/repository/subversion/svn-1307/
.. ---
..
..   ...the problem is, "<<<subversion python bindings could not be loaded>>>"...
..
..   ...perhaps try using hgsvn_?
..


.. _hgsvn: http://cheeseshop.python.org/pypi/hgsvn


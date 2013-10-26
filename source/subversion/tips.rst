Tips
****

Colour
======

Two choices:

VIM
---

::

  svn diff | vim -R -

- ...or you can use ``svn diff | view -``.
- ...or you can add to your ``~/.bashrc`` file:

  ::

    function svndiff () {
        svn diff | vim -R -
        }

``colordiff``
-------------

*Install*

::

  sudo apt-get install colordiff

colordiff_:

*Usage*

Three alternatives:

- Edit ``~/.subversion/config``, and create/update the ``diff-cmd`` variable:

  ::

    diff-cmd = colordiff

- Simple bash command:

  ::

    svn diff | colordiff | less -R

- ...or to install as a function, add the following to ``~/.bashrc``:

  ::

    function svndiff () { svn diff $@ | colordiff | less -R; }

Checkout a folder which doesn't exist on your local drive.
==========================================================

If (for example) your repository contains these folders:

::

  client/
     john/
     edward/
     sam/

...and your local hard disk doesn't have ``sam`` checked out:

::

  client/
     john/
     edward/

...and you want to checkout ``sam`` without updating ``john`` or
``edward``, then use the ``svn`` command line client:

::

  cd client
  svn update sam


.. _colordiff: http://colordiff.sourceforge.net/

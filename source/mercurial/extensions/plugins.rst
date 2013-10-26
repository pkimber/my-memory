Plugins
*******

Colour
======

- `Color Extension`_
  The status command will add color to its output to reflect file status.

  ::

    [extensions]
    color =

Note: Will not work with ``more``!

fetch
=====

All the commands (pull, update, merge and checkin if required) can be handled
in one go using ``hg fe``.

If you want to use it you have to add the following lines into the repository
``hgrc`` or your personal one:

::

  [extensions]
  hgext.fetch=

GIT
===

- :doc:`hg-git`


.. _`Color Extension`: http://www.selenic.com/mercurial/wiki/ColorExtension


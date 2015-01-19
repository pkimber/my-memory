merge
*****

Links
=====

- `Are there other people who are annoyed by hg resolve?`_

Internal Merge
==============

Prerequisites
-------------

Check you have the following in your ``~/.hgrc`` file::

  [ui]
  merge = internal:merge

Usage
-----

::

  hg ci -m "..."
  abort: unresolved merge conflicts (see hg resolve)

Use ``hg resolve -l`` to list the conflicting files::

  hg resolve -l
  U documents/wip.apt

Run ``hg resolve -m FILE...`` to mark them as resolved after fixing the
conflicts::

  hg resolve -m wip.apt

Undo
====

To undo a merge::

  hg update -C .


.. _`Are there other people who are annoyed by hg resolve?`: http://www.nabble.com/hg-resolve-td20932378.html

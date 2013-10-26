patch
*****

`How to create and apply a patch with Subversion`_

Usage
=====

Create a ``diff`` file:

::

  svn diff > ~/fix_ugly_bug.diff

Apply the patch:

::

  patch -p0 -i ~/fix_ugly_bug.diff

The ``-p0`` option makes sure that all files can be found correctly (this has
to do with something called *zero directories*).

The ``-i`` option tells ``patch`` what to use as input, in this case the
``fix_ugly_bug.diff`` file in your home directory.


.. _`How to create and apply a patch with Subversion`: http://ariejan.net/2007/07/03/how-to-create-and-apply-a-patch-with-subversion/


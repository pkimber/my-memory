Tips
****

diffs in commit message
=======================

Install
--------

Copy the example script to a folder on your path (make sure the script can be
executed):

::

  cp /usr/share/doc/mercurial/examples/hgeditor ~/opt/

Comment out the following line (line 48 on my install):

::

  # $EDITOR "$HGTMP/msg" "$HGTMP/diff" || exit $?

And replace with the following line:

::

  vim "+e $HGTMP/diff" '+set buftype=help filetype=diff' "+vsplit $HGTMP/msg" || exit $?

Edit your ``~/.hgrc`` file and add the following:

::

  [ui]
  editor = $HOME/opt/hgeditor

Usage
-----

When you are ready to commit a change:

::

  hg ci

URL
===

To convert a URL like this:

http://toybox/hg/core/file/26cf48fa9384/development/sample-commons-cli/

into something which will always point to the latest version, just replace
the *funny number*, ``26cf48fa9384`` in this case, with ``tip`` e.g:

http://toybox/hg/core/file/tip/development/sample-commons-cli/


.. _`Finding and fixing mistakes`: http://hgbook.red-bean.com/read/finding-and-fixing-mistakes.html
.. _`revert back to old version and continue from there`: http://stackoverflow.com/questions/2540454/mercurial-revert-back-to-old-version-and-continue-from-there
.. _`Difference between Revert and Update in Mercurial`: http://stackoverflow.com/questions/2506803/difference-between-revert-and-update-in-mercurial
.. _`Bare-bones basic Mercurial for Subversion users`: http://nedbatchelder.com/text/hgsvn.html

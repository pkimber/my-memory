bang
****

`[ILUG] Shell tip: bang commands...`_

Most modern shells support csh's bang commands - bash, tcsh and zsh
all do.  While some bang commands don't work in all those shells, all
of the following do.  The plus side to using them is that no matter what
shell you're using, these shortcuts will work.

For the purposes of these tips, every tip will assume these are the last
three commands you ran:

::

  % which firefox
  % make
  % ./foo -f foo.conf
  % vi foo.c bar.c

Getting stuff from the last command:

::

  Full line:     % !!            becomes:   % vi foo.c bar.c
  Last arg :     % svn ci !$     becomes:   % svn ci bar.c
  All args :     % svn ci !*     becomes:   % svn ci foo.c bar.c
  First arg:     % svn ci !!:1   becomes:   % svn ci foo.c


.. _`[ILUG] Shell tip: bang commands...`: http://mail.linux.ie/pipermail/ilug/2006-May/087799.html

bash shell
**********

.. highlight:: bash

Links
=====

- :doc:`shortcut-keys`
- :doc:`../../vim/plugin/bash`
- http://www.tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html
- http://www.faqs.org/docs/bashman/bashref_68.html
- http://www.zieg.com/faqs/cygwin/
- `bash Tricks From the Developers of the O'Reilly Network`_
- `Linux tip: Bash test and comparison functions`_
- `bash parameter expansion cheatsheet`_
- `BASH debugger`_
- `Turbocharge your terminal`_
- `Tutorial: The best tips & tricks for bash, explained`_
- `Effective bash shorthand`_
- `Edit long command lines`_
  Bash allows you to hit Ctrl+x Ctrl+e to edit your current command in your
  "preferred" editor...

Colour
======

To enable color (syntax) highlighting in the terminal window, start by
checking ``~/.bashrc`` - it will often contain good settings which can
just be un-commented.

Commands
========

alias
-----

This is an alias I created in my cygwin ``~/.bash_login`` file::

  alias cd-p="cd /cygdrive/c/projects/"
  alias cd-mem="cd //g1/PatrickK/documents/my-memory/"

To list current aliases::

  alias

echo
----

Print to the screen::

  echo java $OPTIONS

set
---

:doc:`environment`

:doc:`snippets/date`

Command Completion
==================

`An introduction to bash completion`_

Can be loaded by typing into your shell::

  . /etc/bash_completion

You can put that line (with the ``.`` ) in ``~/.bashrc``.

Once this is done you'll be able to TAB-complete many common arguments to
programs, for example::

  $ apt-get upd[TAB]
  $ apt-get upg[TAB]

To revert to standard filename expansion try *Shift*, *Tab* or *Esc*, *Tab*.

Comments
========

`Special Characters`_

Lines beginning with a ``#`` (with the exception of ``#!``) are comments and
will not be executed::

  # This line is a comment.
  echo "A comment will follow." # Comments may also occur following the end of a command.

Configuration
=============

Reload
------

To reload a configuration file (I think this creates a new shell)::

  source ~/.bash_login

Note: ``.`` is a shortcut for ``source``...

Editing
=======

Chaining Commands
-----------------

Commands separated by a ``;`` are executed sequentially; the shell waits for
each command to terminate in turn.  The return status is the exit status of the
last command executed::

  clear;date

Commands separated by ``&&`` are executed in turn provided that the
previous command has given a return value of true (zero)::

  command-1 && command-2 && command-3 && ... command-n

History
-------

From `Bash tips and tricks`_:

To make bash append history instead of overwriting it, and makes it so that
each time the prompt is shown it writes out all the history::

  shopt -s histappend
  PROMPT_COMMAND=history -a

27/09/2011, Removed a couple of control characters from around ``history``
above.  Not sure if this is correct, or not.

See :doc:`shortcut-keys`.

To skip duplicate entries, add the following to ``~/.bashrc``::

  export HISTCONTROL=ignoreboth

or::

  export HISTCONTROL="ignoredups"

Long Command Lines
------------------

If you want to break up a command so that it fits on more than one line,
use a backslash (``\``) as the last character on the line.  Bash will print
the continuation prompt, usually a ``>``, to indicate that this is a
continuation of the previous line.

Environment
-----------

Command line editing was not working when I was using a Solaris server.
To enable command line editing type these commands when you log in::

  bash
  export PS1="\u@\h:\w> "

Control Flow
============

for
---

In this example, ``BING`` is a variable, and ``list.out`` contains a space
separated list of things::

  for BING in `cat list.out`; do echo $BING; done

**Note**:

- The classic form of command substitution uses backquotes  (`...`).
- Commands within backquotes (backticks) generate command line text.
- For more information see
  `Command substitution`_

  Another example from the `BASH Programming - Introduction HOW-TO`_:

::

  for i in $( ls ); do
      echo item: $i
  done

Execute
-------

::

  # Execute another script (do not fork or exec):
  . /etc/profile.d/alljava.sh

If... else...
-------------

::

  if [ -n "$JAVA_HOME" ]; then
      echo "JAVA_HOME is set to $JAVA_HOME"
  else
      # set JAVA_HOME etc
      . /etc/profile.d/alljava.sh
      echo "Setting JAVA_HOME to $JAVA_HOME"
  fi

Empty
-----

::

  # Test if variable is empty...
  if [ -n "$JAVA_HOME" ]; then

Files
=====

==================== ============================================
``~/.bashrc``        Default environment for all bash shells.
``~/.bash_profile``  Environment used for interactive shells.
==================== ============================================

Parameters
==========

Command line parameters::

  $1 $2 $3 $4

The number of command line parameters::

  $#

To get the result of the last command (this can be used at the command line)::

  $?

Test
====

The ``test`` builtin command returns **0** (**True**) or 1 (False), depending
on the evaluation of an expression::

  > test 3 -gt 4 && echo True || echo False
  False

``-gt`` operator performs an arithmetic comparison.  You can compare arithmetic
values using one of ``-eq``, ``-ne``, ``-lt``, ``-le``, ``-gt``, or ``-ge``.

You can also use square brackets: ``test expr`` and ``[ expr ]`` are
equivalent.

You can examine the return value by displaying ``$?``::

  > [ "abc" != "def" ];echo $?
  0

You can compare strings using the operators ``=``, ``!=``, ``<``, and ``>``.
The unary operator ``-z`` tests for a null string, while ``-n`` or no operator
at all returns True if a string is not empty.

Note: the ``<`` and ``>`` operators are also used by the shell for redirection,
so you must escape them using ``\\<`` or ``\\>``::

  ~> test "abc" = "def" ;echo $?
  1
  ~> [ "abc" != "def" ];echo $?
  0
  ~> [ "abc" \< "def" ];echo $?
  0
  ~> [ "abc" \> "def" ];echo $?
  1
  ~> [ "abc" \< "abc" ];echo $?
  1
  ~> [ "abc" \> "abc" ];echo $?
  1

In this example, the value of the ``HOME`` variable is tested to see if it is a
directory using the ``-d`` unary operator::

  > test -d "$HOME" ;echo $?
  0

Some of the more common file tests:

============= =====================================================
**Operator**  **Characteristic**
============= =====================================================
``-d``        Directory
``-e``        Exists (also ``-a``)
``-f``        Regular file
``-h``        Symbolic link (also ``-L``)
``-p``        Named pipe
``-r``        Readable by you        
``-s``        Not empty
``-S``        Socket
``-w``        Writable by you
``-N``        Has been modified since last being read
============= =====================================================

In addition to the unary tests above, you can compare two files with the binary
operators:

============  ================================================================
**Operator**  **True if**
============  ================================================================
``-nt``       Test if file1 is newer than file 2.
              The modification date is used for this and the next comparison.
``-ot``       Test if file1 is older than file 2.
``-ef``       Test if file1 is a hard link to file2.
============  ================================================================

Use ``help test`` for more options.

The ``-o`` operator allows you to test various shell options that may be set
using ``set -o`` option.

The ``-a`` and ``-o``  options allow you to combine expressions with logical
AND and OR, respectively, while the unary ``!`` operator inverts the sense of
the test::

  ~> test 1 = 1 -a 2 \< 3 ; echo $?
  0
  ~> test 1 = 1 -o 2 \< 2 ; echo $?
  0

You may use parentheses to group expressions and override the default
precedence.  Remember that the shell will normally run an expression between
parentheses in a subshell, so you will need to escape the parentheses using
``\\(`` and ``\\)`` or enclosing these operators in single or double quotes.

vi Mode
=======

`Improve your interactive programming using the vi mode...`_

To enable vi mode in bash, add to your ``.bashrc`` in your home directory::

  set -o vi


.. _`An introduction to bash completion`: http://www.debian-administration.org/articles/316
.. _`BASH debugger`: http://bashdb.sourceforge.net/
.. _`bash parameter expansion cheatsheet`: ../../misc/howto/linux/bash-parameter-expansion-cheatsheet.pdf
.. _`BASH Programming - Introduction HOW-TO`: http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-7.html
.. _`Bash tips and tricks`: http://richbradshaw.wordpress.com/2007/11/25/bash-tips-and-tricks/
.. _`bash Tricks From the Developers of the O'Reilly Network`: http://www.oreillynet.com/onlamp/blog/2005/04/bash_tricks_from_the_developer.html
.. _`Command substitution`: http://tldp.org/LDP/abs/html/commandsub.html#COMMANDSUBREF
.. _`Edit long command lines`: http://www.codekoala.com/blog/2009/another-bash-tip/
.. _`Effective bash shorthand`: http://eriwen.com/bash/effective-shorthand/
.. _`Improve your interactive programming using the vi mode...`: http://www.tortoiseandachilles.com/2007/09/improve-your-interactive-programming.html
.. _`Linux tip: Bash test and comparison functions`: http://www-128.ibm.com/developerworks/linux/library/l-bash-test.html?ca=dgr-lnxw07LinuxBashTest
.. _`Special Characters`: http://tldp.org/LDP/abs/html/special-chars.html
.. _`Turbocharge your terminal`: http://lifehacker.com/software/how-to/turbocharge-your-terminal-274317.php
.. _`Tutorial: The best tips & tricks for bash, explained`: http://www.linuxtutorialblog.com/post/tutorial-the-best-tips-tricks-for-bash

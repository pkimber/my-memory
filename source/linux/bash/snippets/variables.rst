Variables
*********

.. highlight:: bash

The first thing that the shell does when executing a particular line of code is
substitute the value of ``$i``, just like your favorite editor's search and
replace function would
(from  `Compare integer in bash, unary operator expected`_).

Comparison
==========

.. warning:: Always quote variables when doing comparisons.

From `Compare integer in bash, unary operator expected`_::

  if [ "$i" -ge 2 ] ; then
      ...
  fi

..."your problem arises from the fact that $i has a blank value when your
statement fails.  Always quote your variables when performing comparisons if
there is the slightest chance that one of them may be empty"...

Empty
=====

From `How to check if a variable is set in bash`_::

  if [ -z ${VAR+x} ]; then
      echo "VAR is unset"
  else
      echo "VAR is set to '$VAR'"
  fi

Also see `The classic test command`_ for this::

  if [ -z "$VAR" ]; then

Set
===

::

  VAR='patrick'
  echo $VAR

.. warning:: You cannot have spaces around your ``=`` sign!


.. _`Compare integer in bash, unary operator expected`: http://stackoverflow.com/questions/408975/compare-integer-in-bash-unary-operator-expected
.. _`How to check if a variable is set in bash`: http://stackoverflow.com/questions/3601515/how-to-check-if-a-variable-is-set-in-bash
.. _`The classic test command`: http://wiki.bash-hackers.org/commands/classictest

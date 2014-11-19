String
******

.. highlight:: bash

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


.. _`The classic test command`: http://wiki.bash-hackers.org/commands/classictest
.. _`How to check if a variable is set in bash`: http://stackoverflow.com/questions/3601515/how-to-check-if-a-variable-is-set-in-bash

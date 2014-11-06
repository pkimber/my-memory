Environment Variables
*********************

.. highlight:: bash

Links
=====

- :doc:`path`

Set
===

`Modifying the Bash Shell with the set Command`_

To set an environment variable::

  VARNAME=VALUE

To make other programs that use the variable aware of the new value enter the
command::

  export VARNAME

e.g::

  JAVA_HOME=/opt/coldfusionmx/runtime/jre;export JAVA_HOME

Unset
=====

::

  unset JAVA_HOME


.. _`Modifying the Bash Shell with the set Command`: http://www.hypexr.org/bash_tutorial.php#set

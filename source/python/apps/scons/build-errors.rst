Build Errors
************

Visual C++ - LNK1104
====================

`SCons FAQ`_

::

  LINK : fatal error LNK1104: cannot open file 'TEMPFILE'

To solve this issue add the following to your ``SConstruct`` file:

::

  import os
  env['ENV']['TMP'] = os.environ['TMP']


.. _`SCons FAQ`: http://www.scons.org/faq.php#SS_4_5

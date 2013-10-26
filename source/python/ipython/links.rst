ipython - Links
***************

.. highlight:: python

Extensions
==========

ipipe_.  The ipipe extension provides a handy way to browse and manipulate
tabular data, e.g. groups of files or environment variables.

Note: On Windows, you will need to install wxPython (:doc:`install`).

::

  ils
  ils("/wip")
  iwalk("/users/patrick/env", dirs=False)

::

  d = {'Peter': 44, 'Alison': 45, 'Barry': 21, 'Martin': 18}
  d | idump

  key   |value
  Barry |   21
  Martin|   18
  Alison|   45
  Peter |   44

::

  ienv

Learning
========

`using ipython as your default shell`_


.. _`using ipython as your default shell`: http://blog.afurlan.org/2009/10/29/using-ipython-your-default-shell/
.. _ipipe: http://projects.scipy.org/ipython/ipython/wiki/UsingIPipe

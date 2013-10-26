String
******

.. highlight:: python

Contains letters etc
====================

`Verify that a string only contains letters, numbers`_

::

  import string
  allowed = string.letters + string.digits + '_' + '-'

  def check_naive(mystring):
      return all(c in allowed for c in mystring)

Remove Newlines
===============

::

  import os
  'sam\nI\nam\n'.replace(os.linesep, ' ')

Lowercase First Character of a String
=====================================

`How to down-case the first character of a string in Python`_

::

  func = lambda s: s[:1].lower() + s[1:] if s else ''

  >>> func(None)
  >>> ''
  >>> func('')
  >>> ''
  >>> func('MARTINEAU')
  >>> 'mARTINEAU'


.. _`How to down-case the first character of a string in Python`: http://stackoverflow.com/questions/3840843/how-to-downcase-the-first-character-of-a-string-in-python
.. _`Verify that a string only contains letters, numbers`: http://stackoverflow.com/questions/89909/in-python-how-to-i-verify-that-a-string-only-contains-letters-numbers-undersco

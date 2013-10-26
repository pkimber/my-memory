Snippets
********

.. highlight:: python

email
=====

http://gist.github.com/47987
Check if an email address exists without sending an email.

String
======

Replace multiple spaces with a single space
-------------------------------------------

`Compressing consecutive spaces`_

::

  >>> test = "a  b c d   efdd  slkj   sdfdsfl"
  >>> " ".join(test.split())
  'a b c d efdd slkj sdfdsfl'

Strip Non Printable Characters
------------------------------

`Stripping non printable characters from a string in python`_

::

  def filter_non_printable(str):
      return ''.join([c for c in str if ord(c) > 31 or ord(c) == 9])


.. _`Compressing consecutive spaces`: http://mail.python.org/pipermail/python-list/2007-July/620255.html
.. _`Stripping non printable characters from a string in python`: http://stackoverflow.com/questions/92438/stripping-non-printable-characters-from-a-string-in-python


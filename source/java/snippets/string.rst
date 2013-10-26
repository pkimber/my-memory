String
******

AlphaNumeric
============

Remove all **non**-alphanumeric characters from a string (and replace with
a space):

::

  final String result = text.replaceAll("[^a-zA-Z0-9]", " ");

Spaces
======

Remove multiple white-space characters from a string (replacing each group of
white space characters with a single space):

::

  final String result = text.replaceAll("\\b\\s{2,}\\b", " ");

Note: You might want to ``trim`` the string after...


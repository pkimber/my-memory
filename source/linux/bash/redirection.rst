Redirection
***********

Links
=====

- `IO Redirection`_

Sample
======

To re-direct standard error to a file:

::

  ./manage_test 2> ~/repo/temp/temp.out

Usage
=====

::

   1>filename
      # Redirect stdout to file "filename."
   1>>filename
      # Redirect and append stdout to file "filename."
   2>filename
      # Redirect stderr to file "filename."
   2>>filename
      # Redirect and append stderr to file "filename."
   &>filename
      # Redirect both stdout and stderr to file "filename."


.. _`IO Redirection`: http://tldp.org/LDP/abs/html/io-redirection.html


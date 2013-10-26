awk
***

Links
=====

- `Why you should know just a little Awk`_

Sample
======

For this file, ``logs.txt`` (from the link above):

::

  07.46.199.184 [28/Sep/2010:04:08:20] "GET /robots.txt HTTP/1.1" 200 0 "msnbot"
  123.125.71.19 [28/Sep/2010:04:20:11] "GET / HTTP/1.1" 304 -  "Baiduspider"

::

  $ awk '{print $0}' logs.txt
  07.46.199.184 [28/Sep/2010:04:08:20] "GET /robots.txt HTTP/1.1" 200 0 "msnbot"
  123.125.71.19 [28/Sep/2010:04:20:11] "GET / HTTP/1.1" 304 -  "Baiduspider"

  $ awk '{print $1}' logs.txt
  07.46.199.184
  123.125.71.19

The special variable, ``NF``, contains the number of fields in the current
line:

::

  $ awk '{print $1, $(NF-2) }' logs.txt
  07.46.199.184 200
  123.125.71.19 304

Another variable is ``NR``, is the row number being currently processed:

::

  $ awk '{print NR ") " $1 " -> " $(NF-2)}' logs.txt
  1) 07.46.199.184 -> 200
  2) 123.125.71.19 -> 304


.. _`Why you should know just a little Awk`: http://gregable.com/2010/09/why-you-should-know-just-little-awk.html



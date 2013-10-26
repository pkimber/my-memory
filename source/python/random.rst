random
******

Links
=====

- http://docs.python.org/lib/module-random.html
- `How do I generate random numbers in Python?`_

Sample
------

http://toybox/hg/utility/file/tip/code_generator.py

choice
======

Return a random element from the non-empty sequence:

::

  import random
  valid_chars = '23456789ABCDEFGHJKLMNPQRSTUZWXYZ'
  print random.choice(valid_chars)

integers
========

::

  import random
  id = random.randrange(1, 999999)


.. _`How do I generate random numbers in Python?`: http://effbot.org/pyfaq/how-do-i-generate-random-numbers-in-python.htm


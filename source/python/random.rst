random
******

Links
=====

- `How do I generate random numbers in Python?`_
- https://docs.python.org/3.4/library/random.html

Sample
------

http://toybox/hg/utility/file/tip/code_generator.py

choice
======

Return a random element from the non-empty sequence::

  import random
  valid_chars = '23456789ABCDEFGHJKLMNPQRSTUZWXYZ'
  print random.choice(valid_chars)

integer
=======

::

  import random
  id = random.randrange(1, 999999)
  # or...
  id = random.randint(a, b) # a <= N <= b.


.. _`How do I generate random numbers in Python?`: http://effbot.org/pyfaq/how-do-i-generate-random-numbers-in-python.htm

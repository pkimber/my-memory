with
****

Links
=====

- `Newbie Nugget: Introduction to the with statement`_
- `Understanding Python's "with" statement`_

Sample
======

::

  from __future__ import with_statement

  with open('../documents/new-data-morrisons-competition.txt', 'rb') as f:
      for line in f:
          data = line.split('\t')


.. _`Newbie Nugget: Introduction to the with statement`: http://pypap.blogspot.com/2008/07/newbie-nugget-introduction-to-with.html
.. _`Understanding Python's "with" statement`: http://effbot.org/zone/python-with-statement.htm


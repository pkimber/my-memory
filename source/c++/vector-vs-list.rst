Vector vs List
**************

.. highlight:: c++

The Good
========

- Lists provide fast insertions (in amortized constant time) at the expensive of
  lookup.
- Lists support bidirectional iterators, but not random access iterators
- Iterators on lists tend to handle the removal and insertion of surrounding
  elements well.

The Gotchas
===========

- Lists are slow to search, and using the size function will take O(n) time.
- Searching for an element in a list will require O(n) time because it lacks
  support for random access.


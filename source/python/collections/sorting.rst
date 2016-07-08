Sorting
*******

.. highlight:: python

See sorted_...

Sample
======

::

  data = ('b', 'c', 'a')
  sorted(data)
  >>> ['a', 'b', 'c']

key example 1::

  from operator import attrgetter
  return sorted(result, key=attrgetter('document.document_code'))

key example 2::

  def key_issue_document_code(issue):
      return issue.document.document_code

  # elsewhere in the code...
  return sorted(result, key=key_issue_document_code)


.. _sorted: http://docs.python.org/library/functions.html#sorted

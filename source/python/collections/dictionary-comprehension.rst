Dictionary Comprehension
************************

.. highlight:: python

**Note** Only available in python 2.7 (and above)...

Sample
======

::

  >>> data = {'a-1': 'Andrea', 'p-2': 'Patrick'}
  >>> {k.replace('-', '_'):v for k, v in data.items()}
  {'a_1': 'Andrea', 'p_2': 'Patrick'}

::

  {i.name: i.as_widget() for i in form}

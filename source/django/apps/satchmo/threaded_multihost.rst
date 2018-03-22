threaded_multihost
******************

The ``threaded_multihost`` middleware gives us access to the ``request``
object (and other stuff).  To access the ``request`` object:

::

  from threaded_multihost import threadlocals
  request = threadlocals.get_current_request()


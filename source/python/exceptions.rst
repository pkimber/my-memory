Exceptions
**********

.. highlight:: python

- http://www.python.org/doc/2.4.2/tut/node10.html
- `Good catch all exceptions`_
  Are catch-all exceptions ever OK?

Catch
=====

::

  try:
      self.open()
  except HTTPError, e:
      print http error: ' + str(e)

Unknown
-------

...to catch exceptions of an unknown, try:

::

  try:
      somecode()
  except Exception, e:
      print e

or:

::

  try:
      somecode()
  except:
      print sys.exc_info()[0]

Finally
=======

**Note** for python/jython 2.1 see *Note* below...

`Try..Finally`_

::

  try:
      f = file('poem.txt')
      for line in f:
          print line,
  finally:
      f.close()

Note:

- `PEP 341: Unified try/except/finally`_
  *Until Python 2.5, the try statement came in two flavours.  You could use a
  finally block to ensure that code is always executed, or one or more except
  blocks to catch specific exceptions.  You couldn't combine both except
  blocks and a finally block*.

  To solve this problem nest a try, except within a try, finally e.g:

  ::

    cursor = None
    try:
        try:
            cursor = somecode()
        except Exception, e:
            print e
    finally:
        if cursor != None:
            c.close()

Throw
=====

To throw an exception:

::

  class MyError(Exception):
      def __init__(self, value):
          Exception.__init__(self)
          self.value = value
      def __str__(self):
          return repr(self.value)
          # or...
          # return repr('%s, %s' % (self.__class__.__name__, self.value))

::

  try:
      raise MyError(2*2)
  except MyError, e:
      print 'My exception occurred, value:', e.value

Exceptions
----------

::

  raise NotImplementedError("Village, has_school")

Rethrow
=======

raise_

If no expressions are present, raise re-raises the last exception that was active
in the current scope:

::

  raise

Stack Trace
===========

::

  import traceback
  try:
      raise Exception("print exception!")
  except:
      print traceback.format_exc()


.. _`Are catch-all exceptions ever OK?`: https://convore.com/python/are-catch-all-exceptions-ever-ok/
.. _`Good catch all exceptions`: http://blog.ianbicking.org/good-catch-all-exceptions.html
.. _`PEP 341: Unified try/except/finally`: http://docs.python.org/whatsnew/pep-341.html
.. _`Try..Finally`: http://www.ibiblio.org/g2swap/byteofpython/read/try-finally.html
.. _raise: http://docs.python.org/ref/raise.html

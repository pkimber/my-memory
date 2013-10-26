Superclass
**********

.. highlight:: python

I am really not sure how this is supposed to be done, but my *Django notes* and
*Original notes* are below...

Django notes...
---------------

::

  class MyModelForm(forms.ModelForm):
  
      def __init__(self, *args, **kwargs):
          super(MyModelForm, self).__init__(*args, **kwargs)
          # do some extra stuff...

Original notes...
-----------------

From `Python's super() considered super!`_ (I think the following is python 3
syntax):

::

  class LoggingDict(dict):
      def __setitem__(self, key, value):
          logging.info('Setting %r to %r' % (key, value))
          super().__setitem__(key, value)

`Python Class Inheritance issue`_:

::

  class MyClass(pk.Pagination):
      def __init__(self, db, parameters):
          pk.Pagination.__init__(self, db, parameters)


.. _`Python Class Inheritance issue`: http://stackoverflow.com/questions/927985/python-class-inheritance-issue
.. _`Python's super() considered super!`: http://rhettinger.wordpress.com/2011/05/26/super-considered-super/

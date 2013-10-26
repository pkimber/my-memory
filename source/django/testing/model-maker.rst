Model Maker Pattern
*******************

.. highlight:: python

Create model objects using the model maker pattern from *Speedily Practical
Large-Scale Tests* by Eric Rose (Mozilla):

- http://www.youtube .com/watch?v=1VZfL9JVgFg
- https://github.com/erikrose/presentations

Decorator
=========

::

  from functools import  wraps

  def with_save(func):
      """
      Decorate a model maker to add a ``save`` kwarg.

      If save=True, the model maker will save the object before returning it.
      """
      @wraps(func)
      def saving_func(*args, **kwargs):
          save = kwargs.pop('save', True)
          ret = func(*args, **kwargs)
          if save:
              ret.save()
          return ret

      return saving_func

Model Maker
===========

::

  import datetime
  import my.app.helper import with_save

  @with_save
  def village(**kwargs):
      """
      Return an empty model with enough stuff filled out that it can be saved.
      """
      defaults = {
          'created': datetime.datetime.now(),
      }
      defaults.update(kwargs)
      return VillageModel(**defaults)

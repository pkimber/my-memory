Lettuce
*******

.. highlight:: python

Links
=====

- http://lettuce.it/
- :doc:`../../django/testing/lettuce`
- :doc:`snippets/lettuce`

Learning
--------

- `Django Full Stack Testing and BDD with Lettuce and Splinter`_
- `Functional testing with Lettuce and Fabric`_

Logging
=======

::

  logger.debug(step.scenario.name)

Sample
======

- See ``README.rst`` in ``sample/python/lettuce/``.

Step
----

::

  @step(u'bake (\d+) cakes')
  def bake_x_cakes(step, cake_count):


.. _`Django Full Stack Testing and BDD with Lettuce and Splinter`: http://cilliano.com/blog/2011/02/07/django-bdd-with-lettuce-and-splinter/
.. _`Functional testing with Lettuce and Fabric`: http://www.rhonabwy.com/wp/2011/08/10/functional-testing-with-lettuce-and-fabric/

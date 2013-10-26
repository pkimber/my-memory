Attributes
**********

.. highlight:: html

Also see :doc:`css`...

class
=====

To set the ``class`` attribute for a tag::

  <div data-bind="attr: { 'class': tags }">

readonly
========

::

  <input
    type="text"
    id="id_cycle"
    value="Y"
    data-bind="attr: { readOnly: canCycle }">

Note: Not sure if we have to use ``canCycle()``...

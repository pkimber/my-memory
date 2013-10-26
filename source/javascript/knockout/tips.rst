Tips
****

.. highlight:: javascript

Force Refresh
=============

Notify subscribers that they should re-evaluate (`how to force view refresh`_):

::

  self.villageId.valueHasMutated();


Throttle
========

To delay re-evaluation until dependencies have stopped changing for a specified
period of time (see, the `The throttle extender`_):

::

  var upperCaseName = ko.computed(function() {
      return name().toUpperCase();
  }).extend({ throttle: 500 });


.. _`how to force view refresh`: http://stackoverflow.com/questions/8537397/knockout-js-how-to-force-view-refresh-instead-of-using-ko-observable
.. _`The throttle extender`: http://knockoutjs.com/documentation/throttle-extender.html

Observable Array
****************

.. highlight:: javascript

Find
====

Execute a function against each item in our array and return the first item
where the function evaluates to true:

::

  return ko.utils.arrayFirst(self.villages(), function (item) {
      return item.hasShop();
  });

Iterate
=======

::

  var select([]);
  ko.utils.arrayForEach(self.villages(), function(village) {
      select.push({
          id: village.id(),
          name: village.name(),
          is_delete: false
      });
  });

Remove
======

To remove all villages where the population is greater than 3000:

::

  self.villages.remove(function (item) {
      return item.population() > 3000;
  });

For details, see *remove and removeAll* in `Observable Arrays`_


.. _`Observable Arrays`: http://knockoutjs.com/documentation/observableArrays.html

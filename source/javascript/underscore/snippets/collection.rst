Collection
**********

.. highlight:: javascript

find
====

::

  found = _.find(self.villages(), function (village) {
      return village.id() === searchId();
  });

pluck
=====

::

  var stooges = [
        {name : 'moe', age : 40},
        {name : 'larry', age : 50},
        {name : 'curly', age : 60}
  ];
  _.pluck(stooges, 'name');

  => ["moe", "larry", "curly"]

::

  self.villages.pluck('population');

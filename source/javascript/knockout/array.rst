Array
*****

Compare
=======

From `Utility functions in KnockoutJS`_

Sample
------

::

  //find any unused categories
  viewModel.missingCategories = ko.dependentObservable(function() {
      //find out the categories that are missing from uniqueNames
      var differences = ko.utils.compareArrays(viewModel.categories, viewModel.uniqueCategories());
      //return a flat list of differences
      var results = [];
      ko.utils.arrayForEach(differences, function(difference) {
          if (difference.status === "deleted") {
              results.push(difference.value);
          }
      });
      return results;
  }, viewModel)

The result of ``ko.utils.compareArrays`` is an array that contains items with a
status property (``added``, ``deleted``, or ``retained``) and a ``value``
property holding the original item.

Operations
==========

From `10 things to know about KnockoutJS on day one`_:

An ``observableArray`` is actually just an observable.  They follow the same
rules and have the same features as observables.

An ``observableArray`` also has some extra methods added to it to perform basic
array operations.  These functions perform their action on the underlying array
and then notify subscribers that there was a change.  These methods include:

::

  pop
  push
  reverse
  shift
  sort
  splice
  unshift

In addition to the those operations, there are several other methods added for
common operations.  These include:

::

  remove
  removeAll
  destroy
  destroyAll
  replace
  indexOf

Sample
------

::

  //remove an item
  items.remove(someItem);

  //remove all items with the name "Bob"
  items.remove(function(item) {
      return item.name === "Bob"
  });
  //remove all items
  items.removeAll();

  //pass in an array of items to remove
  items.removeAll(itemsToRemove)

  //retrieve the index of an item
  items.indexOf(someItem);

  //replace an item
  item.replace(someItem, replaceItem);

Note: ``destroy``/``destroyAll`` work like ``replace``/``replaceAll``, except
they only mark the items as destroyed and don't actually remove them.


.. _`10 things to know about KnockoutJS on day one`: http://www.knockmeout.net/2011/06/10-things-to-know-about-knockoutjs-on.html
.. _`Utility functions in KnockoutJS`: http://www.knockmeout.net/2011/04/utility-functions-in-knockoutjs.html


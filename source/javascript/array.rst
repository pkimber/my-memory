Array
*****

.. highlight:: javascript

Usage
=====

Contains
--------

::

  /**
   * JavaScript function ``inArray``...
   *
   * Copied from:
   * http://stackoverflow.com/questions/237104/array-containsobj-in-javascript
   *
   * Modified to use a standard for/next loop to keep jshint (and us) happy.
   *
   * :param a:
   *      (Array) Check this array.
   * :param obj:
   *      To see if it contains this object.
   * :returns:
   *      (bool) ``true`` if the array contains the object.
   */
  function contains(a, obj) {
      "use strict";
      var i;
      for (i = 0; i < a.length; i += 1) {
          if (a[i] === obj) {
              return true;
          }
      }
      return false;
  }

Insert
------

Insert an item at the second element of the array:

::

  items.splice(2, 0, { name: "Splice", price: 222 })

Insert an item at the start of the array:

::

  items.splice(0, 0, { name: "Pat", price: 333 })

Iterate
-------

Safer to use the *C* like syntax:

::

  for (var i = 0; i < items.length; i += 1) {
      var name = items[i];

Alternatively:

::

  for (var i in items) {
      var name = items[i];

*Note*: ``i`` is an array index, not an item from the array **BUT** if any
custom properties have been added to the array, then the iterator (``i`` in
this example) will enumerate the extra properties.  For details, see
`Why you should stop using for... in to iterate`_.

Pop
---

::

  items.pop()

Push
----

::

  items.push({ name: "New item", price: 100 })

Remove
------

Remove one item from the third element of the array:

::

  items.splice(3, 1)

Type
----

From `Robust way to check if a variable is an array in Javascript`:

::

  function isArray(obj) {
      return Object.prototype.toString.call( obj ) === '[object Array]';
  }

Sample
======

::

  a = new Array();
  a[0] = 'hello';
  a[3] = 'alison';
  print(a)

  b = new Array('dairy', 3, 'farmer');
  print(b);

  // Array literals:
  c = ['one', 2, 3+5, { x:1, y:2},, 'two'];
  print(c);


.. _`Robust way to check if a variable is an array in Javascript`: http://singztechmusings.wordpress.com/2011/04/23/robust-way-to-check-if-a-variable-is-an-array-in-javascript/
.. _`Why you should stop using for... in to iterate`: http://www.prototypejs.org/api/array

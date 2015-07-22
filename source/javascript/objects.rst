Objects
*******

.. highlight:: javascript

Construct
=========

::

  var myMachine = {
      path: 'images/',
      speed: 3200,
      images: ["green.gif", "ref.gif", "orange.gif", "brown.gif"]
  }

::

  var params = {};
  params.name = 'Ram';
  params.id = 21;

Iterate
=======

::

  for (key in data) {
      if (data.hasOwnProperty(key)) {

Note:

- There is no guarantee on the order of the names.
- ``hasOwnProperty`` is required, because the ``for`` look will iterate over
  all functions and prototype properties of the object.

Helper
======

hasOwnProperty
--------------

::

  for (name in object) {
      if (object.hasOwnProperty(name)) {

Sample
======

Also see :doc:`prototype`::

  o = Object();
  o.x = 2;
  o.y = 3;
  print(o.x)
  print(o["x"])

  // an object literal:
  o = { x:2, y:3 }
  print(o.y)
  print(o['y'])

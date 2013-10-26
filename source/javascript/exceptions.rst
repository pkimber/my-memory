Exceptions
**********

.. highlight:: javascript

::

  try {
      ....
  } catch(err) {
      console.log(err);
  }

::

  throw "Cannot take the last element of an empty array.";

Note: Apparently we should be using ``throw new error``...

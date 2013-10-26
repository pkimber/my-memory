Functions
*********

Arguments
=========

To check out the arguments passed to a function:

::

  $(document).ready(function() {

      $('#myDiv').one('click', function() {
          // console.log(arguments);
      });

  });

The ``arguments`` object is not an array.  It is similar to an array, but does
not have any array properties except length.

Sample
======

::

  function multiply(x, y) {
      return x * y;
  }
  print(multiply(2,3))

  // using function literals (lambda):
  f = function(x, y) { return x + y; }
  print(f(3, 2))

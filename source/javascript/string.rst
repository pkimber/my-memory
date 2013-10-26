String
******

.. highlight:: javascript

Method
======

Length
------

::

  var b = 'I am a JavaScript hacker.'
  document.write(b.length)

Replace
-------

::

  var str = "Visit Exeter...";
  document.write(str.replace("Exeter", "London"));

Note: The first parameter is a substring or a regular expression.

Trim/Strip
----------

See :doc:`jquery/string`

Sample
======

Note: ``print`` is (probably) a doc:`narwhal` function...

::

  s = 'Patrick';
  print(s.length);

  // will print 'k':
  print(s.charAt(s.length - 1));

  // will return 'tri'...
  print(s.substring(2, 5));

  // will return 3...
  print(s.indexOf('r'));

  i = 5;
  print(i);

  // convert to string...
  print(i + '');
  print(String(i));
  print(i.toString());
  // will print the string '5.00':
  print(i.toFixed(2));

  var s = "foo";
  alert(s.indexOf("oo") != -1);

Standards
*********

- `Code Conventions for the JavaScript Programming Language`_
- `Principals of Writing Consistent, Idiomatic JavaScript`_
- `Dojo Style Guide`_

Class
=====

Use a capital letter for constructors e.g::

  function Animal() {
      this.breed = "test";
  }

*Note*: Make sure you construct class objects with the ``new`` keyword e.g::

  var f = new Animal();

Semicolons
==========

From *JavaScript, The Definitive Guide*, section 2.4, *Optional Semicolons*:

"*Omitting semicolons is not good programming practice; you should get in the
habit of using them*"...

Unicode
=======

From *JavaScript, The Definitive Guide*, section 2.1, *Character Set*:

JavaScript programs are written using the Unicode character set.


.. _`Code Conventions for the JavaScript Programming Language`: http://javascript.crockford.com/code.html
.. _`Dojo Style Guide`: - http://dojotoolkit.org/community/styleGuide
.. _`Principals of Writing Consistent, Idiomatic JavaScript`: https://github.com/rwldrn/idiomatic.js

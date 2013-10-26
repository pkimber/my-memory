Tutorial, Built in Objects
**************************

Introduction
============

- http://www.w3schools.com/js/js_obj_intro.asp

String
======

- http://www.w3schools.com/js/js_obj_string.asp
- String Object Reference
- http://www.w3schools.com/jsref/jsref_obj_string.asp

Methods
-------

match
-----

- http://www.w3schools.com/jsref/jsref_match.asp
- http://www.devguru.com/Technologies/ecmascript/quickref/string_match.html

This method is used to match a specifed regular expression against a string.
If one or more matches are made, an array is returned that contains all of the
matches.  Each entry in the array is a copy of a string that contains a match.
If no match is made, a null is returned.

This method is similar to ``indexOf()`` and ``lastIndexOf()``, but it returns
the specified string, instead of the position of the string.

**Note:** The match() method is case sensitive!

::

  myString = new String("DevGuru.com")
  myRE = new RegExp("guru", "i")

  results = myString.match(myRE)
  for(var i =0; i < results.length; i++){
      document.write(results[i]);
  }

::

  Guru

replace
-------

- http://www.w3schools.com/jsref/jsref_replace.asp

The ``replace()`` method is used to replace some characters with some other
characters in a string.

::

  var str = "Visit Microsoft!";
  document.write(str.replace(/microsoft/i, "W3Schools"));

+--------------------+--------------------------------------------------------------------+
| **Parameter**      | **Description**                                                    |
+====================+====================================================================+
| findstring         | Specifies a string value to find. To perform a global search add   |
|                    | ``g`` flag to this parameter and to perform a case-insensitive     |
|                    | search add an ``i`` flag.                                          |
+--------------------+--------------------------------------------------------------------+
| newstring          | Specifies the string to replace the found value from findstring.   |
+--------------------+--------------------------------------------------------------------+

**Note:** The ``replace()`` method is case sensitive.

Code Snippets
-------------

Trim function, :doc:`code-snippets`

Date
====

- http://www.w3schools.com/js/js_obj_date.asp

We define a Date object with the new keyword.

::

  var myDate=new Date()

- Date Object Reference: http://www.w3schools.com/jsref/jsref_obj_date.asp

Array
=====

- http://www.w3schools.com/js/js_obj_array.asp

Define
------

We define an Array object with the new keyword.  The following code line
defines an Array object called myArray:

::

  var myArray=new Array()

There are two ways of adding values to an array (you can add as many values
as you need to define as many variables you require).

::

  var mycars=new Array()
  mycars[0] = "Saab"
  mycars[1] = "Volvo"
  mycars[2] = "BMW"

::

  var mycars=new Array("Saab","Volvo","BMW")

You could also pass an integer argument to control the array's size:

::

  var mycars=new Array(3)
  mycars[0] = "Saab"
  mycars[1] = "Volvo"
  mycars[2] = "BMW"

Accessing
---------

::

  document.write(mycars[0])

Array Object Reference
http://www.w3schools.com/jsref/jsref_obj_array.asp

Boolean
=======

- http://www.w3schools.com/js/js_obj_boolean.asp

We define a Boolean object with the new keyword.

::

  var myBoolean = new Boolean()

All the following lines of code create Boolean objects with an initial value
of false:

::

  var myBoolean=new Boolean()
  var myBoolean=new Boolean(0)
  var myBoolean=new Boolean(null)
  var myBoolean=new Boolean("")
  var myBoolean=new Boolean(false)
  var myBoolean=new Boolean(NaN)

Boolean Object Reference:
http://www.w3schools.com/jsref/jsref_obj_boolean.asp

Math Object
===========

- http://www.w3schools.com/js/js_obj_math.asp
- Math Object Reference
  http://www.w3schools.com/jsref/jsref_obj_math.asp

HTML DOM Objects
================

- http://www.w3schools.com/js/js_obj_htmldom.asp
- Examples
  http://www.w3schools.com/js/js_examples_3.asp

window
------

- http://www.w3schools.com/htmldom/dom_obj_window.asp
  The following code returns the search parameter from the url in the address bar.

  ::

    window.top.location.search

Browser Detection
=================

- http://www.w3schools.com/js/js_browser.asp

Cookies
=======

- http://www.w3schools.com/js/js_cookies.asp

Form Validation
===============

- http://www.w3schools.com/js/js_form_validation.asp

Animation
=========

- http://www.w3schools.com/js/js_animation.asp

Image Maps
==========

- http://www.w3schools.com/js/js_image_maps.asp

Timing Events
=============

- http://www.w3schools.com/js/js_timing.asp


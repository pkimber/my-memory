Tutorial
********

How To...
=========

The HTML ``<script>`` tag is used to insert a JavaScript into an HTML page.

http://www.w3schools.com/js/js_howto.asp

::

  <html>
  <body>

  <script type="text/javascript">
      <!--
      document.write("Hello World!")
      //-->
  </script>

  </body>
  </html>

In general, semicolons are  optional!  However, semicolons are required if
you want to put more than one statement on a single line.

Browsers that do not support JavaScript will display the script as page
content. To prevent them from doing this, we may use the HTML comment tag:

Where To...
===========

http://www.w3schools.com/js/js_whereto.asp

Scripts to be executed when they are called, or when an event is triggered,
go in the head section. When you place a script in the head section, you
will ensure that the script is loaded before anyone uses it.

Scripts to be executed when the page loads go in the body section. When you
place a script in the body section it generates the content of the page.

::

  <html>
  <head>
      <script type="text/javascript">
      ....
      </script>
  </head>
  <body>
      <script type="text/javascript">
      ....
      </script>
  </body>

Using an External JavaScript
----------------------------

Sometimes you might want to run the same JavaScript on several pages,
without having to write the same script on every page.

To simplify this, you can write a JavaScript in an external file. Save the
external JavaScript file with a .js file extension.

Note: The external script cannot contain the <script> tag!

To use the external script, point to the .js file in the "src" attribute of
the <script> tag:

::

  <html>
  <head>
      <script src="xxx.js"></script>
  </head>
  <body>
  </body>
  </html>

Note: Remember to place the script exactly where you normally would write the
script!

Variables
=========

http://www.w3schools.com/js/js_variables.asp

Rules for variable names:

- Variable names are case sensitive
- They must begin with a letter or the underscore character

You can assign a value to a variable like this:

::

  var strname = "Hege"

Or like this:

::

  strname = "Hege"

...the ``var`` keyword is used to declare local (as opposed to global)
variables.

When you declare a variable within a function, the variable can only be
accessed within that function. When you exit the function, the variable is
destroyed.  These variables are called local variables. You can have local
variables with the same name in different functions, because each is
recognized only by the function in which it is declared.

If you declare a variable outside a function, all the functions on your page
can access it.  The lifetime of these variables starts when they are declared,
and ends when the page is closed.

If...Else Statements
====================

http://www.w3schools.com/js/js_if_else.asp

::

  <script type="text/javascript">
      var d = new Date()
      var time = d.getHours()
      if (time < 10)
      {
          document.write("<b>Good morning</b>")
      }
      else if (time > 10 && time < 16)
      {
          document.write("<b>Good day</b>")
      }
      else
      {
          document.write("<b>Hello World!</b>")
      }
  </script>

Switch Statement
================

::

  <script type="text/javascript">
      var d = new Date()
      theDay = d.getDay()
      switch (theDay)
      {
          case 5:
              document.write("Finally Friday")
              break
          case 6:
              document.write("Super Saturday")
              break
          case 0:
              document.write("Sleepy Sunday")
              break
          default:
              document.write("I'm looking forward to this weekend!")
      }
  </script>

Operators
=========

http://www.w3schools.com/js/js_operators.asp

Popup Boxes
===========

http://www.w3schools.com/js/js_popup.asp

Alert
-----

When an alert box pops up, the user will have to click "OK" to proceed.

::

  alert("sometext")

Confirm
-------

When a confirm box pops up, the user will have to click either "OK" or
"Cancel" to proceed.

If the user clicks "OK", the box returns true. If the user clicks "Cancel",
the box returns false.

::

  confirm("sometext")

Prompt
------

When a prompt box pops up, the user will have to click either "OK" or "Cancel"
to proceed after entering an input value.

If the user clicks "OK" the box returns the input value. If the user clicks
"Cancel" the box returns null.

::

  prompt("sometext","defaultvalue")

Functions
=========

http://www.w3schools.com/js/js_functions.asp

You may call a function from anywhere within the page (or even from other
pages if the function is embedded in an external .js file).

Functions are defined at the beginning of a page, in the <head> section.

::

  <html>
  <head>
      <script type="text/javascript">
      function displaymessage()
      {
          alert("Hello World!")
      }
      </script>
  </head>

  <body>
  <form>
      <input type="button" value="Click me!" onclick="displaymessage()" >
  </form>
  </body>
  </html>

If the line: ``alert("Hello world!!")``, in the example above had not been
written within a function, it would have been executed as soon as the line was
loaded. Now, the script is not executed before the user hits the button. We
have added an onClick event to the button that will execute the function
displaymessage() when the button is clicked.

The return Statement
--------------------

The return statement is used to specify the value that is returned from the
function.

So, functions that are going to return a value must use the return statement.

::

  function prod(a,b)
  {
      x = a * b
      return x
  }

When you call the function above, you must pass along two parameters:

::

  product = prod(2, 3)

JavaScript does not support passing by reference. It passes its parameters by
value only, http://www.webreference.com/js/tips/010210.html.


For Loop
========

http://www.w3schools.com/js/js_loop_for.asp

::

  <html>
  <body>
      <script type="text/javascript">
      var i = 0
      for(i = 0; i <= 10; i++)
      {
          document.write("The number is " + i)
          document.write("<br />")
      }
      </script>
  </body>
  </html>

While Loop
==========

http://www.w3schools.com/js/js_loop_while.asp

while
-----

::

  <html>
  <body>
      <script type="text/javascript">
          var i = 0
          while (i <= 10)
          {
              document.write("The number is " + i)
              document.write("<br />")
              i = i + 1
          }
      </script>
  </body>
  </html>

do... while
-----------

::

  <html>
  <body>
      <script type="text/javascript">
          var i = 0
          do
          {
              document.write("The number is " + i)
              document.write("<br />")
              i = i + 1
          }
          while (i < 0)
      </script>
  </body>
  </html>

Break and Continue
==================

http://www.w3schools.com/js/js_break.asp

The break command will break the loop and continue executing the code that
follows after the loop (if any).

The continue command will break the current loop and continue with the next
value.

For...In Statement
==================

http://www.w3schools.com/js/js_loop_for_in.asp

The for...in statement is used to loop (iterate) through the elements of an
array or through the properties of an object.

::

  <html>
  <body>
      <script type="text/javascript">
          var x
          var mycars = new Array()
          mycars[0] = "Saab"
          mycars[1] = "Volvo"
          mycars[2] = "BMW"

          for (x in mycars)
          {
              document.write(mycars[x] + "<br />")
          }
      </script>
  </body>
  </html>

Events
======

http://www.w3schools.com/js/js_events.asp

By using JavaScript, we have the ability to create dynamic web pages.
Events are actions that can be detected by JavaScript.

Every element on a web page has certain events which can trigger JavaScript
functions.  For example, we can use the onClick event of a button element to
indicate that a function will run when a user clicks on the button. We define
the events in the HTML tags.

Examples of events:

- A mouse click
- A web page or an image loading
- Mousing over a hot spot on the web page
- Selecting an input box in an HTML form
- Submitting an HTML form
- A keystroke

Note: Events are normally used in combination with functions, and the function
will not be executed before the event occurs!

For a complete reference of the events recognized by JavaScript, go to
http://www.w3schools.com/jsref/jsref_events.asp.

Try...Catch Statement
=====================

http://www.w3schools.com/js/js_try_catch.asp

The example below contains a script that is supposed to display the message
"Welcome guest!" when you click on a button. However, there's a typo in the
message() function. alert() is misspelled as adddlert(). A JavaScript error
occurs:

::

  <html>
  <head>
      <script type="text/javascript">
      var txt=""
      function message()
      {
          try
          {
              adddlert("Welcome guest!")
          }
          catch(err)
          {
              txt="There was an error on this page.\n\n"
              txt+="Click OK to continue viewing this page,\n"
              txt+="or Cancel to return to the home page.\n\n"
              if(!confirm(txt))
              {
                  document.location.href="http://www.w3schools.com/"
              }
          }
      }
      </script>
  </head>

  <body>
      <input type="button" value="View message" onclick="message()" />
  </body>
  </html>

Throw Statement
===============

http://www.w3schools.com/js/js_throw.asp

::

  <html>
  <body>
      <script type="text/javascript">
          var x=prompt("Enter a number between 0 and 10:","")
          try
          {
              if(x>10)
                  throw "Err1"
              else if(x<0)
                  throw "Err2"
          }
          catch(er)
          {
              if(er=="Err1")
                  alert("Error! The value is to high")
              if(er == "Err2")
                  alert("Error! The value is to low")
          }
      </script>
  </body>
  </html>

onerror
=======

Using the onerror event is the **old** standard solution to catch errors in a
web page.

http://www.w3schools.com/js/js_onerror.asp

Special Characters
==================

http://www.w3schools.com/js/js_special_characters.asp

In JavaScript you can add special characters to a text string by using the
backslash sign.


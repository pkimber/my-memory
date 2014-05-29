Getting Started
***************

.. highlight:: javascript

Download
========

Download jQuery from
http://docs.jquery.com/Downloading_jQuery#Current_Release
(option to download the *Uncompressed* version for development::

  wget http://code.jquery.com/jquery-1.6.1.min.js

Include and Initialise
======================

::

  <!DOCTYPE html>
  <html>
    <head>
      <script type="text/javascript" src="/media/web/jquery.js">
      </script>
      <script type="text/javascript">
        $(function(){
          $("<p>Hi there!</p>").insertAfter("#followMe");
        });
      </script>
      <title>My Page Title</title>
    </head>
    <body>
      <p id="followMe">Follow me!</p>
    </body>
  </html>

Here is another version of the initialise function::

  jQuery(function() {
      $("div.notLongForThisWorld").hide();
  });

By passing a function to ``jQuery()`` or ``$()``, we instruct the browser to
wait until the ``DOM`` has fully loaded (but only the ``DOM``) before
executing the code. Even better, we can use this technique multiple times
within the same HTML document, and the browser will execute all of the
functions we specify in the order that they are declared within the page. 

Django
======

To make jQuery available to your Django development site, follow the
instructions here :doc:`../../django/static/media`.

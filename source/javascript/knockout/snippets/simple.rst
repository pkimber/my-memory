Sample
======

From
http://blog.stevensanderson.com/2010/07/05/introducing-knockout-a-ui-library-for-javascript/

.. code-block:: html

  <!doctype html>
  <html lang=en>
    <head>
      <script type="text/javascript" src="jquery-1.4.2.min.js"></script>
      <script type="text/javascript" src="knockout-1.2.0.js"></script>
      <script type="text/javascript">
          jQuery(function() {
              var viewModel = {
                  personName : ko.observable("Bert") // Initial state
              };
              ko.applyBindings(viewModel); // This makes Knockout get to work
          });
      </script>
      <title>introducing knockout.js</title>
      <meta charset=utf-8>
    </head>
    <body>
      Enter your name:
      <input id="source" data-bind="value: personName, valueUpdate: 'keyup'" />
      <div data-bind="visible: personName().length > 5">
        Wow, what a long name you have.
      </div>
    </body>
  </html>

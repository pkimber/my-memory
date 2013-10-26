Getting Started
***************

Configuration
=============

``jsTestDriver.conf``:

::

  server: http://localhost:4224
  
  load:
    - myapp/static/js/common/*.js

  test:
    - myapp/static/js/tests/common/*.js

Sample
------

.. code-block:: javascript

  var LearnSomething = TestCase("LearnSomething");
  
  LearnSomething.prototype.testOne = function() {
      assertEquals(1, 1);
  };
  
  LearnSomething.prototype.testTwo = function() {
      assertEquals('a', 'a');
  };

Setup
=====

- Download the ``jar`` file for the JavaScript test driver.

  ::

    wget http://js-test-driver.googlecode.com/files/JsTestDriver-1.3.2.jar .

- Start the test server in a separate console:

  ::

    java -jar JsTestDriver-1.3.2.jar --port 4224

- Open a browser and enter the following URL on a new page:

  http://localhost:4224/capture

  Repeat for other browsers (if you want)...

Usage
-----

- Run the tests:

  ::

    java -jar JsTestDriver-1.3.2.jar --tests all
    java -jar JsTestDriver-1.3.4-a.jar --server http://localhost:4224 --tests all --reset

  Note: ``--reset`` reloads the JavaScript code (which is usually what you want
  when developing).

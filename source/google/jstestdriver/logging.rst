Logging
*******

.. code-block:: javascript

  jstestdriver.console.log(expected, result);
  console.log(expected, result);

To view ``console.log`` output on the command line, add the ``captureConsole``
option e.g::

  java -jar JsTestDriver.jar --tests all --captureConsole

When this option is specified than we try to intercept the console log messages
and display them on the test runner standard out (FireFox does not allow
overwriting of the console object).

Debug
*****

From `How to debug your code with JsTestDriver`_:

- Start server and capture the browser which you would like to debug
- Run the failing test using:

  .. code-block:: bash

    java -jar JsTestDriver.jar --tests MyTestCase.testIWantToDebug

  This should load all of your JavaScript source files into the Browser

- Open your debugger and you should see all of your source files present in
  your debugger.
- Open the source file and place a breakpoint anywhere you wish.
- Rerun the test using the previous command. The debugger should stop at your
  breakpoint where you should have full access all of your code, variables, and
  DOM.


.. _`How to debug your code with JsTestDriver`: http://code.google.com/p/js-test-driver/wiki/DebuggingWithJsTestDriver

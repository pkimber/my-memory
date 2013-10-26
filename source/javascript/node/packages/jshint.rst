JSHint
******

.. highlight:: javascript

JSHint is a fork of Douglas Crockford's JSLint that does not tyrannize your
code!

Links
=====

- `node-jshint`_
  CLI and NPM package for JSHint
- `JSHint - a JavaScript code quality checker`
- Options_

Install
=======

- Install :doc:`../install` and activate a virtual environment:

  ::

    nave use 0.4.9

- Install the ``node.js`` package for ``jshint``:

  ::

    npm install -g jshint

Configuration
=============

Create a ``~/.jshintrc`` file like this one:
https://raw.github.com/oryband/dotfiles/master/jshintrc

For other objects/classes, put the following at the top of your JavaScript
script:

::

  /* http://www.jshint.com/options/ */
  /*global myTest: false */

Usage
=====

Activate the ``node.js`` virtual environment and run the ``jshint`` command:

::

  jshint my_script.js --show-non-errors

To use a specific configuration file:

::

  jshint wracs/wracs/static/js/wracs/store/main.js --show-non-errors --config jshintrc

Tips
====

To fix the ``plusplus`` warning:

::

  for (i = 0; i < that.selectedItems().length; i++) {
  for (i = 0; i < that.selectedItems().length; i += 1) {

For more information, see ``++ and --`` on the JSLint_ page.


.. _`JSHint - a JavaScript code quality checker`: http://www.2ality.com/2011/09/jshint.html
.. _`node-jshint`: https://github.com/jshint/node-jshint
.. _JSLint: http://www.jslint.com/lint.html
.. _Options: http://www.jshint.com/options/

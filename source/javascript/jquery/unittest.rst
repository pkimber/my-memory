Unit Test
*********

Links
=====

- :doc:`../testing/mockjax`
- `django-qunit`_, integrates QUnit with Django (is used by Mozilla - see
  `mozilla - Andy McKay`_).
- Run `run-qunit`_ using :doc:`../phantomjs/install`.

Dependencies
============

- jQuery, :doc:`getting-started`
- Test framework

  ::

    wget http://code.jquery.com/qunit/git/qunit.css
    wget http://code.jquery.com/qunit/git/qunit.js

Issues
======

``equal`` fails when objects are the same
-----------------------------------------

Use ``deepEqual`` (deepEqual_) to check the contents of an object (rather than
if the object is the same):

::

  test("a test", function() {
    var actual = {a: 1};
    equal(actual, {a: 1}, "must fail, same content, but different object, not handled by equals");
    deepEqual(actual, {a: "1"}, "must fail, expected value is a string, actual a number");
    deepEqual(actual, {a: 1}, "must pass, same content, but different object);
  });

Sample
======

::

  sample/javascript/jquery/sample_unittest/


.. _`django-qunit`: https://github.com/codysoyland/django-qunit
.. _`mozilla - Andy McKay`: http://reinout.vanrees.org/weblog/2011/06/06/large-mozilla-sites.html
.. _`run-qunit`: https://github.com/ariya/phantomjs/blob/1.2/examples/run-qunit.js
.. _deepEqual: http://docs.jquery.com/QUnit/same

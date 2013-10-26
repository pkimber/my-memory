Private Members
***************

Links
=====

- `Private Members in JavaScript`_ copy of `article by Douglas Crockford`_.
- Constructors (:doc:`class`)

Objects
=======

- Objects can be produced by constructors (:doc:`class`), which are functions
  which initialize objects.
- Constructors (:doc:`class`) provide the features that classes provide in
  other languages, including static variables and methods.

Public Members
==============

There are two main ways of putting members in a new object:

- In the constructor:

  ::

    function Container(param) {
        this.member = param;
    }

  So, if we construct a new object:

  ::

    var myContainer = new Container('abc');

  ...then ``myContainer.member`` contains ``abc``.

- In the prototype

  This technique is usually used to add public methods:

  ::

    Container.prototype.stamp = function (string) {
        return this.member + string;
    }

  So, we can invoke the method:

  ::

    myContainer.stamp('def')

  ...which produces ``abcdef``.

Private
=======

Private members are made by the constructor.  Ordinary ``var`` s and
parameters of the constructor becomes the private members:

::

  function Container(param) {
      this.member = param;
      var secret = 3;
      var that = this;
  }

This constructor makes three private instance variables: ``param``,
``secret``, and ``that``.  They are attached to the object, but they are not
accessible to the outside, nor are they accessible to the object's own public
methods.  They are accessible to private methods.

Private methods are inner functions of the constructor:

::

  function Container(param) {

      function dec() {
          if (secret > 0) {
              secret -= 1;
              return true;
          } else {
              return false;
          }
      }

      this.member = param;
      var secret = 3;
      var that = this;
  }

...the private method ``dec`` examines the ``secret`` instance variable.

By convention, we make a private ``that`` parameter.  This is used to make the
object available to the private methods.  This is a workaround for an error in
the ECMAScript Language Specification which causes this to be set incorrectly
for inner functions.

Private methods cannot be called by public methods.  To make private methods
useful, we need to introduce a privileged method:

Privileged
==========

A privileged method is able to access the private variables and methods, and
is itself accessible to the public methods and the outside.  It is possible to
delete or replace a privileged method, but it is not possible to alter it, or
to force it to give up its secrets.

Privileged methods are assigned with this within the constructor:

::

  function Container(param) {

      function dec() {
          if (secret > 0) {
              secret -= 1;
              return true;
          } else {
              return false;
          }
      }

      this.member = param;
      var secret = 3;
      var that = this;

      this.service = function () {
          if (dec()) {
              return that.member;
          } else {
              return null;
          }
      };
  }

...``service`` is a privileged method.  Calling ``myContainer.service()``
will return '``abc``' the first three times it is called.  After that, it will
return ``null``.  ``service`` calls the private ``dec`` method which
accesses the private ``secret`` variable.  ``service`` is available to other
objects and methods, but it does not allow direct access to the private
members.

Closures
========

This pattern of ``public``, ``private``, and ``privileged`` members is
possible because JavaScript has *closures*.  What this means is that an inner
function always has access to the vars and parameters of its outer function,
even after the outer function has returned.


.. _`article by Douglas Crockford`: http://www.crockford.com/javascript/private.html
.. _`Private Members in JavaScript`: ../../misc/howto/javascript/private-members-in-javascript.pdf

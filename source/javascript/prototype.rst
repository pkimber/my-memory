prototype
*********

Sample
======

From `Screencast: Functions, Objects, and Context in JavaScript`_:

::

  $(document).ready(function() {

    var Person = function(first, last) {
      /**
       * Setting instance properties
       **/
      this.firstName = first;
      this.lastName = last;
      return this;
    };

    Person.prototype = {
      sayFirstName : function() {
        console.log(this.firstName);
      }
    };

    /**
     *  Creating "instances" of Person
     **/
    var adam = new Person('adam', 'sontag'),
        rebecca = new Person('rebecca', 'murphey');

    // adam.sayFirstName();
    // rebecca.sayFirstName();
  });


.. _`Screencast: Functions, Objects, and Context in JavaScript`: http://blog.rebeccamurphey.com/46423584


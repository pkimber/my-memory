Tutorial Objects
****************

Introduction
============

http://www.w3schools.com/js/js_obj_intro.asp

Create Your Own Objects
=======================

There are different ways to create a new object:

Create a direct instance of an object
-------------------------------------

The following code creates an instance of an object and adds four properties to it:

::

  personObj=new Object()
  personObj.firstname="John"
  personObj.lastname="Doe"
  personObj.age=50
  personObj.eyecolor="blue"

Adding a method to the personObj is also simple.
The following code adds a method called eat() to the personObj:

::

  personObj.eat=eat

Create a template of an object
------------------------------

The template defines the structure of an object.
(You can also add some methods to the person object. This is also done inside
the template):

::

  function person(firstname, lastname, age, eyecolor)
  {
      this.firstname = firstname
      this.lastname = lastname
      this.age = age
      this.eyecolor = eyecolor

      this.newlastname = newlastname
  }

Notice that the template is just a function. Inside the function assign things
to this.propertyName.

Note that methods are just functions attached to objects.
We will have to write the newlastname() function:

::

  function newlastname(new_lastname)
  {
      this.lastname = new_lastname
  }

Once you have the template, you can create new instances of the object, like this:

::

  myFather=new person("John","Doe",50,"blue")
  myMother=new person("Sally","Rally",48,"green")

  myMother.newlastname("Doe")

prototype
---------

http://www.javascriptkit.com/javatutors/proto.shtml

The ``prototype`` object of JavaScript, introduced starting in JavaScript 1.1,
is a prebuilt object that simplifies the process of adding custom
properties/methods to all instances of an object.

The prototype object is here to help when you wish to quickly add a custom
property to an object that is reflected on all instances of it.  To use this
object, simply reference the keyword ``prototype`` on the object before adding
the custom property to it, and this property is instantly attached to all
instances of the object.

A demonstration is worth a thousand words, so I'll show one right now: Let's
define the custom property "pi" in the above in a way so it's a default
property of all instances of circle():

::

  //First, create the custom object "circle"
  function circle(){
  }
  circle.prototype.pi=3.14159

The prototype object can also help you quickly add a custom method to an
object that is reflected on all instances of it.

::

  //First, create the custom object "circle"
  function circle(){
  }

  circle.prototype.pi=3.14159

  // create the object method
  function alertmessage(){
      alert(this.pi)
  }

  circle.prototype.alertpi=alertmessage

undefined
=========

From http://weblogs.asp.net/bleroy/archive/2005/02/15/373815.aspx:

Something that has **not** been assigned to is not null, it's undefined.
Undefined is different from null.

Well, anyways, you can use typeof to explicitly check for undefined, or use
other more or less clean tricks, but the best way to deal with that is
probably to just rely on the type-sloppiness of JavaScript and count on it to
evaluate null and undefined as false in a boolean expression, like this:

::

  if (SomeObject) {

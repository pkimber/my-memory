API
***

Element
=======

The ``Element`` really is the heart of Ext as most of what you'll do involves
getting access to Elements and performing actions on them.

get
---

The code to get an Ext Element by ID looks like this:

::

  Ext.onReady(function() {
    var myDiv = Ext.get('myDiv');
  });

Static method to retrieve Element objects.  Shorthand of ``Ext.Element.get``.

select
------

Selecting DOM Nodes

Often it is either impractical or impossible to select DOM nodes by ID.  Maybe
the ID is not set, or you don't know it, or there are too many elements to
practically reference directly by ID.  Sometimes you may want to select nodes
based on something other than ID, like an attribute or a CSS classname.  For
these reasons, Ext ships with an extremely powerful DOM selector library
called ``DomQuery``.

DomQuery can be used as a standalone library, but more often when using Ext,
you'll use it in the context of selecting Elements so that you can then act on
them via the Element interface.  Luckily, the Element object itself supports
querying via the ``Element.select`` method, which internally uses
``DomQuery`` to select elements.  As a simple example of how you might use
this, if you wanted to easily select every paragraph and perform an action on
all of them at once, you could do something like this:

::

  // Highlights every paragraph
  Ext.select('p').highlight();

This example demonstrates a very handy aspect of ``Element.select``, it
returns a ``CompositeElement``, which provides access to every underlying
Element via the Element interface.  This allows you to easily act on every
Element instance returned by Element.select without looping and touching each
one individually.

Events
======

Anonymous function
------------------

::

  Ext.onReady(function() {
    Ext.get('myButton').on('click', function(){
      alert("You clicked the button");
    });
  });

::

  Ext.onReady(function() {
    Ext.select('p').on('click', function() {
      alert("You clicked a paragraph");
    });
  });

Named function
--------------

::

  Ext.onReady(function() {
    var paragraphClicked = function() {
      alert("You clicked a paragraph");
    }
    Ext.select('p').on('click', paragraphClicked);
  });

The ``Element.on`` method passes 3 parameters to the event handling function.
The first parameter is the event that occurred.  This is actually an Ext
``event`` object, which is both normalized across browsers and provides more
information than the standard browser event.  For example, the event's target
DOM node can be retrieved with this simple addition:

::

  Ext.onReady(function() {
    var paragraphClicked = function(e) {
      Ext.get(e.target).highlight();
    }
    Ext.select('p').on('click', paragraphClicked);
  });

Note that target is a DOM node, so we first retrieve the corresponding
Element, then perform whatever action we want on it.

UpdateManager
=============

:doc:`updatemanager`


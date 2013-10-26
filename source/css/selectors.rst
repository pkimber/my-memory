Selectors
*********

Links
=====

- `HTML Dog, Class and ID Selectors`_

Selectors
=========

In the CSS, an *ID* selector is a name preceded by a *hash* character
(``#``) and a *class* selector is a name preceded by a *full stop* (``.``):

::

  #top {
    background-color: #ccc;
    padding: 1em
  }

  .intro {
    color: red;
    font-weight: bold;
  }

::

  <div id="top">
    <h1>Chocolate curry</h1>
    <p class="intro">This is my recipe for making curry purely with chocolate</p>
    <p class="intro">Mmm mm mmmmm</p>
  </div>

The difference between an ID and a class is that:

- an *ID* can be used to identify *one* element
- a *class* can be used to identify *more than one*.

You can also apply a selector to a specific HTML element by simply stating the
HTML selector first, so:

::

  p.jam { whatever }

...will only be applied to *paragraph* elements that have the class ``jam``.


.. _`HTML Dog, Class and ID Selectors`: http://www.htmldog.com/guides/cssintermediate/classid/


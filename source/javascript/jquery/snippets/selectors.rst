Selectors
*********

.. highlight:: javascript

attribute
=========

Select all ``div`` elements within a ``div`` within ``messages_container``
which have a class of ``message`` with an attribute of ``data-persistent``::

  jQuery("#messages_container > div > div.message[data-persistent]")

This example will set the ``attr``::

  jQuery("#messages_container > div > div.message[data-persistent] a").attr("href", "http://www.google.com/")

div
===

Select all ``div`` elements within ``messages_container`` which have an
``undo`` class::

  jQuery('#messages_container > div.undo')...

find
====

::

  var e = $('#id').find('i');
  var e = $('#id').parent().find('i');
  var e = $('#id').prev('.row').find('i');

nextAll
=======

::

  jQuery('#id').parent().nextAll(".errors").text('hello');

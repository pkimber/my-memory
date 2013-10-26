TableDnd
********

Links
=====

- `TableDnD, Table Drag and Drop JQuery plugin`_
  For example code see
  `django-todo source code`_

Download
========

- Download ``jquery.tablednd_0_5.js.zip`` from the above site.

Install
=======

- I extracted the archive and re-named to ``jquery.tablednd.js``.

Usage
=====

- Include jQuery and ``jquery.tablednd.js`` at the top of your html file:

  ::

    <script type="text/javascript" src="/site_media/jquery.js"></script>
    <script type="text/javascript" src="/site_media/jquery.tablednd.js"></script>

- The HTML for the table is very straight forward
  (no Javascript, pure HTML):

  ::

    <table id="table-1" cellspacing="0" cellpadding="2">
        <tr id="1"><td>1</td><td>One</td><td>some text</td></tr>
        <tr id="2"><td>2</td><td>Two</td><td>some text</td></tr>
        <tr id="3"><td>3</td><td>Three</td><td>some text</td></tr>
    </table>

- To add in the *draggability* all we need to do is add a line to the
  ``$(document).ready(...)`` function as follows:

  ::

    <script type="text/javascript">
        $(document).ready(function() {
            // Initialise the table
            $("#table-1").tableDnD();
        });
    </script>


.. _`TableDnD, Table Drag and Drop JQuery plugin`: http://www.isocra.com/2008/02/table-drag-and-drop-jquery-plugin/
.. _`django-todo source code`: http://code.google.com/p/django-todo/source/browse/trunk/todo/templates/todo/view_list.html


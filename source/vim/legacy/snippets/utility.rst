Utility
*******

Remove empty lines
==================

::

  :'<,'>g/^$/d

This example will work with a visual selection.

Remove spaces from end of line
==============================

::

  :%s/\s\+$//

Tidy Trac Ticket Name
=====================

Highlight the text you want to tidy:

::

  :'<,'>s/[ ()\[\]]/-/g

Note:

- There is no ``/`` before the ``s``.


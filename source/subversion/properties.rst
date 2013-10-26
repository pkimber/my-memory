Properties
**********

Links
=====

http://svnbook.red-bean.com/nightly/en/svn.advanced.props.html

Set
===

To set a property on the current folder:

::

  svn propset my_age 43 .

Edit
----

To use the editor to set the ``copyright`` property on the ``button.c`` file:

::

  svn propedit copyright calc/button.c

File
----

To set a property to the contents of a file:

::

  svn propset license -F /path/to/LICENSE calc/button.c

List
====

To list the properties:

::

  svn proplist -v

Delete
======

To delete the ``my_age`` property on the current folder:

::

  svn propdel my_age .

Special Properties
==================

Ignore
------

To set the ``svn:ignore`` property on the current folder:

::

  svn propedit svn:ignore .

In the editor, add the list of files you want to ignore.

If you want to see the ignored files:

::

  svn status --no-ignore


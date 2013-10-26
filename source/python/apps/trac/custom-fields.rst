Custom Fields
*************

Links
=====

`Custom Ticket Fields`_

Date
====

See :doc:`plugins`

Radio
=====

Here is a copy of the `trac.ini file`_ where a custom field for a radio button
has been installed.

Looking at the file, I guess the important bits are:

::

  [ticket-custom]
  workingon = radio
  workingon.label = Currently working on?
  workingon.options = yes|no
  workingon.value = no

Select
======

::

  project = select
  project.label = Project
  project.options = |Villages|Cycling
  project.value =

**Note**: To make entering an option for a select type field optional, specify
a leading ``|`` in the ``fieldname.options`` option.


.. _`Custom Ticket Fields`: http://trac.edgewall.org/wiki/TracTicketsCustomFields
.. _`trac.ini file`: ../../misc/howto/trac/trac.ini

Permissions
***********

Links
=====

- Administration commands - :doc:`admin`
- Sample Permissions - :doc:`sample-permissions`

Superuser
=========

::

  trac-admin /path/to/projenv permission add patrick TRAC_ADMIN

Note: To get access to the "*View Tickets*" link, you need to add the
"``REPORT_VIEW``" permission.

Tickets
=======

EMAIL_VIEW
----------

`Email address domain truncated`_

::

  trac-admin /path/to/projenv permission add group-contributor EMAIL_VIEW

Or just use the web admin tool to add the permission.

TICKET_ADMIN
------------

All ``TICKET_*`` permissions, plus the deletion of ticket attachments and
modification of the description field.

Wiki
====

To delete/replace attachments
-----------------------------

::

  WIKI_DELETE


.. _`Email address domain truncated`: http://groups.google.com/group/trac-users/browse_thread/thread/aac7298b81612fca?fwc=1

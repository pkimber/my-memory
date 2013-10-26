Trac - Admin
************

Links
=====

- TracAdmin_
- `Trac Permissions`_
- `Sample Permissions for a commercial project`_

Backup
======

::

  trac-admin /path/to/projenv hotcopy C:\temp\trac-2008-06-04

Note: The ``hotcopy`` command will create the destination folder.

Groups
======

Permission groups can be created by assigning a user to a group you wish to
create, then assign permissions to that group.

The following will add bob to the new group called ``beta_testers`` and then
will assign ``WIKI_ADMIN`` permissions to that group:

::

  trac-admin /path/to/projenv permission add bob beta_testers
  trac-admin /path/to/projenv permission add beta_testers WIKI_ADMIN

Default Groups
--------------

Default permissions for these groups are:

================== ==============================================================================================================================================================
Group              Actions
``anonymous``      ``BROWSER_VIEW CHANGESET_VIEW FILE_VIEW LOG_VIEW MILESTONE_VIEW REPORT_SQL_VIEW REPORT_VIEW ROADMAP_VIEW SEARCH_VIEW TICKET_VIEW TIMELINE_VIEW WIKI_VIEW``
``authenticated``  ``TICKET_CREATE TICKET_MODIFY WIKI_CREATE WIKI_MODIFY``
================== ==============================================================================================================================================================

Tickets
=======

Remove
------

Cannot delete tickets from the UI, so use the admin command:

::

  trac-admin /path/to/projenv ticket remove 25

Users
=====

List
----

::

  trac-admin /path/to/projenv permission list

Add Permissions
---------------

- See :doc:`authentication` for details on how to create the users.
- After the user is created, you can give them permsissions:

  To make ``patrick`` a super user:

  ::

    trac-admin /path/to/projenv permission add patrick TRAC_ADMIN

Note: To get access to the "*View Tickets*" link, you need to add the
``REPORT_VIEW``" permission.

Remove Permissions
------------------

::

  trac-admin /path/to/projenv permission remove bob WIKI_MODIFY

**Note**:

- Only permissions added with ``trac-admin`` can be removed by ``trac-admin``.
- A standard Trac installation includes default permissions for ``anonymous``
  and ``authenticated`` groups.  To remove permissions from a user, you might
  need to remove these default permissions e.g. to remove permission to modify
  wiki entries for authenticated users:

  ::

    trac-admin /path/to/projenv permission remove authenticated WIKI_MODIFY

- The default permissions are probably fine for an open source project, but
  they allow everyone to view the wiki and source code, so are not suitable for
  commercial projects.

  You probably want to remove all permissions from the ``anonymous`` and
  ``authenticated`` groups and then add permissions to individuals as required
  (see *Groups* above):

  ::

    trac-admin /path/to/projenv permission remove anonymous '*'
    trac-admin /path/to/projenv permission remove authenticated '*'

  See "*Default Groups*" above for a list of the default permissions.

Web Interface
=============

Add the following to ``conf/trac.ini``:

::

  [components]
  webadmin.* = enabled

Note: This appears to be enabled in the most recent version of Trac.


.. _`Sample Permissions for a commercial project`: sample-permissions.html
.. _`Trac Permissions`: http://trac.edgewall.org/wiki/TracPermissions
.. _TracAdmin: http://trac.edgewall.org/wiki/TracAdmin

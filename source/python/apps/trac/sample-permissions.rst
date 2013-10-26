Admin - Sample Permissions
**************************

Commercial
==========

These permissions create a couple of *partner* groups, which use the *private
tickets plugin* to restrict access to tickets where the user has had some kind
of input.

::

  trac-admin /path/to/projenv permission remove anonymous '*'
  trac-admin /path/to/projenv permission remove authenticated '*'

  trac-admin /path/to/projenv permission add group-all-users TICKET_VIEW

  trac-admin /path/to/projenv permission add group-viewonly group-all-users
  trac-admin /path/to/projenv permission add group-viewonly BROWSER_VIEW
  trac-admin /path/to/projenv permission add group-viewonly CHANGESET_VIEW
  trac-admin /path/to/projenv permission add group-viewonly FILE_VIEW
  trac-admin /path/to/projenv permission add group-viewonly LOG_VIEW
  trac-admin /path/to/projenv permission add group-viewonly MILESTONE_VIEW
  trac-admin /path/to/projenv permission add group-viewonly REPORT_SQL_VIEW
  trac-admin /path/to/projenv permission add group-viewonly REPORT_VIEW
  trac-admin /path/to/projenv permission add group-viewonly ROADMAP_VIEW
  trac-admin /path/to/projenv permission add group-viewonly SEARCH_VIEW
  trac-admin /path/to/projenv permission add group-viewonly TICKET_VIEW_GROUP
  trac-admin /path/to/projenv permission add group-viewonly TIMELINE_VIEW
  trac-admin /path/to/projenv permission add group-viewonly WIKI_VIEW

  trac-admin /path/to/projenv permission add group-contributor group-viewonly
  trac-admin /path/to/projenv permission add group-contributor EMAIL_VIEW
  trac-admin /path/to/projenv permission add group-contributor TICKET_CREATE
  trac-admin /path/to/projenv permission add group-contributor TICKET_EDIT_DESCRIPTION
  trac-admin /path/to/projenv permission add group-contributor TICKET_MODIFY
  trac-admin /path/to/projenv permission add group-contributor WIKI_CREATE
  trac-admin /path/to/projenv permission add group-contributor WIKI_MODIFY

  trac-admin /path/to/projenv permission add group-viewonly-partner group-all-users
  trac-admin /path/to/projenv permission add group-viewonly-partner REPORT_VIEW
  trac-admin /path/to/projenv permission add group-viewonly-partner SEARCH_VIEW
  trac-admin /path/to/projenv permission add group-viewonly-partner TICKET_VIEW_SELF

  trac-admin /path/to/projenv permission add group-contributor-partner group-viewonly-partner
  trac-admin /path/to/projenv permission add group-contributor-partner TICKET_CREATE
  trac-admin /path/to/projenv permission add group-contributor-partner TICKET_MODIFY

  trac-admin /path/to/projenv permission add bob group-contributor
  trac-admin /path/to/projenv permission add zed group-viewonly

  trac-admin /path/to/projenv permission add sam group-contributor-partner
  trac-admin /path/to/projenv permission add kim group-viewonly-partner

Note: The ``TICKET_VIEW_GROUP`` and ``TICKET_VIEW_SELF`` permissions are
installed by the ``PrivateTicketsPlugin`` (:doc:`plugins`).

I haven't tested this updated configuration, but the idea is to create a group
which everyone belongs to (``group-all-users``).  All tickets are therefore
owned by someone in this group.  We give employees the ``TICKET_VIEW_GROUP``
permission... they will be able to see all tickets because they will always
share a group with the target user.  We give partners the ``TICKET_VIEW_SELF``
permission so they can only see tickets where they are the reporter, owner or
CC'd.

Group
-----

To create a group of users who have access to their own tickets (in this
example ``nhs`` is the group):

::

  trac-admin /path/to/projenv permission add group-all-nhs-users TICKET_VIEW

  trac-admin /path/to/projenv permission add group-viewonly-partner-nhs group-all-nhs-users
  trac-admin /path/to/projenv permission add group-viewonly-partner-nhs REPORT_VIEW
  trac-admin /path/to/projenv permission add group-viewonly-partner-nhs SEARCH_VIEW
  trac-admin /path/to/projenv permission add group-viewonly-partner-nhs TICKET_VIEW_GROUP

  trac-admin /path/to/projenv permission add group-contributor-partner-nhs group-viewonly-partner-nhs
  trac-admin /path/to/projenv permission add group-contributor-partner-nhs TICKET_CREATE
  trac-admin /path/to/projenv permission add group-contributor-partner-nhs TICKET_MODIFY

Issues
******

Attachments
===========

Cannot Delete Attachments
-------------------------

Only users with ``WIKI_ADMIN`` permission are allowed to remove wiki
attachments.

BROWSER_VIEW is not a valid action.
===================================

Trying to run:

::

  trac-admin itv permission add group-viewonly BROWSER_VIEW

...and I get this error message:

::

  Command failed: BROWSER_VIEW is not a valid action.

If I run, ``trac-admin itv permission list``, the permission does not appear in
the *Available actions* list.

Resolution
----------

`BROWSER_VIEW, CHANGESET_VIEW, FILE_VIEW and LOG_VIEW don't appear as valid actions`_:

*You appear to have disabled the Trac components related to source code
browsing, so those permissions have also been disabled.  Since you've disabled
those components no users will be ale to browse the repository, so that's not
really an issue*.

email
=====

URL Incorrect
-------------

After browsing Trac on the server, the address on the email notifications was
incorrect.  To solve the problem, I added the correct URL in the ``base_url``
property in ``trac.ini``.  *This sets any links Trac generates to start from
the base, rather than the file that processed the generation*:

::

  base_url = http://svn.mycompany.com/trac/myrepo

Ticket
======

Assign to
---------

Is a user does not appear in the ``Assign to`` drop down, ask them to login to
*Preferences* and set-up their *Email address*.

IntegrityError
--------------

When trying to create a ticket:

::

  Trac detected an internal error:
  IntegrityError: columns ticket, name are not unique

To solve the issue: http://trac.edgewall.org/ticket/7644

- Find the highest ticket number in your database:

  ::

    sqlite> select max(id) from ticket;
    123

- Delete all custom ticket fields for ticket IDs higher than the returned
  value:

  ::

    sqlite> delete from ticket_custom where ticket > 123;

**Note**: We fixed this issue without using this fix... so I don't know if it
works or not.


.. _`BROWSER_VIEW, CHANGESET_VIEW, FILE_VIEW and LOG_VIEW don't appear as valid actions`: http://trac.edgewall.org/ticket/3688

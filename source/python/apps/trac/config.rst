Configuration
*************

Also see :doc:`config-global`

Attachments
===========

To increase the maximum size of attachments, edit ``conf/trac.ini`` and
increase the value (in bytes).  We inceased to 10mb:

::

  [attachment]
  max_size = 10000000

Headers
=======

http://trac.edgewall.org/wiki/TracIni

Logo
----

To change the logo, copy your logo to the ``htdocs`` folder e.g.

::

  htdocs\logo.jpg

...and edit ``conf/trac.ini`` to specify the properties of the new logo:

::

  [header_logo]
  alt = Alternative text for the header logo.
  height = 75
  src = site/logo.jpg
  width = 217

**Note**:

- For logos in the ``htdocs`` folder, prefix the url with ``site``.
- The width and height settings should be modified to match your image
  dimensions.
- Trac uses ``site/`` for files within the ``htdocs`` folder and ``common/``
  for the common ones.

URL
---

To set the URL for the Trac graphic in the top left corner of the site, edit
``conf/trac.ini``:

::

  [header_logo]
  link = http://sample-site.com/

Notifications
=============

Sample from ``conf/trac.ini``:

::

  [notification]
  admit_domains =
  always_notify_owner = true
  always_notify_reporter = true
  always_notify_updater = true
  ignore_domains =
  mime_encoding = base64
  smtp_always_bcc =
  smtp_always_cc =
  smtp_default_domain = alice
  smtp_enabled = true
  smtp_from = trac@mycompany.com
  smtp_from_name = TRAC
  smtp_password =
  smtp_port = 25
  smtp_replyto = trac@mycompany.com
  smtp_server = localhost
  smtp_subject_prefix = __default__
  smtp_user =
  ticket_subject_template = $prefix #$ticket.id: $summary
  use_public_cc = false
  use_short_addr = false
  use_tls = false

Always BCC
----------

`Email Notification of Ticket Changes`_

To email people when a ticket is created (or updated), add the following to the
``[notification]`` section of ``conf/trac.ini``:

::

  smtp_always_bcc = simon@mycompany.co.uk

Tickets
=======

Assign-to as Drop-Down List
---------------------------

If the list of possible ticket owners is finite, you can change the assign-to
ticket field from a text input to a drop-down list.  This is done by setting
the ``restrict_owner`` option of the ``[ticket]`` section in ``trac.ini`` to
``true``.  In that case, Trac will use the list of all users who have logged in
and set their email address to populate the drop-down field.

::

  [ticket]
  restrict_owner = true

Components
----------

To add the component, *Front End* to ``my-project``:

::

  trac-admin my-project component add "Front End" admin

To list components:

::

  trac-admin my-project component list

Types
-----

::

  trac-admin my-project ticket_type list

Version
-------

To list versions:

::

  trac-admin my-project version list

To create a new version:

::

  trac-admin my-project version add "1.1" "now"

Users
=====

::

  trac-admin my-project permission list



.. _`global configuration`: config-global.html
.. _`Email Notification of Ticket Changes`: http://trac.edgewall.org/wiki/TracNotification

Notification
************

Links
=====

- http://github.com/jtauber/django-notification/

Summary
=======

Looking in Django admin, we can see the following under
``/admin/notification/``:

- *Notice types*: These are a list of the valid types of notification.
- *Notice settings*: this records the preferred *medium* for a user for
  sending each notification type e.g. email.
- *Notices*: Is a list of notifications which have been sent.
- *Observed items*: I don't know what this is (yet).

Note: The application calling ``notification.send`` decides who gets the
notifications (see the list of users in the sample below).  The
``notification`` application will create default *Notice settings* for
each user.

Snippets
========

Notice Types
------------

To list all notice types:

::

  from notification.models import NoticeType
  NoticeType.objects.all()

Test
----

To send a notification to a list of users:

::

  from notification import models as notification
  from django.contrib.auth.models import User
  patrick = User.objects.get(username='patrick')
  sam = User.objects.get(username='sam')
  harry = User.objects.get(username='harry')
  notice_type = 'new_post_in_watched_thread'
  notification.send((patrick, sam, harry,), notice_type)

The ``label`` name can be found by listing all notice types (see above).


User
****

Change Password
===============

Locate the user (as we do in the previous snippet), then:

::

  user.set_password('password')
  user.save()

Groups
======

`Restricting Access by Group in Django`_:

::

  u.groups.filter(name='Student').count() == 0

Note: In this sample, ``u`` is a user object.

Search
======

::

  python manage.py shell
  from django.contrib.auth.models import User
  matching_users = User.objects.filter(username='Stéphane Lechit')
  len(matching_users)
  user = matching_users[0]
  print user.username, user.first_name, user.last_name, user.email, user.last_login


.. _`Restricting Access by Group in Django`: http://bradmontgomery.blogspot.com/2009/04/restricting-access-by-group-in-django.html

Permissions
***********

.. highlight:: python

When ``django.contrib.auth`` is listed in your ``INSTALLED_APPS`` setting, it
will ensure that three default permissions - add, change and delete - are
created for each model defined in one of your installed applications.

Assuming you have an application with an app_label ``foo`` and a model named
``Bar``, to test for basic permissions you should use:

::

  add:      user.has_perm('foo.add_bar')
  change:   user.has_perm('foo.change_bar')
  delete:   user.has_perm('foo.delete_bar')

I am not sure about the following, but to list permission strings, try the
following from the shell (``django-admin.py shell``):

::

  from django.contrib.auth.models import Permission
  for p in Permission.objects.all(): print '%s.%s' % (p.content_type.app_label, p.codename) 

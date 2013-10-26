Models
******

::

  from django.contrib.auth.models import User
  user = models.ForeignKey(User)

Create
======

::

  User.objects.create_user('fredb', 'fredb@myshop.com', 'fred')

  User.objects.create_superuser('admin', '', 'admin')

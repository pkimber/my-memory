Introspection
*************

.. highlight:: python

Dictionary
==========

To build a dictionary of field names and values:

::

  In [1]: from django.contrib.auth.models import User
  In [5]: user = User.objects.get(username='ABC')
  In [6]: dict([(field.name, field.value_from_object(user)) for field in user._meta.fields])
  Out[6]:
  {'date_joined': datetime.datetime(2012, 2, 24, 12, 38, 16, 138068),
   'email': u'',
   'first_name': u'Andy',
   'id': 47,
   'is_active': True,
   'is_staff': False,
   'is_superuser': False,
   'last_login': datetime.datetime(2012, 2, 24, 12, 38, 16, 138061),
   'last_name': u'Corner',
   'password': u'sha1$81',
   'username': u'ABC'}

Fields
======

To list the fields on a model:

::

  from item.models import ItemModel
  [f.name for f in ItemModel._meta.fields]

Foreign Key
===========

::

  def has_time_record(self):
      try:
          self.timerecord
          return True
      except TimeRecord.DoesNotExist:
          return False

Name
====

::

  from item.models import ItemModel
  ItemModel.__name__

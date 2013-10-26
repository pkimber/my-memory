Legacy
******

Usage
=====

To auto-generate models:

::

  python manage.py inspectdb

Issues
======

Auto-increment fields are not generated correctly using the above command.  To
set-up the field correctly:

::

  class ItemRequest(models.Model):
      item_request_id = models.AutoField(primary_key=True)

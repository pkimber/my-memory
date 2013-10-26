JSON
****

From `Where's my json data in my incoming django request?`_

Using class based views, we can write a method to call ``raw_post_data`` to get
the actual data:

::

  from django.utils import simplejson as json

  def get_json_post_data(self):
      """
      A view can call this method from within it's 'get_context_data' method
      to extract JSON data into a python data structure.
      """
      return json.loads(self.request.raw_post_data)

This new ``get_json_post_data`` method can then be used in views...


.. _`Where's my json data in my incoming django request?`: http://stackoverflow.com/questions/1208067/wheres-my-json-data-in-my-incoming-django-request

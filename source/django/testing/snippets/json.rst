JSON
****

.. highlight:: python

::

  from django.utils import simplejson as json

  response = self._post_update_status(item_id, new_status)
  # Check the call has succeeded.
  self.assertEquals(200, response.status_code)

  json_data = json.loads(response.content)

  # Check the response contains a 'list' of messages.
  messages = json_data['messages']
  self.assertTrue(type(messages) is list)
  # Check that each message is a dictionary.
  first_message = messages[0]
  self.assertTrue(type(first_message) is dict)
  # Make sure this is a persistent message.
  self.assertTrue(first_message['is_persistent'])

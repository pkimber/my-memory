User
****

.. highlight:: python

Logged in
=========

::

  # check the user is not logged in
  self.assertNotIn(SESSION_KEY, self.client.session)

  # check the user was logged in
  self.assertIn(SESSION_KEY, self.client.session)
  self.assertEquals(user_pk, self.client.session[SESSION_KEY])

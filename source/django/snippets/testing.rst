Testing
*******

.. highlight:: python

::

  from django.utils import unittest

  class CaptureTest(unittest.TestCase):
      def test_phone_number(self):
          """
          """
          user_name = 'PJK'
          phone_number = None
          self.assertEqual(phone_number, user_name)

Auth
====

A simple fixture which will create one user:

::

  [
      {
          "pk": 43,
          "model": "auth.user",
          "fields": {
              "username": "testclient",
              "first_name": "Test",
              "last_name": "Client",
              "is_active": 1,
              "is_superuser": 0,
              "is_staff": 0,
              "last_login": "2009-10-04 19:25:14",
              "groups": [
                  1
              ],
              "user_permissions": [],
              "password": "sha1$81a1d$979b51e4122a3e04fccfa60fb1e6fe1f551be3da",
              "email": "test@client.com",
              "date_joined": "2009-10-04 19:25:13"
          }
      }
  ]

To make sure a user is logged in before running a test:

::

  login = self.client.login(username='testclient', password='password')
  self.failUnless(login, 'Could not log in [%s]' % login)

To make sure a user is **NOT** logged in before running a test:

::

  login = self.client.login(username='user_does_not_exist', password='wrong-password')
  self.failIf(login, "Logged in, but shouldn't be [%s]." % login)

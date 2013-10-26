Profile
*******

.. highlight:: python

Links
=====

- `django-profiles: The Missing Manual`
- `Storing additional information about users`_

Getting Started
===============

Model
-----

::

  class UserProfile(models.Model):
      user = models.OneToOneField(User)
      phone = models.CharField(blank=True)

  def create_user_profile(sender, instance, created, **kwargs):
      """
      See ``UserProfile`` docs (above).
      """
      if created:
          UserProfile.objects.create(user=instance)

  post_save.connect(create_user_profile, sender=User)

Note: I couldn't find a way to update the phone number before creating the user
profile.  For this reason, I allowed ``blank`` fields in the ``UserProfile``
model.

``settings.py``
---------------

::

  AUTH_PROFILE_MODULE = 'dc_common.UserProfile'

Fixtures
--------

.. code-block:: yaml

  - model: auth.user
    pk: 47
    fields:
      username: red
      first_name: Ryan
      last_name: Delta
      groups: [[Admin]]
      user_permissions: []
      password: sha1$81a1d$979b51e4122a3e04fccfa60fb1e6fe1f551be3da
      is_active: 1
  - model: myapp.userprofile
    pk: 7
    fields:
      phone: 01392 231 231
      user: [red]


.. _`django-profiles: The Missing Manual`: http://birdhouse.org/blog/2009/06/27/django-profiles/
.. _`Storing additional information about users`: https://docs.djangoproject.com/en/dev/topics/auth/#storing-additional-information-about-users

Views
*****

Access
======

Logged In
---------

To prevent access to a view unless the user is logged in:

::

  from django.contrib.auth.decorators import login_required

  @login_required
  def index(request):
      # request.user

... the raw way:

::

  def my_view(request):
      if request.user.is_authenticated():

Staff
-----

`Django staff member required`_

::

  from django.contrib.admin.views.decorators import staff_member_required

  @staff_member_required
  def my_view(request):
      ...

Template
========

django.contrib.auth.context_processors.auth_

If ``TEMPLATE_CONTEXT_PROCESSORS`` contains
``django.contrib.auth.context_processors.auth``, every ``RequestContext`` will
contain these three variables:

- ``user`` - An ``auth.User`` instance representing the currently logged-in
  user (or an ``AnonymousUser`` instance, if the client isn't logged in).
- ``messages``: A list of messages (as strings) that have been set via the
  messages framework.
- ``perms``: An instance of ``django.core.context_processors.PermWrapper``,
  representing the permissions that the currently logged-in user has.


.. _`Django staff member required`: http://blog.timc3.com/2010/03/13/django-staff-member-required/
.. _django.contrib.auth.context_processors.auth: http://docs.djangoproject.com/en/1.2/ref/templates/api/#django-contrib-auth-context-processors-auth

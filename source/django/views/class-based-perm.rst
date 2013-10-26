Class Based Views - Permissions
*******************************

.. highlight:: python

From `Decorating the class`_
In this example, every instance of ``ProtectedView`` will have login
protection:

::

  from django.contrib.auth.decorators import login_required
  from django.utils.decorators import method_decorator
  from django.views.generic import TemplateView

  class ProtectedView(TemplateView):
      template_name = 'secret.html'

      @method_decorator(login_required)
      def dispatch(self, *args, **kwargs):
          return super(ProtectedView, self).dispatch(*args, **kwargs)

For permissions:

::

  from django.contrib.auth.decorators import permission_required

  @method_decorator(permission_required('whatson.add_event'))
  def dispatch(self, *args, **kwargs):
      """ Permission check for this class """
      return super(EventCalendarView, self).dispatch(*args, **kwargs)

For customised permissions for a single view (this is my idea - not taken from
the documentation):

::

  def dispatch(self, request, *args, **kwargs):
      """ Permission check for this class """
      if not request.user.has_perm('whatson.delete_event'):
          raise PermissionDenied(
              "You do not have permission to delete events"
          )
      return super(EventDeleteView, self).dispatch(request, *args, **kwargs)

Note: the extra ``request`` parameter to the ``dispatch`` method (copied from
the source code).


.. _`Decorating the class`: https://docs.djangoproject.com/en/dev/topics/class-based-views/#decorating-class-based-views

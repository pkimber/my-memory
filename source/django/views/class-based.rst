Class Based Views
*****************

.. highlight:: python

Links
=====

- `Class-based views in Django 1.3`_
- `Reusable, generic mixins for Django`_

Note: The following links are useful, and helpful, but best to *look in the
actual source code*:

- `Django Class-based Views`_
- `Class-based generic views`_
- `How to do a DetailView in django 1.3?`_
- `Class-Based-Views-in-Django, Scribd`_
- `Source code (best to look at the actual source code)`_

Diagram
-------

::

  ../misc/class-based-views.pdf

Learning
--------

``CreateView`` and ``UpdateView`` both have the ``form_valid`` method which can
be used to add extra data to the form instance data before it is saved.  As a
general principle, I think we should only use ``form_valid`` when the data we
want to add is available in the view, but not in the form
e.g. ``self.request.user``.

If the data is available in the form, then we should override the form ``save``
method.

- Reinout van Rees

  - `Using Django's class based views`_
  - `Django class based view walkthrough: TemplateView`_

Request
=======

The ``request`` object is available as ``self.request`` e.g.
``self.request.user``.  **Note**: For this to work you will probably need the
`django.core.context_processors.request`_ context processor.

Sample
======

JSON
----

::

  import decimal
  import simplejson
  from django.http import HttpResponse
  from django.utils.cache import add_never_cache_headers

  class DecimalEncoder(simplejson.JSONEncoder):
      def default(self, obj):
          if isinstance(obj, decimal.Decimal):
              return str(obj)
          return super(DecimalEncoder, self).default(obj)

  def dumps(*args, **kwargs):
      return simplejson.dumps(
          *args,
          sort_keys=True,
          separators=(',', ': '),
          indent=4,
          use_decimal=False,
          cls=DecimalEncoder,
          **kwargs
      )

  def loads(*args, **kwargs):
      return simplejson.loads(*args, **kwargs)

  class JsonResponse(HttpResponse):
      def __init__(self, request, content, **kwargs):
          data = dumps(content)
          try:
              if "application/json" in request.META['HTTP_ACCEPT_ENCODING']:
                  mimetype = 'application/json'
              else:
                  raise KeyError('application/json not accepted')
          except:
              mimetype = 'text/plain'
          super(JsonResponse, self).__init__(data, mimetype, **kwargs)
          add_never_cache_headers(self)

::

  from django.views.generic import View
  from somewhere.above import JsonResponse
  from django.views.decorators.csrf import csrf_exempt
  from django.utils.decorators import method_decorator

  class MyView(View):
      @method_decorator(csrf_exempt)
      def dispatch(self, *args, **kwargs):
          return super(MyView, self).dispatch(*args, **kwargs)

      def get(self, request):
          return JsonResponse(request, { 'foo': 'bar'})

      def post(self, request):
          data = request.POST
          print data
          return JsonResponse(request, {
              'response': data
          })

List
----

From `passing parameters to filter of view`_, you can override the views
``get_queryset`` method:

::

  from django.views.generic.list import ListView

  class MyList(ListView):
      def get_queryset(self):
          return Village.objects.filter(county__in='Devon')

Login
-----

- `class based authentication view (login)`_

Template
--------

::

  from django.views.generic.base import TemplateView

  class SomeView(TemplateView):
      template_name = 'my_app/someview.html'

      def get_context_data(self, **kwargs):
          return {'name': 'pat'}

::

  import ...

  urlpatterns = patterns(
      url(regex=r'^class_based_view/$',
          view=my_app.views.SomeView.as_view(),
          name='my_view'),

::

  urlpatterns = patterns('',
      url(regex=r'^$',
          view=TemplateView.as_view(template_name='home.html'),
          name='app.home'
      ),

Security
--------

Basic ``login_required`` security can be set-up in ``urls.py``::

  from django.contrib.auth.decorators import login_required

  url(regex=r'^private/$',
      view=login_required(TemplateView.as_view(template_name='private.html')),
      name='private'
  ),

Snippets
--------

- :doc:`../snippets/class-based-form`
- `TaskViewMixin, fires off a task and polls until completion`_


.. _`class based authentication view (login)`: https://gist.github.com/1140136
.. _`Class-based generic views`: https://docs.djangoproject.com/en/1.3/ref/class-based-views/
.. _`Class-based views in Django 1.3`: http://www.caktusgroup.com/blog/2011/12/29/class-based-views-django-13/
.. _`Class-Based-Views-in-Django, Scribd`: http://www.scribd.com/doc/45060136/Class-Based-Views-in-Django
.. _`Django class based view walkthrough: TemplateView`: http://reinout.vanrees.org/weblog/2011/08/24/class-based-views-walkthrough.html
.. _`Django Class-based Views`: http://tech.fydd.in/2011/05/django-class-based-views.html
.. _`django.core.context_processors.request`: https://docs.djangoproject.com/en/dev/ref/templates/api/#django-core-context-processors-request
.. _`How to do a DetailView in django 1.3?`: http://stackoverflow.com/questions/6008808/how-to-do-a-detailview-in-django-1-3
.. _`passing parameters to filter of view`: http://stackoverflow.com/questions/6148757/django-1-3-passing-parameters-to-filter-of-class-based-generic-list-view-in-url
.. _`Reusable, generic mixins for Django`: https://github.com/brack3t/django-braces/
.. _`Source code (best to look at the actual source code)`: https://github.com/django/django/blob/master/django/views/generic/base.py
.. _`TaskViewMixin, fires off a task and polls until completion`: http://djangosnippets.org/snippets/2500/
.. _`Using Django's class based views`: http://reinout.vanrees.org/weblog/2011/08/24/class-based-views-usage.html

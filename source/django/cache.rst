cache
*****

Note: Also see the :doc:`memcached`.

Views
=====

Browser
-------

To make sure the browser doesn't cache a view, add the ``never_cache``
decorator to the view function:

::

  from django.views.decorators.cache import never_cache
  @never_cache
  def edit_article(request, title...

...this will add the following header to the HTTP response:

::

  Cache-Control : max-age=0

Note: I haven't tested this yet...

Caching
-------

To control the cache on a view function:

::

  from django.views.decorators.cache import cache_page

  @cache_page(60 * 15)
  def my_view(request):
      ...

... or in the URL configuration:

::

  from django.views.decorators.cache import cache_page

  urlpatterns = ('',
      (r'^foo/(\d{1,2})/$', cache_page(my_view, 60 * 15)),
  )

Note:

- It appears much simpler to use ``cache_page`` on the view function,
  but this couples the view to it's cache behaviour.  To solve this issue, set
  the cache settings in the URLconf.
- ``cache_page`` takes a single argument: the cache timeout, in seconds.


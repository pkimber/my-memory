Maintenance
***********

To close a shop temporarily, I created a flat page, ``shop-is-closed``,
inserted a URL configuration before including the standard Satchmo ones e.g:

::

  from satchmo_store.urls import urlpatterns

  # close the shop temporarily
  close_store_patterns = patterns('',
      url(r'^store/(?P<path>.*)$',
          'django.views.generic.simple.redirect_to',
          {'url': '/shop-is-closed/'},
          'shop_is_closed'
          ),
      )
  urlpatterns = close_store_patterns + urlpatterns

  urlpatterns += patterns('',


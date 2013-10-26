Include
*******

::

  urlpatterns = patterns('',
      url(r'^$',    'apps.main.views.homepage', name='site-homepage'),
      (r'^help/',   include('apps.help.urls')),
      (r'^credit/', include(extra_patterns)),
  )

To include some URLs from another application at the root level:

::

  url(r'^', include('user_auth.urls')),

URL
***

URL - Replace
=============

- `Store Customization, Changing Views`_

  ::

    replacement_store_url = url(r'^$', 'django.views.generic.simple.redirect_to', {'url': '/our-products/'}, 'satchmo_shop_home')
    replace_urlpattern( urlpatterns, replacement_store_url )
    remove_duplicate_urls(urlpatterns, [])

Note: This took me some time to get working.  The key is the
``satchmo_shop_home`` parameter.  This is the name of the URL we are replacing.
You can find the names in the Satchmo source code.  The URL for this sample was
in ``satchmo/apps/satchmo_store/shop/urls.py``.


.. _`Store Customization, Changing Views`: http://www.satchmoproject.com/docs/svn/customization.html#changing-views


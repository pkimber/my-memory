URL
***

.. highlight:: python

This url, http://localhost:8000/time/, is defined in ``urls.py`` as follows:

::

  from django.conf.urls.defaults import *
  from mysite.views import my_view

  urlpatterns = patterns('',
      (r'^time/$', my_view),
  )

+-------+---------------------------------------------------------------------------------------+
| ``r`` | A python raw string.  This allows regular expressions to be written without overly    |
|       |  verbose escaping.                                                                    |
+-------+---------------------------------------------------------------------------------------+
|       |  You should exclude the expected slash at the beginning of the expression in order to |
|       |  match ``/time/``.  Django automatically puts a slash before every expression.        |
+-------+---------------------------------------------------------------------------------------+
| ``^`` |  ...require that the pattern matches the start of the string.                         |
+-------+---------------------------------------------------------------------------------------+
| ``$`` |  ...require that the pattern matches the end of the string.                           |
+-------+---------------------------------------------------------------------------------------+

Note: See :doc:`../standards`, *URL* for the preferred way of using ``url``.

Redirect
========

- :doc:`../views/response`.
- Sample code for a simple re-direct can be found here
  :doc:`../applications/satchmo/url`.

Reverse
=======

:doc:`../templates/tags`

::

  from django.core.urlresolvers import reverse

  def myview(request):
      return HttpResponseRedirect(reverse('arch-summary', args=[1945]))

Note
----

- The string returned by ``reverse()`` is already ``urlquoted``. For example:

  ::

    >>> reverse('cities', args=[u'Orléans'])
    '.../Orl%C3%A9ans/'

- URLs are not only reversed using the ``name``.  The view name can be used
  instead (leading to much confusion in my case)!

`Reversing admin URLs`_

::

  >>> reverse('admin:app_list', kwargs={'app_label': 'auth'})
  '/admin/auth/'

  >>> reverse('admin:index')
  '/admin/'


.. _`Reversing admin URLs`: https://docs.djangoproject.com/en/dev/ref/contrib/admin/#reversing-admin-urls

url
***

Admin
=====

`Reversing admin URLs`_

(from *The Definitive Guide to Django* page 118, *Special-Casing Views*):

::

  ('^([^/]+)/([^/]+)/add/$', my_other_view),

...(if I typed it right)... this will (apparently) match URLs like
``/myblog/entries/add/`` and ``/auth/groups/add/``.

============  ==============================================================
``^``         start of the string
``\[^/\]``    Match any character that is NOT a slash...
``+``         Between one and unlimited times.
============  ==============================================================

Home Page (root)
================

::

  (r'^/?$', temporary_home_page),

Numbers and arguments
=====================

::

  (r'^time/plus/(\d{1,2})/$', my_other_view),

================  ============================================================
``\d+``           To match any number of digits.
``\d{1,2}``       To match one or two digits (maximum 99).
``(\d{1,2})``     Enclose arguments you want to define within brackets.
================  ============================================================

Parameters (and Name)
=====================

`Including other URLconfs`_:

::

  url(r'^artist/$',
      feature_index,
      { 'category': 'artist', },
      name='feature_index_artist'),

Note: See :doc:`../../standards`, *URL* for the preferred way of using ``url``.

Slug
====

For a nice URL sample, combining a date with a slug, see
`urls.py from simple_url_monitor`_.

::

  (r'^news/(?P<slug>[-\w]+)/$', get_time_line),


.. _`Including other URLconfs`: https://docs.djangoproject.com/en/dev/topics/http/urls/#including-other-urlconfs
.. _`Reversing admin URLs`: https://docs.djangoproject.com/en/dev/ref/contrib/admin/#reversing-admin-urls
.. _`urls.py from simple_url_monitor`: http://toybox/hg/dev/file/tip/simple_url_monitor/urls.py

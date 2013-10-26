Template Tags
*************

Links
=====

- `Built-in template tags and filters`_

Comment
=======

::

  {# this is a comment #}

::

  {% comment %}
      everything in here will be ignored...
  {% endcomment %}

date
====

To display ``Mon 13th Jul 2009 21:54``:

::

  {{ item.created_date|date:"D jS M Y H:i" }}

default
=======

If value evaluates to ``False``, use given default:

::

  {{ value|default:"nothing" }}

If (and only if) value is ``None``, use given default:

::

  {{ value|default_if_none:"nothing" }}

for
===

::

  <ul>
    {% for athlete in athlete_list %}
      <li>{{ athlete.name }}</li>
    {% endfor %}
  </ul>

Foreign Keys
------------

From `Filtering then Iterating through nested django models`_

::

  {% for event in events %}
    {{ event.name }}
    {% for rota in event.eventrota_set.all %}
      {{ rota.name }} ({{ rota.status }})
    {% endfor %}
  {% endfor %}


if
==

::

  {% if athlete_list and coach_list %}
      Both athletes and coaches are available.
  {% endif %}

ifequal
=======

::

  {% ifequal user.id comment.user_id %}
      ...
  {% endifequal %}

To compare a string:

::

  {% ifequal user.username "adrian" %}

include
=======

See notes on :doc:`include`.

RequestContext
==============

Parameters
----------

Parameters, in this example, I get the query variable named ``q``:

::

  {{ request.REQUEST.q }}

**Note**: I can't get this to work... the following seems to do the job, but I
am not sure it is *correct*:

::

  {{ request.META.QUERY_STRING }}

Path
----

::

  {{ request.path }}
  {{ request.get_full_path }}

User
----

- :doc:`../users/template`

URL (reverse)
=============

`Template Tags - url`_:

e.g. We can reference this named URL:

::

  url(r'^(?P<category>[-\w]+)/$',
      index_view,
      name='feature_index'),

...with this template tag:

::

  <a href="{% url feature_index feature.category.slug %}">some text</a>

Note: To pass a string parameter (rather than an object), put the string
into quotes e.g. ``'news'``.

Admin
-----

::

  <a href="{% url admin:index %}">Admin</a>

Image (or file):
----------------

To get the URL of an image (or file) field:

::

  <img src="{{ news.image.url }}" align="left" alt="{{ news.headline }}" />


.. _`Built-in template tags and filters`: http://docs.djangoproject.com/en/dev/ref/templates/builtins/
.. _`Filtering then Iterating through nested django models`: http://stackoverflow.com/questions/9505164/filtering-then-iterating-through-nested-django-models
.. _`Template Tags - url`: http://docs.djangoproject.com/en/1.1/ref/templates/builtins/#url

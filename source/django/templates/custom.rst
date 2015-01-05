Custom Template Tags
********************

.. highlight:: python

Links
=====

- `Custom template tags and filters`_
- Standards_

Sample
======

In the application folder, create a ``templatetags`` folder for the source
code.

Create a source file for the template code e.g. ``cms_tags.py`` (for the name
of the source file, see Standards_).

Simple
------

Here is some source code for a *very* simple template::

  from django import template
  from django.utils.safestring import mark_safe

  def format_address(shop):
      return mark_safe('[%s]' % shop.address)

  register = template.Library()
  register.simple_tag(format_address)

In the template (``html``) file, load the custom template tag e.g::

  {% load cms_tags %}

Call the template tag::

  {% format_address shop %}

HTML
----

::

  @register.inclusion_tag('cms/_menu.html', takes_context=True)
  def cms_menu(context):
      return dict(
          pages=Page.objects.menu(),
          user=context.get('user', None),
      )

.. tip:: The ``takes_context`` and ``context`` parameters can be used to pass
         the template context into the tag.


.. _`Custom template tags and filters`: https://docs.djangoproject.com/en/1.7/howto/custom-template-tags/
.. _Standards: https://www.pkimber.net/open/standards.html#tags

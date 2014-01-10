Custom Template Tags
********************

.. hightlight:: python

Links
=====

- `Custom template tags and filters`_

Sample
======

In the application folder, create a ``templatetags`` folder for the source
code.

Create a source file for the template code e.g. ``address_extras.py``.

Here is some source code for a *very* simple template::

  from django import template
  from django.utils.safestring import mark_safe

  def format_address(shop):
      return mark_safe('[%s]' % shop.address)

  register = template.Library()
  register.simple_tag(format_address)

In the template (``html``) file, load the custom template tag e.g::

  {% load address_extras %}

Call the template tag::

  {% format_address shop %}


.. _`Custom template tags and filters`: http://docs.djangoproject.com/en/1.2/howto/custom-template-tags/

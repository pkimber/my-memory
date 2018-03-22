django-template-utils
*********************

Links
=====

- http://code.google.com/p/django-template-utils
- http://django-template-utils.googlecode.com/svn/trunk/docs/markup.txt

Install
=======

::

  pip install -e svn+http://django-template-utils.googlecode.com/svn/trunk#egg=template-utils

Configuration
=============

Add the following to your ``INSTALLED_APPS``:

::

  INSTALLED_APPS = (
      'template_utils',

Usage
=====

- To convert markup code to html use the following template tag:

  ::

    {% load generic_markup %}
     article.content|apply_markup 

  Note:

  - In this example, ``article.content`` is the markdown text.
  - ``apply_markup`` can take parameters e.g. ``apply_markup:"markdown"``,
    but **be careful**, the ``MARKUP_FILTER`` variable in the
    ``settings.py`` (see below) will then be ignored.

- To set parameters for the markup conversion, put the following into
  your ``settings.py`` file:

  ::

    MARKUP_FILTER = (
        'markdown',
        {
            'safe_mode': True,
            'extensions': ['wikilinks',],
        },
    )

  Note:

  - Available markdown extensions can be found on this page:
    :doc:`../../python/modules/markdown`.

Issues
======

Version
-------

Note: The ``apply_markup`` template tag for the release version,
http://pypi.python.org/pypi/template_utils/0.4p2, is out of date!

To check you are using the correct version, make sure the code in
``template_utils/templatetags/generic_markup.py`` reads as follows:

::

  if arg is not None:
      return mark_safe(formatter(value, filter_name=arg))
  return mark_safe(formatter(value))

Note: ``mark_safe`` is in two places...


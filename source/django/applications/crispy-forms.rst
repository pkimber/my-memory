django-crispy-forms
*******************

- http://django-crispy-forms.rtfd.org/
- https://github.com/maraujop/django-crispy-forms

Alternative
-----------

- `django-floppyforms`_ for details on differences, see
  `Comments on django-floppyforms update`_ (``crispy-forms`` lets you define
  layouts in python code.  This works in lots of situations but ``floppyforms``
  is especially useful when you have frontend people who aren't python
  developers.  They can work on form rendering just using templates, no python
  code is required).

Sample
======

Formsets
--------

Including ``inlineformset_factory``...

https://bitbucket.org/ssraleigh/raleigh/changeset/d36a2025a972
(sorry, this is a private repository, let me know if you want to see some
sample code).

::

  hg cat -r817661508ab2 whatson/forms.py
  hg cat -r817661508ab2 whatson/views.py
  hg cat -r817661508ab2 whatson/templates/whatson_event.html


.. _`django-floppyforms`: http://pypi.python.org/pypi/django-floppyforms
.. _`Comments on django-floppyforms update`: http://bruno.im/2012/jun/11/django-floppyforms-10-released/

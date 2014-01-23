(My) Coding Standards
*********************

import
======

From `The Best (and Worst) of Django`_

Use non-project-relative imports::

::

  import app.models

...not ``import project.app.models``

Use relative imports where possible (see PEP0328_):

::

  from . import x

manage.py
=========

From `The Best (and Worst) of Django`_

Stop using ``manage.py`` and see :doc:`snippets/virtualenv`.

Model
=====

The order of model inner classes and standard methods should be as follows
(noting that these are not all required):

- All database fields
- Custom manager attributes
- ``class Meta``
- ``def __unicode__()``
- ``def __str__()``
- ``def save()``
- ``def get_absolute_url()``
- Any custom methods

settings.py
===========

From `The Best (and Worst) of Django`_::

  settings
  |-- __init__.py
  |-- base.py
  |-- staging.py
  |-- production.py
  |-- local.py

.. code-block:: python

  # base.py
  INSTALLED_APPS  =  [...]
  # local.py
  from settings.base import  *
  INSTALLED_APPS += ['debug_toolbar']
  $ django-admin.py shell --settings=settings.local
  # deploy.wsgi
  os.environ['DJANGO_SETTINGS_MODULE'] = 'settings.deploy'

Note: I think the last line should read ``settings.production``.

Style
=====

- http://www.python.org/dev/peps/pep-0008/
- https://docs.djangoproject.com/en/dev/internals/contributing/writing-code/coding-style/
- http://flask.pocoo.org/docs/styleguide/#general-layout

URL
===

From `Coding Conventions`_::

  url(regex=r'^$',
      view=views.poll_list,
      name='poll_list',
  ),

... *the preferred and wonderfully explicit Jacob Kaplan-Moss / Frank Wiles
pattern*...

Note: Probably best to use the actual view class rather than just the name,
using ``view='polls.views.standard.poll_list',``, makes it harder to debug on
errors.

View
====

::

  # view name
  def region_routing_view(request):

  # url name
  url(r'^store/$', region_routing_view, name='region_routing'),

  # template name
  region_routing.html

  # test name
  def test_region_routing_view(self):


.. _`Coding Conventions`: http://readthedocs.org/docs/django-party-pack/en/latest/conventions.html#using-the-url-function
.. _`The Best (and Worst) of Django`: http://www.slideshare.net/jacobian/the-best-and-worst-of-django
.. _PEP0328: http://www.python.org/dev/peps/pep-0328/

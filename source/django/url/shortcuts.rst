Shortcuts
*********

.. highlight:: python

Template
========

::

  from django.views.generic.simple import direct_to_template

  url(r'^popup/success/$',
      direct_to_template, {
          'template': 'test/popup_success.html'
      },
      name="popup_success"
  ),

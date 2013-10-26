Class Based
***********

Simple Template
===============

`Simple usage`_

::

  from django.views.generic import TemplateView

  urlpatterns = patterns('',
      url(regex=r'^knock/percent/$',
          view=TemplateView.as_view(
              template_name='knock/percent.html'
          ),
          name='knock_percent'
      ),
  )


.. _`Simple usage`: https://docs.djangoproject.com/en/1.3/topics/class-based-views/#simple-usage

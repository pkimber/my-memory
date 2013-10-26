Class Based View - Date
***********************

.. highlight:: python

Links
=====

- MonthArchiveView_

.. _MonthArchiveView: http://ccbv.co.uk/projects/Django/1.4/django.views.generic.dates/MonthArchiveView/

Sample
======

Create a confirm delete template at ``app-name/model-name_archive_month.html``

::

  url(regex=r'^calendar/(?P<year>\d{4})/(?P<month>\w+)/$',
      view=EventCalendarMonthView.as_view(),
      name='whatson_calendar'
  ),

::

  class EventCalendarMonthView(MonthArchiveView):
      allow_empty = True
      allow_future = True
      date_field = 'event_date'
      model = Event

**Note**: Use the abbreviated month name for the URL e.g:
http://localhost:8000/whatson/calendar/2012/jun/

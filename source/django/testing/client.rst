Test Client
***********

.. highlight:: python

Note: To avoid hard-coding the URL, use ``reverse``, :doc:`snippets/url`.

AJAX and Post
=============

See sample below.

To pass raw data (rather than form fields) to a post request::

  post_data = '[{"name": "East Anstey"}, {"name": "East Buckland"}]'
  response = self.client.post(
      '/my_screen_name/json/',
      post_data,
      content_type='application/json'
  )

To make this into an AJAX request which will be recognised by ``is_ajax``,
add the ``HTTP_X_REQUESTED_WITH`` parameter::

  response = self.client.post(
      '/my_screen_name/json/',
      post_data,
      content_type='application/json',
      HTTP_X_REQUESTED_WITH='XMLHttpRequest'
  )

For details see `Testing AJAX Views in Django`_

Sample
======

Create a ``tests.py`` file inside your application folder::

  from django.test import TestCase

  class SimpleTest(TestCase):
      def test_preview(self):
          response = self.client.post('/wiki/preview/', {
              'data': 'Heading\n=======',
              })
          self.assertTrue('<h1>Heading</h1>' in response.content)

Note:

- To avoid hard-coding the URL, use ``reverse``, :doc:`snippets/url`
- This code is using the `Django test client`_ which can be used to test views.
- Don't forget to put the leading slash on the URL.
- Form fields are passed in as simple key/values in the dictionary.  Debug the
  code at the point where the post is made to get some sample data e.g. for a
  formset:

  ::

    self.client.post('/admin/product/option/1/', {
        'form-INITIAL_FORMS': '2',
        'form-TOTAL_FORMS': '2',
        'form-0-group_name': 'Colour finishes',
        'form-0-name': 'Orange',
        'form-0-option_id': '6',
        'form-0-price': '23',
        'form-0-price_before': '3',
        'form-1-group_name': 'Colour finishes',
        'form-1-name': 'Green',
        'form-1-option_id': '5',
        'form-1-price': '25',
        'form-1-price_before': '0',
        })

Assertions
==========

Assertions_:

``assertContains``
------------------

Asserts that a ``Response`` instance produced the given status_code and
that text appears in the content of the response.  If count is provided,
text must occur exactly count times in the response::

  TestCase.assertContains(response, text, count=None, status_code=200)

e.g::

  response = self.client.get('/')
  self.assertContains(response, 'Latest News')

Note:

- There is also a ``assertNotContains`` method.
- The ``response`` object must be the first parameter to the
  ``assertContains`` method...

``assertRedirects``
-------------------

::

  response = self.client.get('/region/store/')
  self.assertRedirects(response, '/region/choose/')

.. tip:: If ``fetch_redirect_response`` is set to ``False``, the final page
         won't be loaded.

If you would to test a re-direct to an external URL (from
`Django's assertRedirects little gotcha`_)::

  response = self.client.get('/region/store/')
  self.assertEqual(
      response._headers['location'],
      ('Location', 'http://orange.net/usa'))
  self.assertEqual(response.status_code, 302)

Authentication
==============

To test login and authentication, see :doc:`../snippets/testing`.

Cookies
=======

::

  response = self.client.get('/region/store/eu/')
  self.assertTrue('region' in response.cookies)
  self.assertEquals('eu', response.cookies['region'].value)

Request
=======

From `RequestFactory`::

  from django.utils import unittest
  from django.test.client import RequestFactory

  class SimpleTest(unittest.TestCase):
      def setUp(self):
          # Every test needs access to the request factory.
          self.factory = RequestFactory()

      def test_details(self):
          # Create an instance of a GET request.
          request = self.factory.get('/customer/details')

          # Test my_view() as if it were deployed at /customer/details
          response = my_view(request)
          self.assertEqual(response.status_code, 200)

Response
========

The ``response`` object in the example above has a ``context`` attribute which
you can use to examine the ``context`` returned from the view function.  To
access context elements, use the following syntax::

  response.context['category']

Note: If you examine the ``context`` object, you will find it is a list (or a
list of lists).  This can become very confusing, so just use the simple syntax
above to access dictionary elements.  For more information see
`Test client improvements`_.

URL
===

To use a test/temporary URL, put a ``urls.py`` file into the ``tests`` folder,
and reference it within the test::

  class TestMyView(TestCase):
      urls = 'myapp.tests.urls'

For details, see `TestCase.urls`_


.. _`Django test client`: http://docs.djangoproject.com/en/1.1/topics/testing/#module-django.test.client
.. _`Django's assertRedirects little gotcha`: http://devblog.point2.com/2010/04/23/djangos-assertredirects-little-gotcha/
.. _`RequestFactory`: https://docs.djangoproject.com/en/dev/topics/testing/#the-request-factory
.. _`Test client improvements`: http://docs.djangoproject.com/en/1.1/releases/1.1/#test-client-improvements
.. _`TestCase.urls`: https://docs.djangoproject.com/en/dev/topics/testing/#urlconf-configuration
.. _`Testing AJAX Views in Django`: http://ericholscher.com/blog/2009/apr/16/testing-ajax-views-django/
.. _Assertions: http://docs.djangoproject.com/en/1.1/topics/testing/#assertions

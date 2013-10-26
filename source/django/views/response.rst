Response
********

.. highlight:: python

Error
-----

From `HTTP status code to return by a service for a validation failure`_:

::

  from django.http import HttpResponseBadRequest
  return HttpResponseBadRequest("The data is invalid.")

Also see `Django HttpResponse subclasses`_...

Redirect
--------

- For an example of a standard re-direct, see :doc:`../cookies`.
- Using the shortcut function:

  ::

    from django.shortcuts import redirect
    return redirect('feature_index')

  Note: In this example, ``feature_index`` is the name of a view.

Security
--------

::

  from django.http import HttpResponseForbidden
  return HttpResponseForbidden("Sorry, you are not allowed in this section.")

Template
--------

::

  from django.shortcuts import render

  def popup(request):
      context_dict = {
          'first_name': 'Bill',
          'last_name': 'Smith',
      }
      return render(
          request,
          'blog/info.html',
          context_dict
      )

Text
----

To return a simple text response (default status 200):

::

  from django.http import HttpResponse

  def save(request):
      return HttpResponse('OK')


.. _`HTTP status code to return by a service for a validation failure`: http://stackoverflow.com/questions/1959947/whats-an-appropriate-http-status-code-to-return-by-a-rest-api-service-for-a-vali
.. _`Django HttpResponse subclasses`: http://docs.djangoproject.com/en/1.3/ref/request-response/#httpresponse-subclasses

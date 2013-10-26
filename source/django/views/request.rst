Request
*******

AJAX
====

::

  def save(request):
      if request.is_ajax():
          print request.POST

GET
===

`Django: Capturing url parameters in request.GET`_

If your url is something like http://domain/search/?q=haha, then you would use
code like this:

::

  request.GET.get('q', '').

  if 'next' in request.GET:
      url = request.GET.get('next')

POST
====

::

  def save(request):
      if request.method == 'POST':
          print request.POST


.. _`Django: Capturing url parameters in request.GET`: http://stackoverflow.com/questions/150505/django-capturing-url-parameters-in-request-get

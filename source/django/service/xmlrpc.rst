XMLRPC
******

Links
=====

- :doc:`json-rpc`

Issues
======

CSRF protection will stop access to XMLRPC methods.  To solve the problem:

::

  from django.views.decorators.csrf import csrf_exempt

  @csrf_exempt
  def handle_xmlrpc(request):


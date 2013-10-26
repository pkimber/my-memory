Issues
******

.. highlight:: python

To catch ``TemplateSyntaxError`` exceptions, wrap the ``render_to_response``
code e.g:

::

  from django.template import TemplateSyntaxError
  try:
      return render_to_response(
          'homepage.html',
          render_dict,
          context_instance=RequestContext(request))
  except TemplateSyntaxError e:
      import ipdb
      ipdb.set_trace()
      print e

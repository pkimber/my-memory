CSRF
****

Links
=====

- `Cross Site Request Forgery protection`_
- `How To Safely Store A Password`_

  - https://bitbucket.org/dwaiter/django-bcrypt/src

Usage
=====

AJAX
----

- :doc:`csrf-ajax`

Disable
-------

::

  from django.views.decorators.csrf import csrf_exempt

  @csrf_exempt
  def my_view(request):
      return HttpResponse('Hello world')

Sample
------

- Add the middleware:

  ::

    MIDDLEWARE_CLASSES = (
        'django.middleware.csrf.CsrfViewMiddleware',

  ...to your list of middleware classes... It should come before
  ``CsrfResponseMiddleware`` if that is being used, and before any view
  middleware that assume that CSRF attacks have been dealt with.

- In any template that uses a ``POST`` form, use the ``csrf_token`` tag inside
  the ``<form>`` element if the form is for an internal URL, e.g:

  ::

    <form action="" method="post">
        {% csrf_token %}

- In the corresponding view functions, ensure that the
  ``'django.core.context_processors.csrf'`` context processor is being used.
  Usually, this can be done in one of two ways:

  - Use ``RequestContext``, which always uses
    ``'django.core.context_processors.csrf'`` (no matter what your
    ``TEMPLATE_CONTEXT_PROCESSORS`` setting).  If you are using generic views
    or contrib apps, you are covered already, since these apps use
    ``RequestContext`` throughout.

  - Manually import and use the processor to generate the CSRF token and add it
    to the template context. e.g:

    ::

      from django.core.context_processors import csrf
      from django.shortcuts import render_to_response

      def my_view(request):
          c = {}
          c.update(csrf(request))
          # ... view code here
          return render_to_response("a_template.html", c)

Upgrade
=======

The utility script ``extras/csrf_migration_helper.py`` can help to
automate the finding of code and templates that may need to be upgraded.
It contains full help on how to use it.


.. _`Cross Site Request Forgery protection`: http://docs.djangoproject.com/en/1.2/ref/contrib/csrf/
.. _`How To Safely Store A Password`: http://codahale.com/how-to-safely-store-a-password/


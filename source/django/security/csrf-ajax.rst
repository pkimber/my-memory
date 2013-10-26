CSRF - AJAX
***********

*Note*: This article is more recent and might have a better solution,
`Django CSRF and Ajax POST requests`_


To get CSRF protection with jQuery AJAX calls:

- Copy the following script:

  ::

    ./misc/django_ajax_csrf.js

  ...to the static resource folder of your project e.g:

  ::

    myapp/myapp/static/js/common/django_ajax_csrf.js

- Include the file in your HTML page e.g:

  ::

    <script type="text/javascript" src="{{ STATIC_URL }}js/common/django_ajax_csrf.js"></script>

- Here is a sample jQuery AJAX call which will automatically use the above
  script:

  .. code-block:: js

    jQuery.post(
        "/scratchpad/json/",
        ko.toJSON(viewModel.villages()),
        function(data) {
            console.log(data);
        }
    );

- For detailed information, see AJAX_


.. _`Django CSRF and Ajax POST requests`: http://yoavgivati.com/2012/01/django-csrf-and-ajax-post-requests/
.. _AJAX: http://readthedocs.org/docs/django/en/latest/ref/contrib/csrf.html#ajax

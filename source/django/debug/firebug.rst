Firebug
*******

SQL
===

- http://www.djangosnippets.org/snippets/1962/
  Output sql_queries in Firebug console when in debug mode...

Add this code to the end of the ``<body>`` of your main template and it
will print out all your SQL queries with timings in the Firebug console:

::

  {% if debug %}
  <script type="text/javascript">
    {% for q in sql_queries %}
      console.debug("({{ q.time }}s)", "{{ q.sql|escapejs }}");
    {% endfor %}
  </script>
  {% endif %}

This uses the "``django.core.context_processors.debug``" template context
processor, which requires that ``DEBUG=True`` and that your IP address is
listed in ``INTERNAL_IPS``.


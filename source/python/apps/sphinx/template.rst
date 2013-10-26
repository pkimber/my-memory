Templates
*********

Links
=====

- http://ericholscher.com/blog/2009/apr/5/adding-google-analytics-sphinx-docs/
- http://sphinx.pocoo.org/latest/faq.html#using-sphinx-with
  Using Sphinx with... Google Analytics.

Usage
=====

To customise the existing template:

- Create a ``layout.html`` file in the ``_templates`` folder.
- Override the default template e.g:

  ::

    {% extends "!layout.html" %}

    {%- block extrahead %}
        {{ super() }}
        <script type="text/javascript">
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-17262700-1']);
            _gaq.push(['_trackPageview']);
            (function() {
                var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })();
        </script>
    {% endblock %}

  Take note of the ``{{ super() }}`` call.  This means that you are calling
  the inherited template's code, which pulls in the default Copyright notice
  into the footer.  Then you can put in your custom code after that.

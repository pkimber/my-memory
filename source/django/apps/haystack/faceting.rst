Faceting
********

Links
=====

- Faceting_

Configuration
=============

In these samples we will be faceting on the ``category_exact`` field:

- For faceting, we need to use a field from the model, but not allow SOLR to
  transform it.  To achieve this, the ``build_solr_schema`` command will create
  a ``string`` field (rather than ``text``).  To do this, set the ``indexed``
  attribute to ``False``.  Here is a sample field from the Haystack
  ``SearchIndex`` class:

  ::

    class SnapboardPostIndex(SearchIndex):
        text = CharField(model_attr='text', document=True)
        category_exact = CharField(indexed=False)

        def prepare_category_exact(self, obj):
            result = obj.thread.category.label
            return result.strip()

- Probably best to use a ``prepare_`` method to generate the field content as
  using a text template can insert un-wanted new line characters.  This is only
  an issue for SOLR fields of type ``string`` as we won't perform any
  transformations on the data.

- When generating the SOLR ``schema.xml`` file using the ``build_solr_schema``
  management command, check the ``indexed`` attribute to make sure it is set to
  ``true``.  For more information see the *Faceting* section in the
  :doc:`issues` notes.

  Note: Don't forget to re-start the SOLR server and rebuild the index.

- For faceted search, we need to create a separate ``urls.py`` file (perhaps in
  a ``search`` folder):

  ::

    from django.conf.urls.defaults import *
    from haystack.forms import FacetedSearchForm
    from haystack.query import SearchQuerySet
    from haystack.views import FacetedSearchView

    sqs = SearchQuerySet().facet('category_exact')

    urlpatterns = patterns('haystack.views',
        url(r'^$', FacetedSearchView(form_class=FacetedSearchForm, searchqueryset=sqs), name='haystack_search'),
    )

  Note:

  - The field name (``category_exact``) is set in the ``facet`` method.
  - Don't forget to include this ``urls.py`` file in the project ``urls.py``
    e.g:

    ::

      urlpatterns = patterns('',
          # Example:
          (r'^search/', include('search.urls')),
      )

- This ``search.html`` template is a little complicated and needs some more
  work:

  ::

    {% extends "admin/base_site.html" %}
    
    {% block content %}
        <h2>Search</h2>
    
        <form method="get" action=".">
            <table>
                <tbody>
                    {{ form.as_table }}
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <input type="submit" value="Search">
                        </td>
                    </tr>
                </tbody>
            </table>
    
            {% if query %}
                <!-- Begin faceting. -->
                <h2>By Category</h2>
                <div>
                    <dl>
                        {% if facets.fields.category_exact %}
                            <dt>Category</dt>
                            {# Provide only the top 5 categories #}
                            {% for category in facets.fields.category_exact|slice:":5" %}
                                <dd><a href="{{ request.get_full_path }}&amp;selected_facets=category_exact:&quot;{{ category.0|urlencode }}&quot;">{{ category.0 }}</a> ({{ category.1 }})</dd>
                            {% endfor %}
                        {% else %}
                            <p>No category facets.</p>
                        {% endif %}
                    </dl>
                </div>
                <!-- End faceting -->
    
                <h3>Results</h3>
    
                {% for result in page.object_list %}
                    <p>
                        {{ result.object.id }}
                        <b>{{ result.model_name }}</b>
                        <a href="{{ result.object.get_absolute_url }}">
                            {% ifequal result.model_name 'post' %}
                                <b>{{ result.object.thread.category.label }}</b>
                                {{ result.object.text|truncatewords:80 }}
                            {% endifequal %}
                            {% ifequal result.model_name 'note' %}
                                {{ result.object.title }}
                                {{ result.object.body|truncatewords:80 }}
                            {% endifequal %}
                        </a>
                    </p>
                {% empty %}
                    <p>No results found.</p>
                {% endfor %}
            {% else %}
                {# Show some example queries to run, maybe query syntax, something else? #}
                <h3>No results...</h3>
            {% endif %}
        </form>
    {% endblock %}

Testing
=======

To test the facets:

::

  $ python manage.py shell
  In [1]: from haystack.query import SearchQuerySet
  In [2]: sqs = SearchQuerySet().facet('category_exact'); sqs.facet_counts()
  Out[2]:
  {'dates': {},
   'fields': {u'category_exact': [(u'The Best Restaurants\n\n', 258),
                                  (u'Good Deals\n\n', 204),
                                  (u'Skiing in the Vermont Area\n\n', 192),
                                  (u'General Discussion\n\n', 171)]},
   'queries': {}}

...or to search for content at the same time:

::

  sqs = SearchQuerySet().filter(content='feature').facet('category_exact'); sqs.facet_counts()


.. _Faceting: http://haystacksearch.org/docs/faceting.html


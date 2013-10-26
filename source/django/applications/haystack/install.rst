Install
*******

Dependencies
============

If using SOLR:

::

  pip -E ./env/ install pysolr

Download
========

::

  cd ~/download/django/
  wget http://github.com/downloads/toastdriven/django-haystack/django-haystack-1.0.1-final.tar.gz

Install
=======

- Extract the source code:

  ::

    cd ~/src/
    tar xzf ~/download/django/django-haystack-1.0.1-final.tar.gz

- :doc:`../../../solr/install`

Configuration
=============

- Add ``haystack`` to installed apps in your ``settings.xml`` file:

  ::

    INSTALLED_APPS = (
        ...
        'haystack',

- In ``settings.xml``, add the python import path to a file where you will
  keep your search configuration e.g:

  ::

    HAYSTACK_SITECONF = 'myproject.search_sites'

  Note:  In this example, ``myproject`` is the name of the project.  We
  create the ``search_sites`` python module in a later step).

- In ``settings.xml``, tell Haystack we are using SOLR and set the URL e.g:

  ::

    HAYSTACK_SEARCH_ENGINE = 'solr'
    HAYSTACK_SOLR_URL = 'http://localhost:8080/solr'

- Create a python file, ``search_sites.py``, in the root of the project
  (in the same folder as ``settings.xml``):

  ::

    import haystack
    haystack.autodiscover()

Implementation
==============

Application
-----------

- For each application where you want to index data in a model, create a
  ``search_indexes.py`` file in the same folder as ``models.py``.  Here is
  a sample file:

  ::

    import datetime
    from haystack.indexes import *
    from haystack import site
    from myapp.models import Note

    class NoteIndex(SearchIndex):
        text = CharField(document=True, use_template=True)
        author = CharField(model_attr='user')
        pub_date = DateTimeField(model_attr='pub_date')

        def get_queryset(self):
            """Used when the entire index for model is updated."""
            return Note.objects.filter(pub_date__lte=datetime.datetime.now())

    site.register(Note, NoteIndex)

  Note:

  - Every SearchIndex requires there be one (and only one) field with
    ``document=True``.  This indicates to both Haystack and the search engine
    about which field is the primary field for searching within.
  - When you choose a ``document=True`` field, it should be consistently
    named across all of your ``SearchIndex`` classes to avoid confusing the
    backend.  The convention is to name this field ``text``.
  - ``use_template=True`` is a mechanism to allow is to build the document
    using a data template rather than string concatenation.  The template is
    created in the folder:

      ::

        templates/search/indexes/myapp/note_text.txt

    ...and will look like this:

      ::

         {{ object.title }}
         {{ object.user.get_full_name }}
         {{ object.body }}

  - If you don't want to use a template (possibly when creating a ``string``
    field... check out the ``prepare_`` method in :doc:`faceting`...
  - The custom ``get_queryset`` method selects a subset of data to be indexed.

  ...here is the ``models.py`` file (for reference):

  ::

    from django.db import models
    from django.contrib.auth.models import User

    class Note(models.Model):
        user = models.ForeignKey(User)
        pub_date = models.DateTimeField()
        title = models.CharField(max_length=200)
        body = models.TextField()

        def __unicode__(self):
            return self.title

Templates
---------

- Add the following to your URL configuration:

  ::

    (r'^search/', include('haystack.urls')),

- Create ``search/search.html`` template:

  ::

    {% extends 'base.html' %}

    {% block content %}
        <h2>Search</h2>

        <form method="get" action=".">
            <table>
                {{ form.as_table }}
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <input type="submit" value="Search">
                    </td>
                </tr>
            </table>

            {% if query %}
                <h3>Results</h3>

                {% for result in page.object_list %}
                    <p>
                        <a href="{{ result.object.get_absolute_url }}">{{ result.object.title }}</a>
                    </p>
                {% empty %}
                    <p>No results found.</p>
                {% endfor %}
            {% else %}
                {# Show some example queries to run, maybe query syntax, something else? #}
            {% endif %}
        </form>
    {% endblock %}

  Note:

  - ``page.object_list`` is actually a list of ``SearchResult`` objects
    instead of individual models.  These objects have all the data returned
    from that record within the search index as well as score.
  - They can also directly access the model for the result via
    `` result.object ``.  So the `` result.object.title `` uses the
    actual ``Note`` object in the database and accesses its ``title``
    field.

SOLR - Schema
-------------

To generate the SOLR schema for your search models:

- Generate the schema:

  ::

    python manage.py build_solr_schema

- Copy the output from the ``build_solr_schema`` command to your SOLR
  ``conf/schema.xml`` file...
- Re-start SOLR.

Maintenance
===========

Read the :doc:`maintenance` notes next...




.. _`faceting notes`: faceting.html


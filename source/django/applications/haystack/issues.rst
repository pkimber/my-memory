Issues
******

Faceting
========

When building an *_exact* field for faceting, the Haystack
``build_solr_schema`` management command will create a ``string`` field with
the ``indexed`` attribute set to ``false``.  Faceting will not work unless
``indexed`` is set to ``true`` e.g:

::

  <field name="category_exact" type="string" indexed="true" stored="true" multiValued="false" />

Note: I think *Jonathan S* is having the same issue here:
`Faceting problem with Solr backend`_


.. _`Faceting problem with Solr backend`: http://groups.google.com/group/django-haystack/browse_thread/thread/8b1aaa139914ace7


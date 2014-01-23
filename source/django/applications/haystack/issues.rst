Issues
******

.. highlight:: xml

Faceting
========

When building an *_exact* field for faceting, the Haystack
``build_solr_schema`` management command will create a ``string`` field with
the ``indexed`` attribute set to ``false``.  Faceting will not work unless
``indexed`` is set to ``true`` e.g::

  <field name="category_exact" type="string" indexed="true" stored="true" multiValued="false" />

Note: I think *Jonathan S* is having the same issue here:
`Faceting problem with Solr backend`_

Version
=======

The current version of Haystack does not add a ``_version`` field to
``schema.xml``.  You will see this error when running ``update_index``::

  Caused by: org.apache.solr.common.SolrException:
  _version_field must exist in schema,
  using indexed="true" stored="true" and multiValued="false"
  (_version_ does not exist)

To solve the problem, add a ``_version_`` field to the ``fields`` section of
``schema.xml``::

  <fields>
    <!-- other stuff... -->

    <field name="_version_" type="long" indexed="true" stored ="true"/>
  </fields>

https://github.com/toastdriven/django-haystack/issues/671


.. _`Faceting problem with Solr backend`: http://groups.google.com/group/django-haystack/browse_thread/thread/8b1aaa139914ace7

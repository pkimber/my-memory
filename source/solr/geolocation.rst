Geolocation
***********

Links
=====

- `Installation and Configuration of LocalSolr`_
- `LocalSolr`_ offers geographical searching capabilities to your search engine.
- http://code.google.com/p/forage/wiki/GeoSearch
  forage - Search Abstraction Layer
- `Geo Location Search with Solr and Lucene`_
- `developerWorks, Location-aware search with Apache Lucene and Solr`_.

LocalSolr
=========

Install
-------

- Follow the normal :doc:`install` instructions.
- Download ``locallucene_r2.0.tar.gz`` and ``localsolr_r2.0.tar.gz``
  from http://sourceforge.net/projects/locallucene/
- Extract the following ``jar`` files from the archives and add to the ``lib``
  folder in your ``solr/home`` (e.g. in the :doc:`install`, the ``lib`` folder
  would be ``/home/repository/solr/default/lib/``):

  - ``geoapi-nogenerics-2.1-M2.jar``
  - ``gt2-referencing-2.3.1.jar``
  - ``jsr108-0.01.jar``
  - ``junit.jar``
  - ``locallucene.jar``
  - ``localsolr.jar``

- Update ``solrconfig.xml``.  Here is a patch file showing the configuration to
  insert: solrconfig.xml.patch_
- Add the following field definitions to your ``schema.xml`` file:

  ::

    <field name="lat" type="sdouble" indexed="true" stored="true"/><!-- must match the latField in solrconfig.xml -->
    <field name="lng" type="sdouble" indexed="true" stored="true"/><!-- must match the lngField in solrconfig.xml -->
    <field name="geo_distance" type="sdouble"/> <!-- Optional but used for distributed searching -->
    <dynamicField name="_local*" type="sdouble" indexed="true" stored="true"/><!-- used internally by localsolr -->

- If you want to use the demo data (or the LocalSolr demo data)...

  - Add the following field definitions to your ``schema.xml`` file:

      ::

        <field name="cinema" type="text" indexed="true" stored="true"/>
        <field name="street" type="text" indexed="true" stored="true" omitNorms="true"/>
        <field name="city" type="text_ws" indexed="true" stored="true" multiValued="true" omitNorms="true"/>
        <field name="zip" type="text" indexed="true" stored="true"/>
        <field name="doctype" type="text" indexed="true" stored="true"/>

  - Extract ``post.jar`` from the ``apache-solr-1.3.0.zip`` archive,
    folder ``apache-solr-1.3.0/example/exampledocs/``.
  - Get a copy of the XML demo data: devon.xml_
  - Start SOLR and add the data to SOLR:

      ::

        java -Durl=http://localhost:8080/solr/update -jar post.jar devon.xml

  - Here is a python script which you can use to test the search:
    search-http-get.py_.
  - To install the **LocalSolr** demo data, download
    http://www.nsshutdown.com/solr-example.tgz
  - Extract ``ny_cinemas.xml`` from the archive folder,
    ``solr-example.tar/solr-example/data/ny_cinemas.xml``.
  - Start SOLR and add the data to SOLR:

      ::

        java -Durl=http://localhost:8080/solr/update -jar post.jar ny_cinemas.xml

Sort
====

To sort by distance simply add:

::

  &sort=geo_distance asc

For sample code see search.py_


.. _`Installation and Configuration of LocalSolr`: http://www.twintechs.com/blog/?p=26
.. _`LocalSolr`: http://www.gissearch.com/localsolr
.. _`Geo Location Search with Solr and Lucene`: http://blog.jteam.nl/2009/08/03/geo-location-search-with-solr-and-lucene/
.. _`developerWorks, Location-aware search with Apache Lucene and Solr`: http://www.ibm.com/developerworks/opensource/library/j-spatial/
.. _solrconfig.xml.patch: ../../misc/howto/solr/solrconfig.xml.patch
.. _devon.xml: ../../misc/howto/solr/devon.xml
.. _search-http-get.py: ../../misc/howto/solr/search-http-get.py
.. _search.py: http://toybox/hg/env/file/tip/lib/python/pk/solr/search.py


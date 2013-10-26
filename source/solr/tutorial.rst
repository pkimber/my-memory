Tutorial
********

- `Solr tutorial`_

Install
=======

Follow the :doc:`install` to get an example configuration running in Tomcat.

Testing
=======

These commands will need to be run from a :doc:`../cygwin/install` prompt which
has :doc:`../linux/curl` installed.

Download some of the `example ``xml`` files`_ from the *SOLR* source code.

Update
======

I am updating the *SOLR* repository using:

http://svn.apache.org/repos/asf/incubator/solr/trunk/example/exampledocs/ipod_video.xml

Post this document to the *SOLR* server using ``curl``:

::

  curl http://localhost:8080/solr-1.0/update --data-binary @ipod_video.xml

Commit the changes:

::

  curl http://localhost:8080/solr-1.0/update --data-binary '<commit/>'

Select
======

Using ``curl``:

::

  curl http://localhost:8080/solr-1.0/select?q=video

or... using the `SOLR admin interface`_:

::

  ../../images/solr/solr-admin-query.gif]

The query should return one result.

Delete
======

ID
--

Using ``curl``:

::

  curl http://localhost:8080/solr/update --data-binary "<delete><id>TMWEB_converted_to_standard_format_txt_1</id></delete>" -H "Content-type:text/xml;charset=utf-8"
  curl http://localhost:8080/solr/update --data-binary "<commit/>" -H "Content-type:text/xml;charset=utf-8"

If the ``delete`` is not committed, the deletesPending_ value will be
incremented.

Query
-----

To delete by query:

::

  curl http://localhost:8080/solr/update --data-binary "<delete><query>productType:lost-code</query></delete>" -H "Content-type:text/xml;charset=utf-8"
  curl http://localhost:8080/solr/update --data-binary "<commit/>" -H "Content-type:text/xml;charset=utf-8"


.. _`Solr tutorial`: http://incubator.apache.org/solr/tutorial.html
.. _`example ``xml`` files`: http://svn.apache.org/repos/asf/incubator/solr/trunk/example/exampledocs/
.. _`SOLR admin interface`: http://localhost:8080/solr-1.0/admin/
.. _deletesPending: http://localhost:8080/solr-1.0/admin/stats.jsp


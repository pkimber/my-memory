Issues
******

Linux
=====

NoClassDefFoundError (Number 1)
-------------------------------

`Difference between ClassNotFoundException and NoClassDefFoundError`_
(**Note**: One of the comments helped me solve this issue).

Had this issue when trying to get LocalSolr_ working.  I was using a Tomcat
context file in ``conf/Catalina/localhost/solr.xml`` to point to the
``/repository/solr/war/apache-solr-1.3.0.war`` file.

It seems that even when using a context file, Tomcat will copy and explode the
contents of the ``war`` file to ``webapps``.  The error was caused because the
jar file was in the ``war`` file in ``/repository/solr/war/`` but not in
``webapps/solr`` (Tomcat had not synchronised the changes).

To solve the problem, I stopped Tomcat, deleted ``webapps/solr`` and re-started
Tomcat.

NoClassDefFoundError (Number 2)
-------------------------------

::

  java.lang.NoClassDefFoundError
    at org.apache.jsp.admin.index_jsp._jspService(index_jsp.java:69)

is usually caused because you have not copied the *solr* configuration files
into the *Tomcat* folder (step 4 above).

From `how to run solr in windows & Tomcat5`_.

failed to create an XPathFactory
--------------------------------

::

  java.lang.ExceptionInInitializerError
          at org.apache.solr.servlet.SolrServlet.init(SolrServlet.java:64)
          ...
  Caused by: java.lang.RuntimeException: XPathFactory#newInstance() failed to create an XPathFactory for the default object model: http://java.sun.com/jaxp/xpath/dom with the XPathFactoryConfigurationException: javax.xml.xpath.XPathFactoryConfigurationException: No XPathFctory implementation found for the object model: http://java.sun.com/jaxp/xpath/dom
          at javax.xml.xpath.XPathFactory.newInstance(Unknown Source)
          at org.apache.solr.core.Config.<clinit>(Config.java:49)
          ... 28 more

`Failed to create an XPathFactory for the default object model`_

*Finally found out that the problem was due to the Tomcat Java 1.4
compatibility libraries. I had recently upgraded to Java 1.5, but forgot to
remove them*:

::

  ls -l /usr/share/tomcat-5.5/common/endorsed/
  total 0
  lrwxrwxrwx 1 root root 38 Dec 26 12:15 xercesImpl.jar -> /usr/share/xerces-2/lib/xercesImpl.jar
  lrwxrwxrwx 1 root root 52 Dec 26 12:15 xml-apis.jar -> /usr/share/xml-commons-external-1.3/lib/xml-apis.jar

::

  rm /usr/share/tomcat-5.5/common/endorsed/xercesImpl.jar
  rm /usr/share/tomcat-5.5/common/endorsed/xml-apis.jar

Index not created
-----------------

When SOLR is started it tries to create an index in
``/home/integration/solr/``:

::

  WARNING: Solr index directory '/home/integration/solr/data/index' doesn't exist. Creating new index...

But the index is not created.  When we try to run a search from the SOLR admin
interface we get this exception:

::

  Dec 26, 2006 5:22:58 PM org.apache.solr.core.SolrException log
  SEVERE: java.lang.RuntimeException: java.io.IOException: /home/integration/solr/data/index not a directory
          at org.apache.solr.core.SolrCore.getSearcher(SolrCore.java:363)
          ...
  Caused by: java.io.IOException: /home/integration/solr/data/index not a directory
          at org.apache.lucene.store.FSDirectory.init(FSDirectory.java:225)

To solve the problem change the owner and group on the ``solr`` folder so that
``tomcat`` has permission to create folders:

::

  chown -R tomcat:tomcat /home/integration/solr/

Note: This can also be a problem in Windows.  To solve the problem, check which
user Tomcat is running as... and make sure that user has create permissions on
the data folder.

SEVERE: Error filterStart
-------------------------

From ``/var/lib/tomcat5.5/logs/catalina_2008-04-06.log``:

::

  06-Apr-2008 19:37:41 org.apache.catalina.core.StandardContext start
  SEVERE: Error filterStart
  06-Apr-2008 19:37:41 org.apache.catalina.core.StandardContext start
  SEVERE: Context [/solr] startup failed due to previous errors

Check ``/var/lib/tomcat5.5/logs/localhost.2008-04-06.log`` for further details.

*Solution*

To solve the problem:

- I had to copy **all** the example configuration files, from the extracted
  archive to the repository folder (see above)...
- Tomcat Security Manager

  You might also need to disable the Tomcat security manager:

  `Running Solr on Debian with Tomcat`_

  Edit ``/etc/default/tomcat5.5`` and make sure ``TOMCAT5_SECURITY`` is set to
  ``no``:

  ::

    TOMCAT5_SECURITY=no


.. _`Difference between ClassNotFoundException and NoClassDefFoundError`: http://www.jroller.com/sjivan/entry/difference_between_classnotfoundexception_and_noclassdeffounderror
.. _`Failed to create an XPathFactory for the default object model`: http://www.psuedoguru.com/roller/page/psuedoblog?entry=failed_to_create_an_xpathfactory
.. _`how to run solr in windows & Tomcat5`: http://www.nabble.com/how-to-run-solr-in-windows---Tomcat5-t1658550.html
.. _`Running Solr on Debian with Tomcat`: http://yousefourabi.com/programming/running-solr-on-debian-with-tomcat
.. _LocalSolr: http://www.gissearch.com/localsolr

Install
*******

`Solr is an open source enterprise search server`_ based on the Lucene Java
search library.

Download
========

Download ``solr-4.3.0.zip`` from
http://www.apache.org/dyn/closer.cgi/lucene/solr/

Prerequisites
=============

Install Tomcat 7 (the only essential app is probably ``tomcat7``):

::

  sudo apt-get install tomcat7 tomcat7-admin tomcat7-common tomcat7-user

Create users (if you want to use the Tomcat admin):

::

  sudo vim /etc/tomcat7/tomcat-users.xml

  <?xml version='1.0' encoding='utf-8'?>
  <tomcat-users>
      <role rolename="admin"/>
      <role rolename="manager-gui"/>
      <user username="patrick.kimber" password="patrick" roles="admin,manager-gui"/>
  </tomcat-users>

Install
=======

`Solr with Apache Tomcat`_:

Extract the archive

::

  cd ~/repo/temp/
  unzip ~/Downloads/solr/solr-4.3.0.zip
  cd solr-4.3.0/

Copy ``solr-4.3.0.war`` to a folder:

::

  mkdir -p ~/repo/solr/war/
  cp dist/solr-4.3.0.war ~/repo/solr/war/

Note: For Tomcat 5.5 and later, the war file must be stored outside of the
``webapps`` directory for this to work.  Otherwise, the ``Context`` element is
ignored.

Copy the example files, from the extracted archive to the repository folder:

::

  cp -r example/multicore ~/repo/solr/

  rm -r ~/repo/solr/example/example-DIH
  rm -r ~/repo/solr/example/exampledocs
  rm -r ~/repo/solr/example/solr-webapp

Change permissions:

::

  sudo chgrp -R tomcat7 /home/patrick/repo/solr
  sudo chmod -R 775 /home/patrick/repo/solr

Copy the logging files to Tomcat:

::

  sudo cp example/lib/ext/* /var/lib/tomcat7/shared/
  sudo cp example/resources/log4j.properties /var/lib/tomcat7/shared/

For information, the folder looks like this (after SOLR has been successfully
started):

.. ::
..   toybox:~# ls -l /home/repository/solr/default/
..   total 8
..   drwxr-xr-x 3 tomcat55 adm     4096 2008-04-06 22:17 conf
..   drwxr-xr-x 3 tomcat55 nogroup 4096 2008-04-06 22:18 data

.. Set the location of the Lucene indexes, by editing ``dataDir`` in
.. ``conf/solrconfig.xml``:
.. ::
..   <dataDir>\\\\app1.itv\\msa1\\System\\search\\solr\\data</dataDir>
.. **Note**: If you want the index files to be created in SOLR home, then remove
.. the ``dataDir`` attribute...

Create a context file:

::

  sudo vim /var/lib/tomcat7/conf/Catalina/localhost/solr.xml

::

  <Context docBase="/home/patrick/repo/solr/war/solr-4.3.0.war" debug="0" crossContext="true" unpackWAR="false" >
      <Environment name="solr/home" type="java.lang.String" value="/home/patrick/repo/solr/multicore" override="true" />
  </Context>

Note:

- We are using JNDI to configure SOLR...
- If Tomcat cannot find the ``war`` file for any reason, it will delete
  the context file... (for a little bit more information see
  `Tomcat WebApplication Context File`_).
- I had several issues... so take a look at :doc:`issues` to see how I solved
  them.

Test
====

http://localhost:8080/solr/ and http://localhost:8080/solr/admin/


.. _`Solr is an open source enterprise search server`: http://lucene.apache.org/solr/
.. _`Solr with Apache Tomcat`: http://wiki.apache.org/solr/SolrTomcat
.. _`Tomcat WebApplication Context File`: http://prasadblog.blogspot.com/2006/02/tomcat-webapplication-context-file.html

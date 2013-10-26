Linux
*****

Copy ``solr.war`` to:

::

  /home/integration/solr/

Export the example configuration files to the solr folder:

::

  cd /home/integration/solr/
  svn export http://svn.apache.org/repos/asf/incubator/solr/trunk/example/solr/conf conf

Create a Tomcat context file (for more information see
http://wiki.apache.org/solr/SolrTomcat):

::

  /etc/tomcat-5.5/Catalina/localhost/solr.xml

with these contents:

::

  <Context docBase="/home/integration/solr/solr.war" debug="0" crossContext="true" >
    <Environment name="solr/home" type="java.lang.String" value="/home/integration/solr" override="true" />
  </Context>

Re-start the Tomcat server:

::

  /etc/init.d/tomcat-5.5 restart

And test the installation with this url: http://weezy:8081/solr/admin/.


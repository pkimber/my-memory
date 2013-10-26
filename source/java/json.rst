JSON
****

Links
=====

- http://www.json.org/java/
- `Retrieve JSON libraries using Maven dependency: json-lib`_

Maven
=====

::

  <dependency>
      <groupId>org.json</groupId>
      <artifactId>json</artifactId>
      <version>20090211</version>
  </dependency>

...or possibly:

::

  <dependency>
      <groupId>net.sf.json-lib</groupId>
      <artifactId>json-lib</artifactId>
      <version>2.3</version>
      <classifier>jdk15</classifier>
  </dependency>

jython
======

classpath
---------

::

  SET CLASSPATH=C:\Users\Patrick\.m2\repository\org\json\json\20090211\json-20090211.jar

...or possibly:

::

  SET CLASSPATH=C:\Users\Patrick\.m2\repository\net\sf\json-lib\json-lib\2.3\json-lib-2.3-jdk15.jar

Sample Session (using ``json-20090211.jar``)
--------------------------------------------

::

  >>> import org.json.JSONObject
  >>> data = '{ "points": [], "statusResult": "ERROR", "id": 1 }'
  >>> json = org.json.JSONObject(data)
  >>> json.getString('id')
  u'1'
  >>> json.getString('statusResult')
  u'ERROR'


.. _`Retrieve JSON libraries using Maven dependency: json-lib`: http://blogs.sun.com/arungupta/entry/totd_91_retrieve_json_libraries


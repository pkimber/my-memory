Static Content
**************

Serve Static Content
====================

`Serving Static External Files in standalone Tomcat Instances`_

Edit ``conf/server.xml`` and add the following to the
``*Host name="localhost"...`` section:

::

  <Context path="/js" appBase=""
      docBase="c:/repository/tomcat/static/django"
      debug="99" reloadable="true">
  </Context>

Note:

- Place static content in ``c:\\repository\\tomcat\\static\\django``.
- The content will be accessible using this URL:
  http://localhost:8080/js/temp.html
- I am not sure this is the correct way to serve static content using Tomcat.
  If we do not specify the ``C:`` drive in the ``docBase``, then Tomcat will
  look inside the ``webapps`` folder.


.. _`Serving Static External Files in standalone Tomcat Instances`: http://wiki.jboss.org/wiki/Wiki.jsp?page=ExternalDirectories


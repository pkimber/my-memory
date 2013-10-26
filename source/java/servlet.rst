Servlet
*******

Sample
======

- ``HelloServlet.java``:

  ::

    ../../misc/howto/java/HelloServlet.java.txt

- Jetty, Simple HTTP Server, :doc:`./jetty/simple-http-server`
- Sample project in Subversion:
  `sample-servlet`_.
  See the site documentation for more information.



Configuration
=============

Create your own servlet class (probably by extending the
``javax.servlet.http.HttpServlet`` superclass).

In your ``web.xml`` file add an ``init-param`` section with your parameter name
and value:

::

  <servlet>
      <servlet-name>ConfigurationFileServlet</servlet-name>
      <display-name>ConfigurationFileServlet</display-name>
      <description></description>
      <servlet-class>
          com.mybank.xfire.example.ConfigurationFileServlet
      </servlet-class>
      <init-param>
          <param-name>company-name</param-name>
          <param-value>Dartmoor Inn</param-value>
          <description></description>
      </init-param>
  </servlet>

Override the ``init(ServletConfig)`` method:

::

  public void init(ServletConfig config) throws ServletException {
      super.init(config);
      String parameter = config.getInitParameter("company-name");
      logger.debug("init(ServletConfig) company-name [" + parameter + "]");
  }

Exception
=========

How to send an error or throw an exception from a servlet:

It appears that the error MUST be sent (or the exception thrown) before
``out.close();``

e.g.

::

  response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);

or...

::

  throw new NullPointerException("Simulate an http 500 response...");
  // sometime after...
  out.close();

Example project in Subversion:
http://myserver/svn/home/patrick/test/simulate-coldfusion/

::

  src/main/java/com/mycompany/example/MyServlet.java

Files/Property Files
====================

Example project in Subversion:
http://g1/svn/home/patrick/learn/xfire-template.

Create your file below the ``WEB-INF`` folder.  I created my properties file in
a ``config`` folder:

::

  src/main/webapp/WEB-INF/config/my.properties

Create your own servlet class (probably by extending the
``javax.servlet.http.HttpServlet`` superclass).

Override one of the ``init()`` methods:

::

  private static final String PROPERTY_FILE_NAME = "/WEB-INF/config/my.properties";

  public void init() throws ServletException {
      super.init();
      logger.debug("init()");
      InputStream stream = openPropertyFile(PROPERTY_FILE_NAME);
      Properties props = loadProperties(stream);
      logger.debug("init() phone [" + props.getProperty("phone") + "]");
  }

  private InputStream openPropertyFile(final String fileName) throws ServletException {
      InputStream stream = getServletContext().getResourceAsStream(fileName);
      if (stream == null) {
          throw new ServletException("Cannot load [" + fileName + "]");
      }
      return stream;
  }

  private Properties loadProperties(InputStream stream) throws ServletException {
      Properties props = new Properties();
      try {
          props.load(stream);
      } catch (IOException e) {
          throw new ServletException("Cannot load properties.", e);
      }
      return props;
  }

Maven
=====

::

  <dependency>
    <groupId>javax.servlet</groupId>
    <artifactId>servlet-api</artifactId>
    <version>2.3</version>
    <scope>provided</scope>
  </dependency>

JRun
====

See JRun Servlet notes, :doc:`../coldfusion/servlet`

Request
=======

To read the parameters from an http request:

::

  private void printParameters(final HttpServletRequest request) {
      Map map = request.getParameterMap();
      for (Iterator i = map.entrySet().iterator(); i.hasNext();) {
          Map.Entry entry = (Map.Entry) i.next();
          String key = (String) entry.getKey();
          String value  = request.getParameter(key);
          System.out.println(key + ":" + value);
      }
  }

web.xml
=======

In a Maven project, the ``web.xml`` file will be in this location:

::

  src\main\webapp\WEB-INF\web.xml

...and will look similar to this:

::

  <?xml version="1.0" encoding="UTF-8"?>
  <web-app version="2.5" xmlns="http://java.sun.com/xml/ns/javaee"
           xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
           xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd">
    <servlet>
      <servlet-name>TestServlet</servlet-name>
      <servlet-class>com.sample.learn.Test</servlet-class>
    </servlet>
    <servlet-mapping>
      <servlet-name>TestServlet</servlet-name>
      <url-pattern>/test</url-pattern>
    </servlet-mapping>
  </web-app>


.. _`sample-servlet`: http://toybox/hg/sample/file/tip/java/sample-servlet


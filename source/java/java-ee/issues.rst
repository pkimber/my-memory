Issues
******

Dependency Injection
====================

`Injected Dependencies in Web Application are null`_

If an EJB is not being injected into a servlet, make sure the version of your
``web.xml`` is 2.5 e.g:

::

  <?xml version = '1.0'?>
  <web-app version="2.5" xmlns="http://java.sun.com/xml/ns/javaee"
           xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
           xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd">
    <servlet>
      <servlet-name>HelloClientServlet</servlet-name>
      <servlet-class>com.sample.HelloClientServlet</servlet-class>
    </servlet>
    <servlet-mapping>
      <servlet-name>HelloClientServlet</servlet-name>
      <url-pattern>/</url-pattern>
    </servlet-mapping>
  </web-app>


.. _`Injected Dependencies in Web Application are null`: http://www.nabble.com/Injected-Dependencies-in-Web-Application-are-null-tf3767788.html#a10651801


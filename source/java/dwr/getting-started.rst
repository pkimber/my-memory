Getting Started
***************

Setup
=====

- ``web.xml``

  ::

    src/main/webapp/WEB-INF/web.xml

  ::

    <servlet>
      <servlet-name>dwr-invoker</servlet-name>
      <servlet-class>uk.ltd.getahead.dwr.DWRServlet</servlet-class>
      <init-param>
        <param-name>debug</param-name>
        <param-value>false</param-value>
      </init-param>
      <init-param>
        <param-name>logLevel</param-name>
        <param-value>WARN</param-value>
      </init-param>
    </servlet>

    <servlet-mapping>
      <servlet-name>dwr-invoker</servlet-name>
      <url-pattern>/dwr/*</url-pattern>
    </servlet-mapping>

- ``dwr.xml``

  ::

    src/main/webapp/WEB-INF/dwr.xml

- JSP

  ::

    <html>
      <head>
        <script type='text/javascript' src='/myapp/dwr/engine.js'></script>
        <script type='text/javascript' src='/myapp/dwr/util.js'></script>


WAR
***

The uri for the WAR in an ``ear`` seems to follow a different scheme:

- The URL of the application server e.g. http://localhost:8080/
- The name of the module from the ``pom.xml`` file e.g. ``web`` for this
  ``pom`` file:

  ::

      <artifactId>web</artifactId>

- The URL pattern from the ``web.xml`` file e.g. ``test`` for this ``web.xml``
  file:

  ::

    <url-pattern>/test</url-pattern>

Note: The complete URL is http://localhost:8080/web/test.



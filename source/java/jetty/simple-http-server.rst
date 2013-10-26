Simple HTTP Server
******************

Sample
======

- ``sample-jetty-embed``, (Mercurial repository).

Maven 2
=======

::

  <dependency>
    <groupId>org.mortbay.jetty</groupId>
    <artifactId>jetty</artifactId>
    <version>6.1.6</version>
  </dependency>

Servlet
=======

``HelloServlet.java``, ``../../misc/howto/java/HelloServlet.java.txt``

Server
======

::

  package com.sample;

  import org.mortbay.jetty.Server;
  import org.mortbay.jetty.servlet.Context;
  import org.mortbay.jetty.servlet.ServletHolder;

  public class SimpleServer {
      public static void main(final String[] args) throws Exception {
          Server server = new Server(8080);
          Context root = new Context(server, "/", Context.SESSIONS);
          root.addServlet(new ServletHolder(new HelloServlet()), "/*");
          server.start();
      }
  }

Build and run the application (using Maven 2):

::

  mvn clean package exec:java -Dexec.mainClass="com.sample.SimpleServer"

Browse
======

http://localhost:8080/


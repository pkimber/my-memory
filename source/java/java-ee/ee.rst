EE
**

Context Root
============

A context root identifies a web application in a Java EE server. You specify
the context root when you deploy a web module. A context root must start with a
forward slash (``/``) and end with a string.

In a packaged web module for deployment on the Sun Application Server, the
context root is stored in ``sun-web.xml``.

Deployment descriptors
======================

There are two types of deployment descriptors: Java EE and runtime.  A Java EE
deployment descriptor is defined by a Java EE specification and can be used to
configure deployment settings on any Java EE-compliant implementation.  A
runtime deployment descriptor is used to configure Java EE
*implementation-specific* parameters.

EAR
===

A Java EE application is delivered in an Enterprise Archive (EAR) file, a
standard Java Archive (JAR) file with an ``.ear`` extension.

An EAR file contains Java EE modules and deployment descriptors.  A deployment
descriptor is an XML document with an .xml extension that describes the
deployment settings of an application, a module, or a component.

EIS
===

The enterprise information system tier handles EIS software and includes
enterprise infrastructure systems such as enterprise resource planning (ERP),
mainframe transaction processing, database systems, and other legacy
information systems. For example, Java EE application components might need
access to enterprise information systems for database connectivity.

Enterprise Bean
===============

From *EJB 3 in Action*, Manning Publications Co.  An annotation transforms a
simple POJO into an EJB:

POJO + Annotation = EJB

::

  ../../images/howto/j2ee/pojo+annotation-ejb.gif

Business code, which is logic that solves or meets the needs of a particular
business domain such as banking, retail, or finance, is handled by enterprise
beans running in the business tier.  Figure 14?? shows how an enterprise bean
receives data from client programs, processes it (if necessary), and sends it
to the enterprise information system tier for storage.  An enterprise bean also
retrieves data from storage, processes it (if necessary), and sends it back to
the client program.

Figure 1-4: Business and EIS Tiers

::

  ../../images/howto/j2ee/ee-business-and-eis-tiers.gif

An Enterprise JavaBeans (EJB) component, or enterprise bean, is a body of code
having fields and methods to implement modules of business logic. You can think
of an enterprise bean as a building block that can be used alone or with other
enterprise beans to execute business logic on the Java EE server.

There are two kinds of enterprise beans: session beans and message-driven beans:

- A session bean represents a transient conversation with a client. When the
  client finishes executing, the session bean and its data are gone.

- A message driven bean combines features of a session bean and a message
  listener, allowing a business component to receive messages asynchronously.



Entity beans
============

In Java EE 5, entity beans have been replaced by Java persistence API entities.
An entity represents persistent data stored in one row of a database table.

Error Screens
=============

When an error occurs during execution of a web application, you can have the
application display a specific error screen according to the type of error. In
particular, you can specify a mapping between the status code returned in an
HTTP response or a Java programming language exception returned by any web
component and any type of error screen e.g.

::

  <error-page>
    <error-code>404</error-code>
    <location>/notfound.jsp</location>
  </error-page>
  <error-page>
    <exception-type>java.lang.Throwable</exception-type>
    <location>/error.jsp</location>
  </error-page>

Filter
======

A filter is an object that can transform the header and content (or both) of a
request or response.  Filters differ from web components in that filters
usually do not themselves create a response.  Instead, a filter provides
functionality that can be *attached* to any kind of web resource.

html
====

Static HTML pages and applets are bundled with web components during
application assembly but are not considered web components by the Java EE
specification.

JavaBeans
=========

JavaBeans components manage the data flow between an application client or
applet and components running on the Java EE server, or between server
components and a database.  JavaBeans components are not considered Java EE
components by the Java EE specification.  JavaBeans components have properties
and have get and set methods for accessing the properties.

The web tier, like the client tier, might include a Java-Beans component to
manage the user input and send that input to enterprise beans running in the
business tier for processing.

Request
=======

A request contains data passed between a client and the servlet. All requests
implement the ``ServletRequest`` interface.

Response
========

All responses implement the ``ServletResponse`` interface.  This interface
defines methods that allow you to:

- Retrieve an output stream to use to send data to the client. To send
  character data, use the ``PrintWriter`` returned by the response's
  ``getWriter`` method.  To send binary data in a ``MIME`` body response, use
  the ``ServletOutputStream`` returned by ``getOutputStream``.  To mix binary
  and text data, for example to create a multipart response - use a
  ``ServletOutputStream`` and manage the character sections manually.

- Indicate the content type (for example, ``text/html``) being returned by the
  response with the ``setContentType(String)`` method. This method must be
  called before the response is committed.  A registry of content type names is
  kept by the Internet Assigned Numbers Authority (IANA) at:
  http://www.iana.org/assignments/media-types/

- Indicate whether to buffer output with the ``setBufferSize(int)`` method.
  By default, any content written to the output stream is immediately sent to
  the client.  Buffering allows content to be written before anything is
  actually sent back to the client, thus providing the servlet with more time
  to set appropriate status codes and headers or forward to another web
  resource.

  The method must be called before any content is written or before the
  response is committed.

  HTTP response objects, ``HttpServletResponse``, have fields representing HTTP
  headers such as the following:

- Status codes, which are used to indicate the reason a request is not
  satisfied or that a request has been redirected.

- Cookies, which are used to store application-specific information at the
  client.  Sometimes cookies are used to maintain an identifier for tracking a
  user's session.

Servlets
========

Servlets are Java programming language classes that dynamically process
requests and construct responses.

The ``HttpServlet`` class provides methods, such as doGet and doPost (other
options might be *Delete*, *Options*, *Put*, or *Trace*), for handling
HTTP-specific services.

URL
===

A URL path contains the context root and an alias:

http://host:port/context_root/alias

The alias identifies the web component that should handle a request. The alias
path must start with a forward slash (``/``) and end with a string or a
wildcard expression with an extension (for example, ``*.jsp``).

Since web containers automatically map an alias that ends with ``*.jsp``, you
do not have to specify an alias for a JSP page unless you wish to refer to the
page by a name other than its file name.

Web Context
===========

The web components in a web module share an object that represents their
application context. You can pass initialization parameters to the context or
to a web component.

Welcome File List
=================

The welcome files mechanism allows you to specify a list of files that the web
container will use for appending to a request for a URL (called a valid partial
request) that is not mapped to a web component.



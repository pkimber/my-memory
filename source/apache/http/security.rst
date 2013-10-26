Security
********

While scanning our website using https://www.securitymetrics.com/, I came
across the following issues:

ServerName
==========

- The following ``telnet`` session detected our load balancer:

  ::

    patrick@noname:~$ telnet www.myserver.com 80
    Trying 89.119.229.49...

    Connected to www.myserver.com.
    Escape character is '^]'.
    GET /images HTTP/1.0

    HTTP/1.1 302 FOUND
    Date: Thu, 27 May 2010 08:10:23 GMT
    Server: Apache
    Vary: Cookie
    Location: http://web3.myserver.com/images/
    Content-Length: 0
    Connection: close
    Content-Type: text/html; charset=utf-8

    Connection closed by foreign host.

- The redirection to a different URL returns the ``Location`` header which
  gives the actual URL of the content.
- The ``Location`` header has a different server name to the original request
  confirming the existence of a load balancer.
- The ``Location`` header returns the ``ServerName`` from the Apache
  configuration file.
- To stop this vulnerability, set the Apache ``ServerName`` to the site name
  and add a ``ServerAlias`` with the actual name of the server e.g:

  ::

    ServerName www.myserver.com
    ServerAlias web1.myserver.com



  Note: This vulnerability was difficult to detect.  The HTTP response only
  contains the ``Location`` header on a redirect.  The browser did an automatic
  redirect, so we couldn't see the header in FireBug.  This ``curl`` session
  shows the problem:

::

  patrick@noname:~$ curl www.myserver.com/images --head
  HTTP/1.1 302 FOUND
  Date: Thu, 27 May 2010 08:26:45 GMT
  Server: Apache
  Vary: Cookie
  Location: http://web3.myserver.com/images/
  Connection: close
  Content-Type: text/html; charset=utf-8

  patrick@noname:~$ curl www.myserver.com/images/ --head
  HTTP/1.1 404 NOT FOUND
  Date: Thu, 27 May 2010 08:27:36 GMT
  Server: Apache
  Vary: Cookie
  Content-Length: 5539
  Connection: close
  Content-Type: text/html; charset=utf-8

ServerTokens Directive
======================

`Module Documentation - ServerTokens Directive`_

Changing the '``ServerTokens``' directive in the Apache configuration to
resemble the following:

::

  ServerTokens Prod

You can set this directive by editing the ``/etc/httpd/conf/httpd.conf`` file.
The ``ServerTokens`` directive will hide the web server information.

mod_status
==========

- Very useful ticket conversation with a Rackspace person...

  ::

    ../../misc/howto/apache/http/rackspace.txt

- `Module Documentation - mod_status`_


.. _`Module Documentation - ServerTokens Directive`: http://httpd.apache.org/docs/2.2/mod/core.html#servertokens
.. _`Module Documentation - mod_status`: http://httpd.apache.org/docs/2.2/mod/mod_status.html


telnet
******

Usage
=====

Host name, port number:

::

  telnet weezy 1234
  telnet 10.0.0.4 1234

HTTP
----

To send an HTTP request to the server:

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

Note: Press *Enter* twice after typing ``GET /images HTTP/1.0`` to send
the request.


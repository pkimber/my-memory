Getting Started
***************

Links
=====

- `OpenSSL CSR Creation for an Nginx Server SSL Certificate`_
- `Setting up HTTPS with Nginx and StartSSL`_

Sample
======

Log on to your web server as ``root``:

::

  root@web:~# openssl req -new -newkey rsa:2048 -nodes -keyout server.key -out server.csr
  Generating a 2048 bit RSA private key
  ...................+++
  .............+++
  writing new private key to 'server.key'
  -----
  You are about to be asked to enter information that will be incorporated
  into your certificate request.
  What you are about to enter is what is called a Distinguished Name or a DN.
  There are quite a few fields but you can leave some blank
  For some fields there will be a default value,
  If you enter '.', the field will be left blank.
  -----
  Country Name (2 letter code) [AU]:UK
  State or Province Name (full name) [Some-State]:Devon
  Locality Name (eg, city) []:Crediton
  Organization Name (eg, company) [Internet Widgits Pty Ltd]:Connexion Software Ltd
  Organizational Unit Name (eg, section) []:.
  Common Name (e.g. server FQDN or YOUR name) []:connexionsw.com
  Email Address []:patrick.kimber@connexionsw.com

  Please enter the following 'extra' attributes
  to be sent with your certificate request
  A challenge password []:
  An optional company name []:
  root@web:~# 

Note: I did not use either of the extra attributes (challenge password or
optional company name).  Just press *Enter* to ignore...

This process will generate two files, ``server.csr`` (the certificate request)
and ``server.key`` (the private key).

Copy the certificate request to your local workstation:

::

  scp root@2.2.2.2:/root/server.csr .

I submitted this certificate request to StartSSL and was supplied with three
files, ``ca.pem``, ``ssl.crt`` and ``sub.class1.server.ca.pem``

Note: if you forget to download any of these files, then don't panic!
``ssl.crt`` can be downloaded from *Control Panel*, *Toolbox*, *Retrieve
Certificate*.  I think the other two files are the same for all StartSSL
certificates and can be re-used from another download or found on the StartSSL
web site (possibly http://www.startssl.com/certs/)

Concatenate the three certificates and copy the unified certificate to the
server (`Nginx AND StartSSL`_):

::

  cat ssl.crt sub.class1.server.ca.pem ca.pem > ssl-unified.crt
  scp ssl-unified.crt root@95.138.181.79:/srv/ssl/

Update the file permissions on the server:

::

  salt '*' state.highstate


.. _`Nginx AND StartSSL`: http://blurringexistence.net/archives/5-nginx-and-StartSSL.html
.. _`OpenSSL CSR Creation for an Nginx Server SSL Certificate`: http://www.digicert.com/csr-creation-nginx.htm
.. _`Setting up HTTPS with Nginx and StartSSL`: http://www.westphahl.net/blog/2012/01/03/setting-up-https-with-nginx-and-startssl/

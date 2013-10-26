SSL - Certificate
*****************

Links
=====

- `Apache Modules mod ssl`_
- `Generating an SSL Certificate with Apache+mod_ssl`_
- `Why does my browser give a warning about a mismatched hostname?`_

Usage
=====

Note: Browsers expect the server's hostname to match the value in the
commonName (CN) field of the certificate. If it does not then you get a
warning.

Step 1
------

Create your RSA Private Key:

::

  openssl genrsa -des3 -out server.key 1024

This command will prompt you for a pass-phrase and then store the key in the
file ``server.key``.

Step 2
------

Remove the pass-phrase from the key (to stop Apache asking for the pass-phrase
each time the web server is started):

::

  openssl rsa -in server.key -out server.pem

Step 3
------

Generate a Certificate Signing Request (which could be sent to Thawte or
Verisign).  You will be prompted for the ``Common Name``.  It is important that
this field be filled in with the fully qualified domain name of the server to
be protected by SSL.  If the website to be protected will be
``https://www.server.com``, then enter ``www.server.com`` at this prompt:

::

  openssl req -new -key server.pem -out server.csr

Note: On Windows you might get the following error:

::

  Unable to load config info from /usr/local/ssl/openssl.cnf

`Unable to load config info from /usr/local/ssl/openssl.cnf`_

To solve the problem, add a ``config`` parameter with the path to your Apache
``openssl.cnf`` file e.g:

::

  openssl req -new -key server.pem -out server.csr -config C:\tools\apache2.2\conf\openssl.cnf

Step 4
------

To generate a temporary certificate which is good for 365 days:

::

  openssl x509 -req -days 365 -in server.csr -signkey server.pem -out server.crt

Step 5
------

*Linux*

Copy the key and certificate to the Apache SSL folder:

::

  copy server.crt C:\tools\apache2.2\conf\
  copy server.pem C:\tools\apache2.2\conf\

*Windows*

Copy the key and certificate to the Apache SSL folder:

::

  cp server.crt /etc/apache2/ssl/
  cp server.pem /etc/apache2/ssl/

Step 6
------

*Linux*

Change the Apache SSL configuration.  Edit:

::

  /etc/apache2/modules.d/41_mod_ssl.default-vhost.conf

and edit the ``SSLCertificateKeyFile`` to point to the ``pem`` file:

::

  SSLCertificateKeyFile conf/ssl/server.pem

*Windows*

Edit the ``conf/extra/httpd-ssl.conf`` file to look at the ``pem`` file (rather
than the ``key`` file):

::

  SSLCertificateKeyFile "C:/tools/apache2.2/conf/server.pem"



.. _`Apache Modules mod ssl`: http://gentoo-wiki.com/Apache_Modules_mod_ssl
.. _`Generating an SSL Certificate with Apache+mod_ssl`: http://slacksite.com/apache/certificate.html
.. _`Why does my browser give a warning about a mismatched hostname?`: http://www.openssl.org/support/faq.html#USER11
.. _`Unable to load config info from /usr/local/ssl/openssl.cnf`: http://irwinj.blogspot.com/2008/11/unable-to-load-config-info-from.html


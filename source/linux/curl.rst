curl
****

http://curl.haxx.se/docs/

`cURL on Windows`_

curl is a tool to transfer data from or to a server, using one of the supported
protocols (HTTP, HTTPS, FTP, FTPS, TFTP, DICT, TELNET, LDAP or FILE).
The command is designed to work without user interaction.

Install
=======

Linux
-----

::

  apt-get install curl

Windows
-------

Is a standard *cygwin* package.

Examples
========

::

  curl "http://myserver/"
  curl "http://myserver/" --head
  curl -I "http://myserver/"

Note: ``--head`` and ``-I`` will just display the response headers.

Download
--------

To download a file:

::

  curl -O http://server/repository/appname-0.2.jar

or - how about these options (I don't know what they do)?

::

  curl -C - -O http://www.mirror.com/path/to/file.zip

AJAX
----

::

  curl -H 'X-Requested-With: XMLHttpRequest' http://localhost:8000/item/123/

GET
---

I think an HTTP GET request is as simple as doing:

::

  curl "http://127.0.0.1:8888?action=CONFIG"

POST
----

`Using cURL to automate HTTP jobs`_

Send the specified data in a POST request to the HTTP server:

::

  curl http://127.0.0.1:8888 -d "action=CONFIG&site=ibm"

The data is expected to be *url-encoded*.  The data will be passed to the server
using the content-type ``application/x-www-form-urlencoded``.

POST - Binary
=============

::

  curl http://localhost:8983/solr/update --data-binary '<delete><id>SP2514N</id></delete>'

SSL
---

To tell curl to ignore an SSL certificate:

::

  curl -k "http://suse/"


.. _`cURL on Windows`: ../windows/linux-gnu.html
.. _`Using cURL to automate HTTP jobs`: http://curl.planetmirror.com/docs/httpscripting.html


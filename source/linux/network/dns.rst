DNS
***

.. highlight:: bash

::

  dig pkimber.net +nocomments +noquestion +noauthority +noadditional +nostats

MX::

  dig pkimber.net MX +noall +answer
  dig -t MX pkimber.net +noall +answer

NS::

  dig -t NS pkimber.net +noall +answer
  dig pkimber.net NS +noall +answer

Specific DNS Server::

  dig @ns2.digitalocean.com pkimber.net

Test
====

To find the IP address for a domain name:

::

  $ dig pkimber.net

  ; <<>> DiG 9.7.0-P1 <<>> pkimber.net
  ;; global options: +cmd
  ;; Got answer:
  ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 55274
  ;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 2, ADDITIONAL: 0

  ;; QUESTION SECTION:
  ;pkimber.net.			IN	A

  ;; ANSWER SECTION:
  pkimber.net.		86400	IN	A	87.117.228.47

  ;; AUTHORITY SECTION:
  pkimber.net.		86400	IN	NS	ns2.grokhost.net.
  pkimber.net.		86400	IN	NS	ns1.grokhost.net.

  ;; Query time: 29 msec
  ;; SERVER: 10.119.55.7#53(10.119.55.7)
  ;; WHEN: Thu Jul  1 13:11:28 2010
  ;; MSG SIZE  rcvd: 90

Note: I think the ``ANSWER SECTION`` shows the IP address of the site.

To check the details using a specific DNS server (in this example,
``digitalocean``)::

  dig pkimber.net @ns1.digitalocean.com

To find the ``MX`` address and ``TXT`` records for a domain::

  dig mx westcountrycycles.co.uk
  dig txt westcountrycycles.co.uk

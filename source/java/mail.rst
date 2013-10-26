Mail
****

Address
=======

Remove description/name:

::

  import javax.mail.internet.InternetAddress;
  final InternetAddress internetAddress
      = new InternetAddress("Patrick Kimber <me@mycompany.com>");
  final String result = internetAddress.getAddress();
  assertEquals("me@mycompany.com", result);

Links
=====

Articles
--------

- `E-Mailing Through Java`_
- `Sending Email From Your Application Using Java Mail`_
- Receiving in JavaMail:

  ::

    ../../misc/howto/java/receiving-in-javamail.pdf

  Copy of article `by DJ Walker-Morgan, Builder UK`_

Components
----------

- `SubEthaSMTP is a easy to understand Java library which provides a receptive SMTP server component`_.
  SubEthaSMTP's simple, low-level API is suitable for writing almost any kind
  of mail-receiving application.

Testing
-------

- The Dumbster_ is a very simple fake SMTP server designed for unit and system
  testing applications that send email messages.

Sample
======

Client
------

- http://toybox/hg/core/file/tip/development/sample-email-client/

DNS
---

- Network, DNS, :doc:`network`

SMTP
----

- ``MailHostsLookup.java``:

  ::

    ../../misc/howto/java/MailHostsLookup.java

  List MX (Mail Exchange) servers for a domain, using a DNS (Domain Name
  System) lookup.  Copy of code written by `Shayne Steele`_


.. _`E-Mailing Through Java`: http://www.vipan.com/htdocs/javamail.html
.. _`Sending Email From Your Application Using Java Mail`: http://www.javacommerce.com/displaypage.jsp?name=javamail.sql&id=18274
.. _`by DJ Walker-Morgan, Builder UK`: http://www.zdnetasia.com/techguide/java/0,39044898,39304762,00.htm
.. _`SubEthaSMTP is a easy to understand Java library which provides a receptive SMTP server component`: http://subethasmtp.tigris.org/
.. _Dumbster: http://quintanasoft.com/dumbster/
.. _`Shayne Steele`: http://ww2.cs.fsu.edu/~steele/MAILHOSTS/mailHostsLookup.html


IIS
***

404
===

Web page not found

13/03/2006 16:23
----------------

Web page not found when using ``localhost`` or ``127.0.0.1``.

The issue turned out to be a problem with the IIS configuration.  To solve the
issue had to add ``127.0.0.1`` into the *Multiple identities for this Web Site*
list:

*Computer Management*, *Services and Applications*, *Internet Information
Services*, right click on *Default Web Site*, select *Properties*, select the
*Web Site* tab and click *Advanced*::

  ../../images/howto/microsoft/iis-config.gif

Note: This server had two IP addresses allocated to it.

Process
=======

`What is w3svc.dll?`_

``w3svc.dll`` (WWW Service) is a component from IIS.

Restart
=======

To restart IIS from the command line::

  iisreset

Virtual Directory
=================

To create a virtual directory: *Computer Management*, *Services and
Applications*, *Internet Information Services*, *Web Sites*, right click
*Default Web Sites*, *New*, *Virtual Directory...*.

The *Alias* is the name you will use to access the web site
e.g. http://localhost/alias/.

The *Directory* is the folder containing the content...


.. _`What is w3svc.dll?`: http://www.processlist.com/info/w3svc.html

Configuration
*************

Links
=====

- See email from Simon B:
  ::

    ../../misc/howto/apache/email-simon-b-2008-jan.txt

- Minimal ``apache2.conf`` which works with default install of Apache 2 on
  debian.

  ::

    ../../misc/howto/linux/debian/apache2.conf

Note
====

Might be best to use the *cut-down* Apache configuration as discussed in my
Django deployment notes, :doc:`../../django/deploy/apache`

Location
========

Linux:

::

  /etc/apache2/apache2.conf
  /etc/apache2/httpd.conf

Directory
=========

To add a folder:

::

  Alias /lucene-app "C:/projects/lucene-app/target/site"
  <Directory "C:/projects/lucene-app/target/site">
      Options Indexes FollowSymLinks
      AllowOverride None
      Order allow,deny
      Allow from all
  </Directory>

The url, http://localhost/lucene-app/ will access this folder.

Download
========

I wanted ``msi`` files to be downloaded rather than opened on a page so I added
the following type:

::

  <IfModule mime_module>
      TypesConfig conf/mime.types
      AddType application/msi .msi

Note: Not sure I needed to do this because ``conf/mime.types`` already includes
the ``msi`` type.

Redirect
========

I used the following configuration to re-direct all requests to ``/accounts``
and ``/profile/`` to the home page of my site:

::

  <VirtualHost *:80>
      ServerAdmin webmaster@pkimber.net
      ServerName pkimber.net
      ServerAlias www.pkimber.net

      DocumentRoot /var/www/pkimber/webroot

      RedirectMatch "^/accounts/?" "http://pkimber.net/"
      RedirectMatch "^/profile/?" "http://pkimber.net/"

      ...

Note:

- The ``?`` in the regular expression makes the ``/`` optional.
- If you don't want Google to index these folder, then create a
  :doc:`../../http/robots`


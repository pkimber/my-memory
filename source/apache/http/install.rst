Install
*******

Windows
=======

Preparation
-----------

The final plan here is to install Apache by simply un-zipping an archive.  We
don't want the Windows installer to set-up services and registry entries.

- Download ``apache_2.2.13-win32-x86-openssl-0.9.8k.msi`` from
  http://httpd.apache.org/download.cgi
- Install to a temporary folder e.g:

  ::

    C:\temp\delete\Apache2.2\

- Stop the Apache Windows Service (the installer will automatically have
  started it).
- Create an archive of the *Apache2.2* folder.
- Move the archive somewhere safe e.g:

  ::

    env\bin\apache-http-2.2\Apache2.2.zip

- Un-install the Apache you just installed.

Install
-------

- Extract the archive you prepared earlier e.g:

  ::

    c:\tools\apache2.2

- We can use the following minimal configuration (thank you Simon B).
  Check the values for ``ServerRoot`` and  ``DocumentRoot``:

  ::

    ServerRoot "C:/tools/apache2.2"
    DocumentRoot "C:/tools/apache2.2/htdocs"

    ServerName localhost
    Listen 80
    DirectoryIndex index.html

    ErrorLog logs/default-error.log
    PidFile logs/httpd.pid

    LoadModule dir_module modules/mod_dir.so
    LoadModule mime_module modules/mod_mime.so

    LoadModule dav_svn_module modules/mod_dav_svn.so

    <Directory />
       Options None
       AllowOverride None
    </Directory>

- To start the server, see the :doc:`command-line`
- Browse to http://localhost/


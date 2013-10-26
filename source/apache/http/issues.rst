Issues
******

Could not determine the server's fully qualified domain name
============================================================

Could not determine the server's fully qualified domain name, using 127.0.0.1
for ServerName

http://www.linuxforums.org/forum/servers/7530-how-do-you-find-out-if-apache-installed-2.html

To solve this issue, edit ``/etc/apache2/httpd.conf`` and set the
``ServerName`` to your hostname e.g.

::

  ServerName weezy

could not bind to address 0.0.0.0:80
====================================

Installed Apache on Windows XP Home which was running Skype.  During the
installation a command prompt window displayed the following message:

::

  Installing the Apache2.2 service
  The Apache2.2 service is successfully installed.
  Testing httpd.conf....
  Errors reported here must be corrected before the service can be started.
  (OS 10048)Only one usage of each socket address (protocol/network address/port)
  is normally permitted.  : make_sock: could not bind to address 0.0.0.0:80
  no listening sockets available, shutting down
  Unable to open logs
  Note the errors or messages above, and press the <ESC> key to exit.  8....

Skype was using port 80.  To solve the problem, *Tools*, *Options*, *Advanced*,
*Connection* and untick
*Use port 80 and 443 as alternatives for incoming connections*:

::

  ../../images/howto/apache/skype-options-connection.gif

If this does not solve the problem you could try using the Microsoft, Port
Reporter tool, :doc:`../../microsoft/networking`, to see which application is
using port 80.

Invalid command 'Alias'
=======================

Do you have ``mod_alias.so`` enabled:

::

  LoadModule alias_module /usr/lib/apache2/modules/mod_alias.so

Invalid command 'AuthUserFile'
==============================

`configuration error: couldn't check access`_:

When using ``AuthType Basic``:

::

  AuthUserFile passwdfile
  AuthName "Prompt"
  AuthType Basic
  Require valid-user

Make sure these 3 modules are loaded:

::

  LoadModule auth_basic_module modules/mod_auth_basic.so
  LoadModule authn_file_module modules/mod_authn_file.so
  LoadModule authz_user_module modules/mod_authz_user.so

Invalid command 'Order'
=======================

::

  LoadModule authz_host_module /usr/lib/apache2/modules/mod_authz_host.so

Unable to find IPV4 address
===========================

Kept getting error message in log file:

::

  unable to find IPV4 address

To solve this commented out mod_unique_id from

::

  /etc/apache2/conf/apache2.conf

I did not like this solution as we may need mod_unique_id.

The problem turned out that the server name in:

::

  /etc/hostname

was not listed in:

::

  /etc/hosts

So to solve the problem I simply added my server name (``testbox1``) to the list:

::

  127.0.0.1  localhost  testbox1

proxy: No protocol handler was valid
====================================

Here is the error message:

::

  [warn] proxy: No protocol handler was valid for the URL /nexus. If you are using a DSO version of mod_proxy, make sure the proxy submodules are included in the configuration using LoadModule.

The solution was to un-comment all three of the following lines:

::

  LoadModule proxy_module modules/mod_proxy.so
  LoadModule proxy_connect_module modules/mod_proxy_connect.so
  LoadModule proxy_http_module modules/mod_proxy_http.so

...I had only un-commented one of them!


.. _`configuration error: couldn't check access`: http://www.garayed.com/apache-configurations/7602-fixed-configuration-error-couldnt-check-access-no-groups-file.html


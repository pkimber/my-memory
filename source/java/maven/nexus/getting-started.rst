Getting Started
***************

Install
=======

- Download ``nexus-1.0.2-bundle.zip``
- Un-zip the archive.  Install to a folder which doesn't include the version
  number (upgrades are done *in place* and the version in the folder name will
  be confusing).
- To install the service, run ``InstallNexus.bat`` which is in this
  folder:

  ::

    nexus-webapp-1.0.2\bin\jsw\windows-x86-32\

- Start the service...
- Check the log file:

  ::

    sonatype-work\nexus\logs\nexus.log

- Browse to http://localhost:8081/nexus/

Configuration
=============

- Log into the application as an administrator.  The default user name and
  password are ``admin``, ``admin123``.
- Change the administrator password, by selecting, *Change Password* in the
  left hand *Security* menu.
- Change the administrator account by selecting *Users* in the left hand
  *Security* menu.
- Update the email configuration by reviewing the *Server* configuration in
  in the left hand *Administration* menu.
- Review the storage locations by checking *Repositories* in the left hand
  *Administration* menu.

Apache
======

- Make sure the *Base URL* is empty in the *Application Server Settings* in
  the *Server* configuration option (accessed from the left hand
  *Administration* menu).
- Edit the Apache ``conf/httpd.conf`` file, and uncomment the following
  lines:

  ::

    LoadModule proxy_module modules/mod_proxy.so
    LoadModule proxy_connect_module modules/mod_proxy_connect.so
    LoadModule proxy_http_module modules/mod_proxy_http.so

- Add the following to the Apache ``conf/httpd.conf`` file (I put it near
  the end):

  ::

    ProxyRequests Off

    <Proxy *>
      Order deny,allow
      Allow from all
    </Proxy>

    ProxyPass /nexus http://localhost:8081/nexus
    ProxyPreserveHost On

  Note: For more information see `jetty, Configuring mod_proxy`_

- Re-start Apache, and browse to your Nexus repository:
  http://svn.mycompany.com/nexus/


.. _`jetty, Configuring mod_proxy`: http://docs.codehaus.org/display/JETTY/Configuring+mod_proxy


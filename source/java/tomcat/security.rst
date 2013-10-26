Security
********

Admin
=====

To set-up the admin user.  Edit:

::

  /etc/tomcat5/tomcat-users.xml

(on Windows):

::

  C:\tools\Tomcat 5.5\conf\tomcat-users.xml

and add an admin user:

::

    <user username="admin" password="password" roles="admin"/>

Change the password to something more secure!!

Re-start the Tomcat server:

::

  /etc/init.d/tomcat5 restart

LDAP
====

Tomcat Authentication with LDAP
http://jroller.com/page/LDAP?entry=tomcat_authentication_with_ldap

Windows
=======

To run a Tomcat service as *Administrator* (not sure why you would want to do
this):

::

  ../../images/howto/tomcat/windows-service-as-administrator.jpg


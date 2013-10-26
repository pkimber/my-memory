SCM
***

A common API for doing SCM operations:

http://maven.apache.org/scm/

Checkout (without a POM)
========================

::

  mvn scm:checkout -DconnectionUrl=scm:svn:http://servername/svn/projects/myproject/trunk/ -DcheckoutDirectory=myproject

If you have problems with security e.g. *authorization failed* then setup the
security (see below).

Providers
=========

=========  ============================================
Mercurial  http://maven.apache.org/scm/mercurial.html
=========  ============================================

Security
========

To specify the login name and password.  Create an ``~/.m2/settings.xml`` file:

::

  <settings>
    <servers>
      <server>
        <id>servername</id>
        <username>username</username>
        <password>password</password>
      </server>
    </servers>
  </settings>

Update
======

::

  mvn scm:update

Issues
======

The scm url is invalid
----------------------

The URL for svn repositories is a bit confusing.  Be sure to put enough ``svn``
items in the url e.g. ``scm:svn:svn://svn``:

::

  mvn release:perform -DconnectionUrl=scm:svn:svn://svn.mycompany.com/mycompany/tags/framework/activity/activity_module/activity_module-1.1


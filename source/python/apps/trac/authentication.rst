Authentication
**************

Links
=====

`Adding Authentication`_

Apache
======

Generate a password file containing your users and their passwords:

::

  mkdir /home/web/apache/
  htpasswd -c /home/web/apache/my-test-trac.htpasswd patrick

**Note**: After the first user, you don't need the "``-c``" option:

::

  htpasswd /home/web/apache/my-test-trac.htpasswd kevin

Add the following to your Apache ``conf/httpd.conf`` file:

::

  <LocationMatch "/trac/login">
      AuthType Basic
      AuthName "Trac"
      AuthUserFile "/home/web/apache/my-test-trac.htpasswd"
      Require valid-user
  </LocationMatch>

**Note**:  To use the same password file for multiple instances of the Trac,
see `Adding Authentication...`_ e.g:

::

  <LocationMatch "/trac/[^/]+/login">

(I couldn't get it to work last time I tried)...

To give users permission to access resources, see :doc:`admin`


.. _`Adding Authentication`: http://localhost/trac-multi/my-test-trac/wiki/TracCgi#AddingAuthentication
.. _`Adding Authentication...`: http://trac.edgewall.org/wiki/TracCgi#AddingAuthentication

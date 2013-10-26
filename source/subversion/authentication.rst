Authentication
**************

Simple
======

- Edit ``conf/svnserve.conf`` and uncomment the line:

  ::

    password-db = passwd

- Still editing ``conf/svnserve.conf``, disable access for users who have not
  authenticated:

  ::

    anon-access = none

  Note: The default settings allow anonymous users, read only access to the
  repository.

  `svnserve, Set access controls`_

- Edit ``conf/passwd`` and list user names and passwords:

  ::

    [users]
    patrick = password

Apache
======

See :doc:`install`

Windows
=======

Network Authentication
----------------------

To enable Windows network authentication use the Apache module,
``mod_auth_sspi``.

**Note**: The user name has to match the case of the user name on the network
exactly.

Eclipse
-------

When logging in through Eclipse must include the domain name (in upper case)
with the user name e.g.

::

  DOMAIN\Patrick

FireFox
-------

For on automatic authentication through the Mozilla Firefox browser see
:doc:`../mozilla/firefox`.


.. _`svnserve, Set access controls`: http://svnbook.red-bean.com/en/1.0/ch06s03.html


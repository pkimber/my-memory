dpkg
****

`HOWTO: Use dpkg to Install .deb Files`_

Install
=======

To install a ``.deb`` file, become root and use the command:

::

  dpkg -i filename.deb

Remove
======

::

  dpkg -i <package name>

Other
=====

``dpkg`` can also be used to:

- ``dpkg -unpack``: unpacks the file but does not install it
- ``dpkg -configure``: presents whatever configuration options are
  available for the package.


.. _`HOWTO: Use dpkg to Install .deb Files`: http://www.newlinuxuser.com/howto-use-dpkg-to-install-deb-files/

Workstation
***********

Host Name and Address
=====================

::

  try {
      java.net.InetAddress i = java.net.InetAddress.getLocalHost();
      System.out.println(i);                  // name and IP address
      System.out.println(i.getHostName());    // name
      System.out.println(i.getHostAddress()); // IP address only
  } catch (Exception e) {
      e.printStackTrace();
  }

User Name
=========

- http://www.rgagnon.com/javadetails/java-0048.html
- http://java.sun.com/j2se/1.4.2/docs/api/java/lang/System.html#getProperty(java.lang.String)

::

  System.getProperty("user.name")

`For a list of properties`_.

Windows
=======

See :doc:`tips` for the location of ``java.exe`` and ``javaw.exe``.


.. _`For a list of properties`: http://java.sun.com/j2se/1.4.2/docs/api/java/lang/System.html#getProperties()


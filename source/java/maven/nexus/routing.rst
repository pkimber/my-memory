Routing
*******

Links
=====

- `Managing Routes`_

Setup
=====

**Note**: I don't think this is working!

We wanted to download the ``com.sun.xml.ws``, ``jaxws-tools`` plugin from the
``java.net`` repository:

*Administration*, *Routing*:

===============================  ================================================================
**URL Pattern**                  ``.*/com/sun/xml/ws/.*``
**Rule Type**                    Inclusive
**Repository Group**             All Repositories
**Ordered Route Repositories**   Using the :doc:`repository-maven-1`
                                 connected to https://maven-repository.dev.java.net/repository/
===============================  ================================================================

::

  [../../../images/howto/maven/nexus/route-setup.gif]Route Set-up


.. _`Managing Routes`: http://books.sonatype.com/maven-book/reference/repository-manager.html#d0e21375


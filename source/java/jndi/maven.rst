Maven
*****

JNDI File System Provider
=========================

Install
-------

- Browse to http://java.sun.com/products/jndi/downloads/index.html
- Select *JNDI 1.2.1 & More*...
- Select *File System Service Provider, 1.2 Beta 3*
- Download ``fscontext-1_2-beta3.zip``
- Extract ``lib/fscontext.jar`` and ``lib/providerutil.jar`` into a temporary
  folder.
- Install the jar files into your local Maven 2 repository:

  ::

    mvn install:install-file -DgroupId=com.mycompany.thirdparty.com.sun.jndi -DartifactId=fscontext -Dversion=1_2-beta3 -Dfile=fscontext.jar -Dpackaging=jar -DgeneratePom=true
    mvn install:install-file -DgroupId=com.mycompany.thirdparty.com.sun.jndi -DartifactId=providerutil -Dversion=1_2-beta3 -Dfile=providerutil.jar -Dpackaging=jar -DgeneratePom=true

pom
---

Add the following dependencies to the Maven 2 ``pom.xml`` file:

::

  <dependency>
    <groupId>com.mycompany.thirdparty.com.sun.jndi</groupId>
    <artifactId>fscontext</artifactId>
    <version>1_2-beta3</version>
  </dependency>
  <dependency>
    <groupId>com.mycompany.thirdparty.com.sun.jndi</groupId>
    <artifactId>providerutil</artifactId>
    <version>1_2-beta3</version>
  </dependency>


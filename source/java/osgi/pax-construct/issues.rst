Issues
******

URL [mvn:...] could not be resolved
===================================

::

  Equinox 3.5.0 : connecting...
  Oops, there has been a problem!
  URL [mvn:org.eclipse/osgi/3.5.0.v20090520] could not be resolved.

- To solve the problem, I added http://repository.ops4j.org/maven2/ as a proxy
  repository in my Maven, Nexus repository.
- I then had to create a temporary Maven project containing the following
  dependencies:

  ::

    <dependencies>
      <dependency>
        <groupId>org.eclipse</groupId>
        <artifactId>osgi</artifactId>
        <version>3.5.0.v20090520</version>
      </dependency>
      <dependency>
        <groupId>org.eclipse.osgi</groupId>
        <artifactId>util</artifactId>
        <version>3.2.0.v20090520-1800</version>
      </dependency>
      <dependency>
        <groupId>org.eclipse.osgi</groupId>
        <artifactId>services</artifactId>
        <version>3.2.0.v20090520-1800</version>
      </dependency>
    </dependencies>

...I used this project to download the artifacts from Nexus.  After this the
``pax-provision`` command worked correctly.



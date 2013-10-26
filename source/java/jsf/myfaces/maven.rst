Maven
*****

pom.xml
=======

Dependencies
------------

::

  <dependency>
    <groupId>org.apache.myfaces.core</groupId>
    <artifactId>myfaces-api</artifactId>
    <version>1.1.3</version>
    <scope>compile</scope>
  </dependency>
  <dependency>
    <groupId>org.apache.myfaces.core</groupId>
    <artifactId>myfaces-impl</artifactId>
    <version>1.1.3</version>
    <scope>compile</scope>
  </dependency>
  <dependency>
    <groupId>org.apache.myfaces.tomahawk</groupId>
    <artifactId>tomahawk</artifactId>
    <version>1.1.3</version>
    <scope>compile</scope>
  </dependency>

Repositories
------------

::

  <repositories>
    <repository>
      <releases>
        <enabled>true</enabled>
      </releases>
      <snapshots>
        <enabled>false</enabled>
      </snapshots>
      <id>myfaces.staging</id>
      <name>MyFaces Staging Repository</name>
      <url>http://myfaces.zones.apache.org/dist/maven-repository</url>
    </repository>
  </repositories>


Maven
*****

Links
=====

- `JBoss Seam project setup with Maven - Part 2: EAR deployment`_
- `A Seam+JPA/Hibernate on OC4J Maven 2 Archetype`_

DVD Store Sample
================

Links
-----

- `Seam and Maven 2`_

Setup
-----

Add the following profile to your ``settings.xml`` file:

::

  <settings>
    <profiles>
      <!-- See http://vyzivus.host.sk/maven2-seam.html -->
      <profile>
        <id>vyzivus</id>
        <repositories>
          <repository>
            <id>uniba</id>
            <name>uniba</name>
            <url>http://delo.dcs.fmph.uniba.sk/sioux/maven2</url>
            <layout>default</layout>
          </repository>
          <repository>
            <id>julien</id>
            <name>julien</name>
            <url>http://julien.dubois.free.fr/maven2/</url>
            <layout>default</layout>
          </repository>
        </repositories>
      </profile>
    </profiles>
  </settings>

Build
-----

Download, extract and build the `DVD store`_ project:

::

  mvn install -P vyzivus



.. _`JBoss Seam project setup with Maven - Part 2: EAR deployment`: http://www.michaelyuan.com/blog/2007/10/09/jboss-seam-project-setup-with-maven-%e2%80%94-part-2-ear-deployment/
.. _`A Seam+JPA/Hibernate on OC4J Maven 2 Archetype`: http://blogs.steeplesoft.com/2007/10/25/seam-jpa-hibernate-oc4j-maven2-archetype/
.. _`Seam and Maven 2`: http://vyzivus.host.sk/maven2-seam.html
.. _`DVD store`: http://vyzivus.host.sk/site-files/dvdstore.zip


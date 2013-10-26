Deploy
******

- http://maven.apache.org/plugins/maven-deploy-plugin/
- :doc:`../add-a-jar-to-local-repository`

Deploy a JAR file
=================

To deploy a jar file into a remote repository:

Without a ``pom.xml`` file:

::

  mvn deploy:deploy-file -DgroupId=org.apache.jackrabbit -DartifactId=jackrabbit -Dversion=SNAPSHOT -Dpackaging=jar -Dfile=c:\jackrabbit-1.0-SNAPSHOT.jar -DrepositoryId=myserver -Durl=file:\\myserver\C$\Maven2Repository\repository

With a ``pom.xml`` file:

::

  mvn deploy:deploy-file -DpomFile=C:\download\pom.xml -Dfile=c:\jackrabbit-1.0.jar -DrepositoryId=myserver -Durl=file:\\myserver\C$\Maven2Repository\repository

See the :doc:`repository` document for ideas on best practices in the case of
dependencies that are not hosted anywhere.

Setup
=====

I had to add the following to my ``pom.xml``:

::

    <distributionManagement>
      <repository>
        <id>myserver</id>
        <name>Maven2Repository</name>
        <url>file:\\myserver\Maven2Repository\repository</url>
      </repository>
    </distributionManagement>

Deploy
------

To deploy this artifact to the repository, just run:

::

  mvn deploy


Maven
*****

Links
=====

- http://code.google.com/p/maven-android-plugin/

Configuration
=============

- Install the Android SDK, :doc:`install-sdk`
- Download the ``maven-android-sdk-deployer`` from
  http://github.com/mosabua/maven-android-sdk-deployer/archives/master

  **Note**: Might be better to clone the Git repository at
  ``git://github.com/mosabua/maven-android-sdk-deployer.git``.

- Extract to a convenient folder.  I extracted to:

  ::

    C:\src\mosabua-maven-android-sdk-deployer-821e1c4\

- Edit the ``pom.xml`` file, changing the ``android.sdk.path`` property to
  the path of the Android SDK.  I changed:

  ::

    <android.sdk.path>/home/java/software/android-sdk-linux/</android.sdk.path>

  ...to...

  ::

    <android.sdk.path>C:/tools/android-sdk-windows/</android.sdk.path>

- If the team is using Nexus, then edit the ``repo.url`` in the ``pom.xml``
  file.  I changed:

  ::

    <repo.url>http://localhost:9081/nexus/content/repositories/thirdparty</repo.url>

  ...to...

  ::

    <repo.url>http://svn.mycompany.com/nexus/content/repositories/thirdparty</repo.url>

- Edit your Maven ``settings.xml`` file and add authentication details for a
  Nexus admin user:

  ::

    <settings>
        <servers>
            <server>
                <id>android.repo</id>
                <username>admin</username>
                <password>gmahler</password>
            </server>

- To deploy the Android artifacts to your Nexus repository, change into the
  root of your ``maven-android-sdk-deployer`` and deploy:

  ::

    cd \src\mosabua-maven-android-sdk-deployer-821e1c4
    mvn deploy

  Note:

  - If you get a ``Properties file not found``... error, check out the *Issues*
    section below...
  - If you get errors about missing files, then check out this ticket:
    `Issue 1`_.

Project Configuration
=====================

- Create your Android project.
- Download this sample `pom.xml`_ file and copy to the root of your project.

  - Remove the entire ``<parent>`` tag.
  - Change ``<groupId>``, ``<artifactId>`` and ``<name>`` to your own.
  - Rename, and move the source directory to where Maven expects it:

    ::

      mv src java
      mkdir -p src/main
      mv java src/main/

    ...or if you don't want to change the directory structure, just add the
    ``sourceDirectory`` (and ``testSourceDirectory``*) to your ``pom.xml``
    file:

    ::

      <build>
          <sourceDirectory>src</sourceDirectory>
          <testSourceDirectory>test</testSourceDirectory>
      </build>

  - If your application uses the Google maps add-on, then add the following
    dependency:

    ::

      <dependency>
          <groupId>android.add-ons</groupId>
          <artifactId>android-maps</artifactId>
          <version>3</version>
          <scope>provided</scope>
      </dependency>

Usage
=====

To build the project:

::

  mvn install

Issues
======

Properties file not found
-------------------------

When running ``mvn deploy`` for the ``maven-android-sdk-deployer``, I got the
following error:

::

  Properties file not found: C:\tools\android-sdk-windows\platforms\android-1.1\source.properties

I got this error because I didn't install **all** Available Packages,
:doc:`install-sdk`, in the *Android SDK and AVD Manager*.

To solve the issue, select and install all available packages before running
``mvn deploy`` again...


.. _`Issue 1`: http://github.com/mosabua/maven-android-sdk-deployer/issues/#issue/1
.. _`pom.xml`: http://github.com/jayway/maven-android-plugin-samples/blob/master/apidemos-15/apidemos-15-app/pom.xml


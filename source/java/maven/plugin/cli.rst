CLI
***

Links
=====

maven-cli-plugin_

Blogs
-----

- `Faster testing with the Maven CLI plugin`_
- `A game-changing Maven 2 plugin you absolutely must use`_

Setup
=====

- Add the following to ``.m2/settings.xml``:

  ::

        <pluginGroups>
            <pluginGroup>org.twdata.maven</pluginGroup>
        </pluginGroups>
    </settings>

- Add the following repository (to Nexus, ``settings.xml`` or your
  ``pom.xml``):

  http://twdata-m2-repository.googlecode.com/svn

  e.g. for ``.m2/settings.xml``:

  ::

    <settings>
        <profiles>
            <profile>
                <id>create-wrapper</id>
                <repositories>
                    <repository>
                        <id>twdata-m2-repository</id>
                        <url>http://twdata-m2-repository.googlecode.com/svn</url>
                    </repository>
                </repositories>
            </profile>

  e.g. for ``pom.xml``:

  ::

    <repositories>
        <repository>
            <id>twdata-m2-repository</id>
            <url>http://twdata-m2-repository.googlecode.com/svn</url>
        </repository>
    </repositories>

  Note: I couldn't get this to work in Nexus, ``.m2/settings.xml`` or
  ``pom.xml``.


.. _maven-cli-plugin: http://wiki.github.com/mrdon/maven-cli-plugin
.. _`Faster testing with the Maven CLI plugin`: http://grep.codeconsult.ch/2009/05/05/faster-testing-with-the-maven-cli-plugin/
.. _`A game-changing Maven 2 plugin you absolutely must use`: http://www.mojavelinux.com/blog/archives/2009/05/a_gamechanging_maven_2_plugin_you_absolutely_must_use/index.php


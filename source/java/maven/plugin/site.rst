Site
****

Links
=====

- Hudson - Maven Site, :doc:`hudson/maven-site`
- `Maven 2 Site Plugin`_
- `Maven 2 Archetype Plugin - Creating a site`_
- `Maven 2: Getting ``mvn site:deploy`` to work`_
- http://maven.apache.org/plugins/maven-pdf-plugin/
  Generate a PDF version of your project's documentation.

Create
======

To create a simple site: (``site.xml``, ``apt`` folder and ``index.apt``):

::

  mvn archetype:create -DgroupId=com.sample -DartifactId=sample-app -DarchetypeArtifactId=maven-archetype-site-simple

A more complete version of a site (``fml``, ``fr``, ``xdoc``), can be created
using ``maven-archetype-site``:

::

  mvn archetype:create -DgroupId=com.sample -DartifactId=sample-app -DarchetypeArtifactId=maven-archetype-site

Insert
------

To insert a site within an existing project, the following *appears* to work:

::

  mvn archetype:create -DarchetypeArtifactId=maven-archetype-site-simple

You may like to add the project name and a skin to the generated ``site.xml``:

::

  <?xml version="1.0" encoding="ISO-8859-1"?>
  <project name="sample-project-name">
    <body>
      <links>
        <item name="Maven" href="http://maven.apache.org/"/>
      </links>

      <menu name="Documentation">
        <!--<item name="Xdoc Example" href="xdoc.html"/>-->
      </menu>
      <menu ref="reports"/>
    </body>
    <skin>
      <groupId>org.apache.maven.skins</groupId>
      <artifactId>maven-classic-skin</artifactId>
      <version>1.0</version>
    </skin>
  </project>

FAQ
===

To add links to FAQ items, use the anchor tag e.g.

::

  <faq id = "NEWS">
    <question>
      Where can I find the national news?
    </question>
    <answer>
      Have a look at the
      <a href="http://news.bbc.co.uk/">BBC News Web Site</a>
    </answer>
  </faq>

Issue Management and Continuous Integration
===========================================

Add the following to your ``pom.xml`` file:

::

      <ciManagement>
          <system>hudson</system>
          <url>http://server.name:8080/</url>
      </ciManagement>
      <issueManagement>
          <system>Redmine</system>
          <url>http://my.redmine.com/projects/show/myapp</url>
      </issueManagement>
  </project>

Multi Module
============

Notes on creating multi-module sites, :doc:`mvn-plugin-site-multi-module`.

Reports
=======

- NCSS - Report Plugin, :doc:`mvn-plugin-ncss`.
- PMD - Report Plugin, :doc:`mvn-plugin-pmd`.

There are many plugins which generate reports for the site.  Here are the ones
I use:

::

  ../../misc/howto/maven/pom-standard-reports.xml

**Note**: I have updated some report definitions in the multi-module sample,
Review the changes in:

::
  ../../misc/howto/maven/pom-standard-reports-multi-module.xml

Don't forget to add the ``maven-site-plugin`` to ``pom.xml``:

::

  <build>
    <plugins>
      <plugin>
        <groupId>org.codehaus.mojo</groupId>
        <artifactId>cobertura-maven-plugin</artifactId>
        <executions>
          <execution>
            <goals>
              <goal>clean</goal>
            </goals>
          </execution>
        </executions>
      </plugin>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-site-plugin</artifactId>
        <configuration>
          <locales>en</locales>
        </configuration>
      </plugin>
    </plugins>
  </build>

...and a ``reports`` element to the ``site.xml`` file:

::

    </menu>

    <menu ref="reports"/>

  </body>

**Note** An entry on the mailing list (25/04/2007 13:34) says the old
  ``reports`` tag is obsolete:

::

  <!--
  ${reports}
  -->

Dependencies
------------

You can run:

::

  mvn -o project-info-reports:dependencies

to generate the dependency report in ``target/site/dependencies.html``.

How do I generate the sites without the reports?
------------------------------------------------

In the reporting section of your pom.xml, put an empty ``reportSets`` element
in the maven-project-info-reports-plugin plugin like:

::

  <reporting>
    ...
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-project-info-reports-plugin</artifactId>
        <reportSets>
          <reportSet>
            <reports/>
          </reportSet>
        </reportSets>
      </plugin>
    </plugins>
    ...
  <reporting>

Run
===

`site:run`_.  Start the site up, rendering documents as requested for fast
editing.

To run the site:

::

  mvn site:run

Site
====

To generate the site:

::

  mvn site

View the site on http://localhost:8080/.

Skin
====

`How do I change the default skin for my site?`_

To see the available skins look on:
http://www.ibiblio.org/maven2/org/apache/maven/skins/.

Add this to your ``site.xml``:

::

  <skin>
    <groupId>org.apache.maven.skins</groupId>
    <artifactId>maven-classic-skin</artifactId>
    <version>1.0</version>
  </skin>

You may need to update your site plugin (``mvn -U site:site``), since the 2.0
version was just recently released.

Deploy
======

Note: Hudson makes site generation nice and simple.  For details, see Hudson -
Maven Site, :doc:`hudson/maven-site`.

To deploy the site to a server:

Add the following to ``pom.xml``:

::

  <distributionManagement>
    <site>
      <id>myserver</id>
      <url>scp://10.10.10.188:/srv/www/htdocs/my-memory</url>
    </site>
  </distributionManagement>

In this example I want to deploy to the server at ``10.10.10.188`` into the
folder:

::

  /srv/www/htdocs/my-memory/

*Note: This can also be done using the following url (if the user has
permission to write to the folder):*

::

  <url>file:////srv/www/htdocs/lucene-app</url>

...for Windows, you probably need to use this weird format:

::

  <url>file:///\\\\server\\sites\\projects\\sample-project</url>

(For more information http://jira.codehaus.org/browse/MSITE-232).

You then need to specify the user and password for connecting to the site.

In your ``settings.xml`` file:

Linux
-----

::

  ~/.m2/settings.xml

Windows
-------

::

  C:\Documents and Settings\your-username\.m2\settings.xml

add a ``server`` section for the server you defined above (in this example
``myserver``):

::

  <settings>
    <servers>
      <server>
        <id>myserver</id>
        <username>root</username>
        <password>the-password</password>
      </server>
    </servers>
  </settings>

To build and then deploy the site to the server:

::

  mvn site site:deploy

**Issue:** The system is asking me to re-type the password.

Snippet
=======

`Guide to the Snippet Macro`_



.. _`Maven 2 Site Plugin`: http://maven.apache.org/plugins/maven-site-plugin/
.. _`Maven 2 Archetype Plugin - Creating a site`: http://maven.apache.org/plugins/maven-archetype-plugin/examples/site.html
.. _`Maven 2: Getting ``mvn site:deploy`` to work`: http://gerodt.homeip.net/blog/gero/2005/10/30/1130698130518.html
.. _`site:run`: http://maven.apache.org/plugins/maven-site-plugin/run-mojo.html
.. _`How do I change the default skin for my site?`: http://maven.apache.org/plugins/maven-site-plugin/howto.html
.. _`Guide to the Snippet Macro`: http://maven.apache.org/guides/mini/guide-snippet-macro.html


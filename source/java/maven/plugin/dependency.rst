Dependency
**********

Links
=====

- `Maven 2 Dependency Plugin - Introduction`_
- Jira_

Analyse
=======

`Optimizing with the Maven Dependency Plugin`_

::

  mvn dependency:analyze

Add ``-X`` to get verbose output.

Copy
====

To copy project dependencies:

::

  mvn dependency:copy-dependencies

Will copy project dependencies to:

::

  target\dependency\

Classpath
=========

Output the path of the dependencies from the local repository in a classpath
format to be used in ``java -cp``:

::

  mvn dependency:build-classpath

Offline
=======

Downloads all project dependencies and plugins, transitively:

::

  dependency:go-offline

Resolve
=======

Tells Maven to resolve test scope dependencies and displays the version:

::

  mvn dependency:resolve

...looks for mismatches in your ``dependencyManagement`` section:

::

  mvn dependency:analyze-dep-mgt

POM
===

If you want this to run every time you run a ``package`` (or ``install``) goal.
Add the following to your ``pom.xml`` file:

::

  <build>
     <plugins>
       <plugin>
         <groupId>org.codehaus.mojo</groupId>
         <artifactId>dependency-maven-plugin</artifactId>
         <executions>
           <execution>
             <id>copy-dependencies</id>
             <phase>package</phase>
             <goals>
               <goal>copy-dependencies</goal>
             </goals>
           </execution>
         </executions>
       </plugin>
       ...

Tree
====

**Note**: See note below...

::

  mvn dependency:tree -Dverbose

To check the tree for a specific dependency:

::

  mvn dependency:tree -Dverbose -Dincludes=log4j:log4j:jar

**Note**: The tree is built using the ``pom.xml`` file in the local ``.m2``
repository.  To update the report, remember to run ``mvn install`` on any
modules you update!



.. _`Maven 2 Dependency Plugin - Introduction`: http://mojo.codehaus.org/dependency-maven-plugin/introduction.html
.. _Jira: http://jira.codehaus.org/browse/MDEP
.. _`Optimizing with the Maven Dependency Plugin`: http://books.sonatype.com/maven-book/reference/optimizing-sect-dependency-plugin.html


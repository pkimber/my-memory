Setup
*****

Very confusing.  I am just writing down what I remember!

Get "maven" working.

Checkout the jackrabbit source from svn.  In my case from:

http://svn.apache.org/repos/asf/incubator/jackrabbit/trunk

to:

``C:\Tools\jackrabbit>``

From ``README.txt``:

After installing Maven 1.0, be sure to download the latest release of the Ant
plugin (1.8.1 or later) using a command like

::

  maven plugin:download -DgroupId=maven -DartifactId=maven-ant-plugin -Dversion=1.8.1

From ``README.txt``:

NOTE: JDK 1.5 users need to download ``xalan.jar`` and place it in
``$MAVEN_HOME/lib/endorsed`` to build the Jackrabbit sources.

I think I downloaded:

``xalan-j-current-bin-2jars.tar.gz``

from:

http://www.mirror.ac.uk/mirror/ftp.apache.org/xml/xalan-j

This includes ``xalan.jar`` in the following folder:

::

  xalan-j-current-bin-2jars.tar.gz\xalan-j-current-bin-2jars.tar\xalan-j_2_6_0\bin

I think I changed into the following folder:

::

  C:\Tools\jackrabbit\

ran:

::

  maven jar:jar

This built and installed the following jars:

::

  jackrabbit-api-1.0-SNAPSHOT.jar
  jackrabbit-commons-1.0-SNAPSHOT.jar
  jackrabbit-core-1.0-SNAPSHOT.jar

into my maven repository:

``C:\Documents and Settings\patrickk\.maven\repository\jackrabbit\jars``

Not all tests passed - but most of them seemed to.

Then tried to build the "first steps" samples using maven.  The instructions
can be found at the following web page:

http://incubator.apache.org/jackrabbit/firststeps.html

I think I used ``maven genapp`` (see the maven how to).  I had various issues
which I have listed below:

- I changed the ``maven genapp`` folders as suggested but forgot to change the
  ``project.xml`` file.
- Could not find the ``javax.jcr`` jar file for ages.  It is in the maven
  repository:

  ::

    C:\Documents and Settings\patrickk\.maven\repository\jsr170\jars

- Had to update the ``project.xml`` file with the following dependencies:

  ::

    <dependencies>
        <dependency>
            <groupId>jackrabbit</groupId>
            <artifactId>jackrabbit-api</artifactId>
            <version>1.0-SNAPSHOT</version>
            <type>jar</type>
        </dependency>
        <dependency>
            <groupId>jackrabbit</groupId>
            <artifactId>jackrabbit-commons</artifactId>
            <version>1.0-SNAPSHOT</version>
            <type>jar</type>
        </dependency>
        <dependency>
            <groupId>jackrabbit</groupId>
            <artifactId>jackrabbit-core</artifactId>
            <version>1.0-SNAPSHOT</version>
            <type>jar</type>
        </dependency>
        <dependency>
            <groupId>jsr170</groupId>
            <artifactId>jcr</artifactId>
            <version>1.0</version>
            <type>jar</type>
        </dependency>
        <dependency>
            <groupId>log4j</groupId>
            <artifactId>log4j</artifactId>
            <version>1.2.8</version>
            <type>jar</type>
        </dependency>
        <dependency>
            <groupId>commons-collections</groupId>
            <artifactId>commons-collections</artifactId>
            <version>3.1</version>
            <type>jar</type>
        </dependency>
        <dependency>
            <groupId>xerces</groupId>
            <artifactId>xercesImpl</artifactId>
            <version>2.6.2</version>
            <type>jar</type>
        </dependency>
        <dependency>
            <groupId>concurrent</groupId>
            <artifactId>concurrent</artifactId>
            <version>1.3.4</version>
            <type>jar</type>
        </dependency>
        <dependency>
            <groupId>lucene</groupId>
            <artifactId>lucene</artifactId>
            <version>1.4.3</version>
            <type>jar</type>
        </dependency>
      </dependencies>
    <dependencies />

- To set the repository location changed the sample source code as follows:

  ::

    String repHomeDir = "c:/repository/jcr/";

- Changed the ``repository.xml`` location to:

  ::

    String configFile = "repository.xml";

The actual ``repository.xml`` file is in the root of my project:

::

  C:\development\java\learning\jackrabbit\JCRTest1

- Had log4j configuration file error (as always).  Got it working by putting
  ``log4j.properties`` into:

  ::

    C:\development\java\learning\jackrabbit\JCRTest1\target\classes

  This is on my classpath which can (sort of) be seen by looking in:
  "Run...", "Java Application", "Classpath" tab

- The ``jaas.config`` file was also placed in the root of my project:

  ::

    C:\development\java\learning\jackrabbit\JCRTest1

  Also added the following to eclipse, "Run...", "Java Application",
  "Arguments" tab, "VM arguments":

  ::

    -Djava.security.auth.login.config==jaas.config

- As I added each new dependancy I had to run ``maven eclipse`` from the
  command line and then refresh the eclipse project.

  The finished project is in:

  ::

    C:\development\java\learning\jackrabbit\JCRTest1


Upload Request
**************

Links
=====

Guide to uploading artifacts to Ibiblio:
http://maven.apache.org/guides/mini/guide-ibiblio-upload.html

My first attempt:
http://jira.codehaus.org/browse/MAVENUPLOAD-799

Bundle
======

To create the upload bundle for a project where I am not a developer:

Create a folder to store the bundle:

::

  mkdir upload-java-service-wrapper

Copy in the jar file you want to put into the bundle:

::

  cd upload-java-service-wrapper/
  cp /cygdrive/c/bin/wrapper-windows-x86-32-3.2.0/lib/wrapper.jar .

If there is an existing pom for an earlier version then use this as your
starting point for the new one:

::

  cp /cygdrive/c/Documents\ and\ Settings/patrickk/.m2/repository/tanukisoft/wrapper/3.1.2/wrapper-3.1.2.pom .
  mv wrapper-3.1.2.pom pom.xml

Update the ``pom.xml`` to include as much information as possible:

::

  <project>
    <modelVersion>4.0.0</modelVersion>
    <groupId>tanukisoft</groupId>
    <artifactId>wrapper</artifactId>
    <name>Java Service Wrapper</name>
    <version>3.2.0</version>
    <packaging>jar</packaging>
    <url>http://wrapper.tanukisoftware.org/</url>
    <licenses>
      <license>
        <name>Tanuki Software license</name>
        <url>http://wrapper.tanukisoftware.org/doc/english/license.html</url>
      </license>
    </licenses>
    <scm>
      <url>http://cvs.sourceforge.net/cgi-bin/viewcvs.cgi/wrapper/</url>
    </scm>
  </project>

Rename your jar file so it matches the pom specification:

::

  mv wrapper.jar wrapper-3.2.0.jar

Create a jar file containing your jar file and ``pom.xml``:

::

  jar -cf myfile.jar *

Request
=======

Create a request on the Maven upload JIRA
http://jira.codehaus.org/browse/MAVENUPLOAD.
You may prefer to use this link
http://jira.codehaus.org/secure/CreateIssue.jspa?pid=10367&issuetype=3


Mirrors
*******

Links
=====

`Using Mirrors for Repositories`_

Setup
=====

Add a ``mirrors`` tag to your ``$HOME/.m2/settings.xml`` file.  This is the
``mirrors`` section of my current ``settings.xml`` file (Note: it does not
solve all issues with *codehaus* being unavailable.):

::

  <mirrors>
    <mirror>
      <id>ggi-project.org</id>
      <url>http://ftp.ggi-project.org/pub/packages/maven2</url>
      <mirrorOf>central</mirrorOf>
    </mirror>
    <mirror>
      <id>planetmirror.com</id>
      <url>http://downloads.planetmirror.com/pub/maven2</url>
      <mirrorOf>central</mirrorOf>
    </mirror>
    <mirror>
      <id>lsu.edu</id>
      <url>http://ibiblio.lsu.edu/main/pub/packages/maven2</url>
      <mirrorOf>central</mirrorOf>
    </mirror>
    <mirror>
      <id>ibiblio.net</id>
      <url>http://www.ibiblio.net/pub/packages/maven2</url>
      <mirrorOf>central</mirrorOf>
    </mirror>
    <!-- the following mirrors seem not to get changes, just new files -->
    <mirror>
      <id>dotsrc.org</id>
      <url>http://mirrors.dotsrc.org/maven2</url>
      <mirrorOf>central</mirrorOf>
    </mirror>
    <mirror>
      <id>sunsite.dk</id>
      <url>http://mirrors.sunsite.dk/maven2</url>
      <mirrorOf>central</mirrorOf>
    </mirror>
    <!-- Mirror of Codehaus snapshots -->
    <mirror>
      <id>snapshots codehaus hack</id>
      <name>snapshots codehaus hack</name>
      <url>http://www.ibiblio.org/maven2/</url>
      <mirrorOf>snapshots</mirrorOf>
    </mirror>
  </mirrors>


.. _`Using Mirrors for Repositories`: http://maven.apache.org/guides/mini/guide-mirror-settings.html


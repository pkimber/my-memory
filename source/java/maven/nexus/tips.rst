Tips
****

Maven Continuous Integration Best Practices
===========================================

Maven Continuous Integration Best Practices:

::

  ../../../misc/howto/maven/nexus/maven-continuous-integration-best-practices.pdf

`(copy of this article on the Sonatype Blog)`_

- Batch Mode

  (from *Maven Continuous Integration Best Practices* (see above):

  Enable ``-B`` (batch) mode on the build.  This will make the logs shorter
  since it avoids the dependency download progress logging.

- Local Repository

  (from *Maven Continuous Integration Best Practices* (see above):

  Use ``-Dmaven.repo.local=xxxx`` to define the unique local repositories for
  each build.

- Snapshots

  Enable ``-U`` to cause Maven to always check for new snapshots.

- Stack Trace

  (from *Maven Continuous Integration Best Practices* (see above):

  Enable ``-e`` to cause Maven to produce the full stack trace if there's a
  build exception.

- Test Output

  Enable ``-Dsurefire.useFile=false``.  This is a favorite of mine since this
  causes surefire to print test failures to standard out, where it will get
  included in the build failure log and email.  This saves you from having to
  dig back onto the machine to find the surefire report just to see a simple
  stack trace.


.. _`(copy of this article on the Sonatype Blog)`: http://blogs.sonatype.com/people/2009/01/maven-continuous-integration-best-practices/


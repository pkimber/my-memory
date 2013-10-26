Repository - Maven 1
********************

Links
=====

- `Ordering access for proxy to Maven 1 repository`_

Configuration
=============

To add a Maven 1 repository to Nexus (in this example, I am adding
java.net - https://maven-repository.dev.java.net/repository/):

- Create a proxy pointing to the Maven 1 repository:

  - *Format*: *Maven 1*.

    ::

      [../../../images/howto/maven/nexus/repository-maven-1-proxy.gif]

- Create a *virtual* proxy.  This will allow Nexus to use a Maven 1
  repository as if it was in Maven 2 format:

  - *Format*: *Maven 2*.

    ::

      [../../../images/howto/maven/nexus/repository-maven-1-virtual.gif]

- If you want... add the *virtual* proxy to the *Public Repositories* group:

  ::

    [../../../images/howto/maven/nexus/repository-maven-1-group.gif]


.. _`Ordering access for proxy to Maven 1 repository`: http://nexus.sonatype.org/mailing-list-user-archives.html#nabble-td18913203


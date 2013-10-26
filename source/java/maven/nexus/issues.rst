Issues
******

502 on ``mvn release:perform`` for a ``war`` file.
==================================================

Cannot release a large artifact using ``mvn release:perform``:

::

  [ERROR] BUILD ERROR
  [INFO] ------------------------------------------------------------------------
  [INFO] Error deploying artifact: Failed to transfer file: http://mycompany.com/nexus/content/repositories/releases/uk/co/mycompany/client/webapp/1.0/myapp_webapp-1.0.war. Return code is: 502

Looking in the apache logs (``logs/error.log``):

::

  [Sat Oct 18 10:52:47 2008] [error] [client 82.153.174.220] proxy: error reading status line from remote server localhost
  [Sat Oct 18 10:52:47 2008] [error] [client 82.153.174.220] proxy: Error reading from remote server returned by /nexus/content/repositories/releases/uk/co/mycompany/client/webapp/1.0/myapp_webapp-1.0.war

- Tried adding ``ProxyPassReverse /nexus http://localhost:8081/nexus/`` to
  the apache configuration file (``conf/httpd.conf``):

  Did not help.

- ref entry on
  `cherrypy-users`_ mailing list.  Tried adding the following to
  ``conf/httpd.conf``:

  ::

    SetEnv force-proxy-request-1.0 1
    SetEnv proxy-nokeepalive 1

  Did not help.

- Just thinking... do we want to deploy a 27605K ``war`` file to our Maven
  repository?  This guy,
  `James Lorenzen`_, *typically doesn't run* the ``mvn release:perform`` goal.

- Discussed with James:

  - We agree, we probably don't want to deploy the ``war`` files onto the
    Maven repository.  We only need to deploy ``jar`` files which are used by
    other modules (i.e. dependencies).
  - Have a look at the options for the apache proxy modules.
  - Have a look at the Nexus properties files.  Might be some options for
    maximum upload size.

Group
=====

I couldn't add a repository to the *Public Repositories* group (when I clicked
on *Refresh* in the *Repository Groups* screen, the repository moved back from
*Ordered Group Repositories* to *Available Repositories*.

To solve the problem, I logged onto the server and edited the
``sonatype-work/nexus/conf/nexus.xml`` file, adding my repository in:

::

  <repositoryGroups>
    <repositoryGroup>
      <groupId>public-snapshots</groupId>
      <name>Public Snapshot Repositories</name>
      <type>maven2</type>
      <repositories>
        <repository>apache-snapshots</repository>
        <repository>codehaus-snapshots</repository>
      </repositories>
    </repositoryGroup>
    <repositoryGroup>
      <groupId>public</groupId>
      <name>Public Repositories</name>
      <type>maven2</type>
      <repositories>
        <repository>releases</repository>
        <repository>snapshots</repository>
        <repository>thirdparty</repository>
        <repository>central</repository>
        <repository>java.net-maven-2</repository>
        <repository>jasig-cas</repository>
        <repository>ops4j</repository>
      </repositories>
    </repositoryGroup>
  </repositoryGroups>

...I re-started the server and all was well...

Repository referenced by Repository Group does not share same content type!
===========================================================================

Check the log files:

::

  2008-12-15 11:30:01.852 WARN  [btpool0-45:] - org.sonatype.nexus.rest.ApplicationBridge: Invalid grouping, GroupId=public
  org.sonatype.nexus.proxy.registry.InvalidGroupingException: The content classes are not groupable! 'maven2' and 'maven1' are not compatible!

I was trying to add a Maven 1 format to the *Public Repositories* group
(which only contains repositories in Maven 2 format).

To solve the problem, see :doc:`repository-maven-1`.


.. _`cherrypy-users`: http://groups.google.co.uk/group/cherrypy-users/browse_thread/thread/9133351b29654b1f/c8a237748a02076b?lnk=st&q=Error+reading+from+remote+server+returned+by#c8a237748a02076b
.. _`James Lorenzen`: http://jlorenzen.blogspot.com/2007/09/how-to-create-release-using-maven2.html


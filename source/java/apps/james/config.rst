Configuration
*************

Files and Folders
=================

================  ===========================================
Configuration     ``apps/james/SAR-INF/config.xml``
Errors            ``apps/james/var/mail/error/``
Inboxes           ``apps/james/var/mail/inboxes/``
Logs              ``apps/james/logs/``
================  ===========================================

Prepare
=======

Perform a :doc:`install`.

Users
=====

- Open the ``apps/james/SAR-INF/config.xml`` file and find the port used for
  remote management and the administrator account details:

  ::

    <remotemanager enabled="true">
       <port>4555</port>
       <handler>
          <helloName autodetect="true">myMailServer</helloName>
          <administrator_accounts>
             <account login="root" password="root"/>
          </administrator_accounts>

- ``telnet`` to the remote management console:

  ::

    telnet localhost 4555

- Login and add users using the ``adduser`` command.  When finished type
  ``quit``.  Here is a sample session where we add the users ``janet``,
  ``john`` and ``switch``:

  ::

    JAMES Remote Administration Tool 2.3.1
    Please enter your login and password
    Login id:
    root
    Password:
    root
    Welcome root. HELP for a list of commands
    adduser janet password
    User janet added
    adduser john password
    User john added
    adduser switch password
    User switch added
    listusers
    Existing accounts 3
    user: janet
    user: john
    user: switch
    quit

  Note: To list all users:

  ::

    listusers

- Re-start the mail server.

Specific Configurations
=======================

Drop Folder
-----------

This configuration, :download:`misc/config.xml`:

::

  <spoolmanager>
     <threads> 10 </threads>
     <processor name="root">
       <mailet match="HostIsLocal" class="ToMultiRepository">
         <repositoryUrl>file:///C:/repository/james/drop/</repositoryUrl>
         <addDeliveryHeader>Comments: Processed by Apache James</addDeliveryHeader>
         <repositoryType>MAIL</repositoryType>
       </mailet>
     </processor>

...will drop messages into a separate folder for each user below:

::

  C:\repository\james\drop\

- I don't think the user has to be created on the system.

Diagnostics
===========

The best log to check is the ``mailet...`` file e.g:

::

  apps\james\logs\mailet-2008-05-15-11-44.log

DTP - Data Tools Project
************************

Links
=====

Getting Started with DTP
http://wiki.eclipse.org/index.php/Getting_Started_with_DTP

Getting Started
===============

To access a PostgreSQL database:

*Window*, *Preferences*, *Connectivity*, *Driver Definitions*.

Right click on *Database* and select *Generic JDBC Driver* from the tree
control.  Make sure *Edit New Driver Instance Immediately* is selected, then
click *OK*.

Fill in the details for the driver and connection:

::

  ../../../images/howto/eclipse/development/dtp-edit-driver-entry.gif

Open the *Data Source Explorer* perspective, right click on *Databases* and
select *New*, then choose the *SQL Model-JDBC Connection* profile type.  Click
*Next* and enter a name for your datasource.  Click *Next* and fill in the
*JDBC Connection Profile* properties:

::

  ../../../images/howto/eclipse/development/dtp-connection-profile.gif



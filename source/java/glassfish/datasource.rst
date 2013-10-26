Datasource
**********

In this example, I am going to try and set-up a Microsoft SQL Server connection
pool and JDBC resource.

Setup
=====

- Copy your JDBC driver (in this example ``jtds-1.2.jar``) to the
  ``domain-dir/lib`` folder.  On a default GlassFish 2 installation:

  ::

    C:\tools\glassfish-v2ur2\domains\domain1\lib\

- Re-start the GlassFish server.

Configuration
=============

Connection Pool
---------------

- Log into the admin interface.
- *Resources*, *JDBC*, *Connection Pools*, *New* (or *Common Tasks*, *Create
  New JDBC Connection Pool*).
- Give the connection pool a name.  Possibly best to append the work ``pool``
  to make it clear e.g. ``integration_test_pool``.
- Choose a *Resource Type*.  Choices include ``javax.sql.XADataSource`` (global
  transactions), ``java.sql.ConnectionPoolDataSource`` (local transactions,
  possible performance improvements), and ``javax.sql.DataSource`` (local
  transactions only).
- Choose a *Database Vendor* and click *Next*.
- If the JDBC driver has a Datasource class for the resource type and database
  vendor specified in the previous page, then the value of the *Datasource
  Classname* field is provided.  If not, enter it e.g.
  ``net.sourceforge.jtds.jdbcx.JtdsDataSource``.
- If you would like to, enter a description of the connection pool.
- Fill in *Pool Settings* details as required (see the *Help* file for detailed
  information).
- Fill in *Connection Validation* as required (see the *Help* file for detailed
  information).

  **Note**: If you are deploying a Spring within GlassFish and it will need
  access to this resource, make sure you tick *Allow Non Component Callers*.

- Fill in *Transaction* details as required (see the *Help* file for detailed
  information).
- Fill in the properties as required for your database driver:

  ::

    ../../images/howto/glassfish/connection-pool-properties.gif

- Finish
- To test the connection, edit the connection pool and click *Ping*.

JDBC Resource
-------------

- *Resources*, *JDBC*, *JDBC Resources*, *New*
- Give the JDBC Resource a name e.g. ``integration_test``.
- Select the correct *Pool Name*.
- If you want, give the resource a description.


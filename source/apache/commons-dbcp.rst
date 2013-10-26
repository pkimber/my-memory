Commons - DBCP - Database Connection Pools
******************************************

Links
=====

- http://jakarta.apache.org/commons/dbcp/

Maven
=====

::

  <dependency>
    <groupId>commons-dbcp</groupId>
    <artifactId>commons-dbcp</artifactId>
    <version>1.2.1</version>
  </dependency>

Sample
======

This code provides singleton access to an in-memory HSQL data source:

::

  import javax.sql.DataSource;
  import org.apache.commons.dbcp.BasicDataSource;

  public final class DataSourceManager {

      private static DataSource instance;

      private DataSourceManagerTestData() { }

      public static synchronized DataSource getInstance() {
          if (instance == null) {
              instance = createDataSource();
          }
          return instance;
      }

      public static DataSource createDataSource() {
          BasicDataSource ds = new BasicDataSource();
          ds.setDriverClassName("org.hsqldb.jdbcDriver");
          ds.setUsername("sa");
          //ds.setPassword("");
          ds.setUrl("jdbc:hsqldb:mem:schema");
          return ds;
      }
  }


Commons - DBUtils
*****************

Links
=====

- http://jakarta.apache.org/commons/dbutils/

Maven
=====

::

  <dependency>
    <groupId>commons-dbutils</groupId>
    <artifactId>commons-dbutils</artifactId>
    <version>1.0</version>
  </dependency>

Sample
======

The ``QueryRunner`` is responsible for running the queries.

::

  import java.sql.SQLException;
  import java.util.Collection;
  import javax.sql.DataSource;
  import org.apache.commons.dbutils.QueryRunner;

      public Collection get(final DataSource dataSource) throws MyException {
          try {
              QueryRunner run = new QueryRunner(dataSource);
              return (Collection) run.query(
                  "select id, name from mytable",
                  new MyResultSetHandler());
          } catch (SQLException e) {
              throw new MyException("Cannot retrieve information from the database.", e);
          }
      }

The ``QueryRunner`` delegates responsibility for building the result set to a
``ResultSetHandler``:

::

  import java.sql.ResultSet;
  import java.sql.SQLException;
  import java.util.ArrayList;
  import java.util.Collection;
  import org.apache.commons.dbutils.ResultSetHandler;

  public final class MyResultSetHandler implements ResultSetHandler {

      public Object handle(final ResultSet rs) throws SQLException {
          Collection list = new ArrayList();
          while (rs.next()) {
              MyObject details = new MyObject();
              details.setId(rs.getInt("id"));
              details.setName(rs.getString("Name"));
              list.add(details);
          }
          return list;
      }
  }

Note: The ``ResultSetHandler`` should iterate through every row in the result
set.

Note: I spent significant time trying to get the ``BeanListHandler`` working.
There is very little documentation and I did not get very far!


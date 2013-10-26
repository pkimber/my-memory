Java
****

http://jdbc.postgresql.org

Maven 2 - Dependency
====================

::

  <dependency>
    <groupId>postgresql</groupId>
    <artifactId>postgresql</artifactId>
    <version>8.1-404.jdbc3</version>
  </dependency>

Driver
======

::

  org.postgresql.Driver

JVM
===

Pass the driver as a parameter to the JVM as it starts, using the ``-D``
argument e.g:

::

  java -Djdbc.drivers=org.postgresql.Driver example.ImageViewer

In this example, the JVM will attempt to load the driver as part of its
initialization.  Once done, the ImageViewer is started.

Java
====

Create a test table using ``psql``:

::

  create table sales_order(number integer primary key, date_received date);
  insert into sales_order values (1, '1964-09-22');
  insert into sales_order values (2, '1964-02-12');

Some sample code:

Connection
----------

::

  private static final String URL = "jdbc:postgresql://localhost/my-company";

  Properties props = new Properties();
  props.setProperty("user", "the-user-name");
  props.setProperty("password", "the-password");
  connection = DriverManager.getConnection(URL, props);

Select
------

::

  private static final String SQL = "SELECT * FROM sales_order WHERE number = ?";

  PreparedStatement statement = connection.prepareStatement(SQL);
  statement.setInt(1, id);
  ResultSet resultSet = statement.executeQuery();
  while (resultSet.next()) {
      System.out.println(
          "Number: " + resultSet.getString(1)
          + " Date: " + resultSet.getString(2));
  }
  resultSet.close();
  statement.close();


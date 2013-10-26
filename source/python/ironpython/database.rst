Database
********

Access
======

::

  import clr
  clr.AddReference('System.Data')
  from System.Data import *
  from System.Data.OleDb import *

  connectionString = "PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA SOURCE=C:/temp/test.mdb"
  connection = OleDbConnection(connectionString);
  connection.Open()

  sql = "select version from parameters"
  command = OleDbCommand(sql, connection)
  reader = command.ExecuteReader()

  while reader.Read():
      print reader[0], reader[1]

  reader.Close()
  connection.Close()

SQL Server
==========

`Accessing SQL Server`_

::

  import clr
  clr.AddReference('System.Data')
  from System.Data import *

  TheConnection = SqlClient.SqlConnection("server=yourserver;database=News;uid=sa;password=password")
  TheConnection.Open()

  sql = "Select Headline from News"
  MyAction = SqlClient.SqlCommand(sql, TheConnection)
  reader = MyAction.ExecuteReader()

  while reader.Read():
      print reader[0]

  reader.Close()
  TheConnection.Close()


.. _`Accessing SQL Server`: http://www.ironpython.info/index.php/Accessing_SQL_Server


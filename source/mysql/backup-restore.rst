Backup and Restore
******************

Backup
======

::

  mysqldump --user=labs --password=mylabs labs > labs_2010-01-04.sql

In this example, ``labs`` is the database name.

Table
-----

To ``dump`` the contents of a table::

  mysqldump --user=pjk --password=mydb labs mytable
  mysqldump --host=server --user=pjk --password=mypass --skip-add-drop-table --no-create-info labs mytable
  mysqldump --host=server --user=pjk --password=pjk --skip-extended-insert --complete-insert labs mytable
  mysqldump --host=server --user=pjk --password=pjk --skip-extended-insert --complete-insert --skip-add-drop-table --no-create-info labs mytable

Note:

- In these examples, ``labs`` is the database name and ``mytable`` the table
  name.
- We would normally redirect the output of this command to a file.

Options::

  --complete-insert       Use column names on the INSERT statement.
  --no-create-info        Remove CREATE TABLE commands from output.
  --no-data               Don't dump any data.
  --skip-add-drop-table   Remove DROP commands from output.
  --skip-extended-insert  Put each INSERT statement on a separate line.

Restore
=======

::

  mysql --user=root --password=mylabs --database=templabs < labs_2010-01-04.sql
  mysql -u root -p < fullDump.sql
  mysql --user=root --database=tropicana < fullDump.sql

Note: You might need to create the database first e.g:

::

  CREATE DATABASE templabs;

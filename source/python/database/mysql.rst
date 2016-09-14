MySQL
*****

Links
=====

- PyMySQL_
- https://mysqlclient.readthedocs.io/en/latest/
- :doc:`../pip/install-modules`.
- `MySQL Python tutorial`_
- `Returning Rows as Dicts in MySQLdb`_

Install
=======

From PyMySQL_::

  sudo apt-get install python-dev libmysqlclient-dev
  pip install mysqlclient

Sample
======

::

  import MySQLdb

  conn = MySQLdb.connect(host = "localhost",
                         user = "testuser",
                         passwd = "testpass",
                         db = "test")
  cursor = conn.cursor()
  cursor.execute("SELECT VERSION()")
  row = cursor.fetchone()
  print "server version:", row[0]
  cursor.close()
  conn.close()

**Note**: For parameters you must use the ``%s`` format (for strings and
numbers)::

  sql = 'SELECT id FROM positions WHERE building = %s AND pos = %s'
  parameters = ('kitchen', 23)
  self.cursor.execute(sql, parameters)

Issues
======

sh: mysql_config: not found
---------------------------

To solve this issue, I installed some MySQL dev packages::

  sudo apt-get install libmysqlclient16-dev

Not sure if this is correct, but for more information see
`mysql_config question`_ and the ``site.cfg`` file in the root of the archive.


.. _`MySQL Python tutorial`: http://zetcode.com/databases/mysqlpythontutorial/
.. _`mysql_config question`: http://ubuntuforums.org/showthread.php?t=573286
.. _`Returning Rows as Dicts in MySQLdb`: http://www.halfcooked.com/mt/archives/000969.html
.. _PyMySQL: https://github.com/PyMySQL/mysqlclient-python

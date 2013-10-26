ODBC
****

Links
=====

- :doc:`../../jython/database`

Install
=======

Download and install the mx Base package from
http://www.egenix.com/files/python/eGenix-mx-Extensions.html:

::

  egenix-mx-base-2.0.6.win32-py2.4.exe

Install mx ODBC classes:

::

  egenix-mx-commercial-2.0.6.win32-py2.3.exe

Sample
======

The following code will access all bills:

::

  #databaseConnectionODBC.py

  import mx.ODBC.Windows

  class databaseConnectionODBC(object):
    "Database Connection Class"
    def __init__(self, dsn = 'CS01SUPPORT'):
        self.db = mx.ODBC.Windows.DriverConnect('DSN=' + dsn + ';UID=Master;PWD=gooFball;')

    def getCursor(self):
        return self.db.cursor()

::

  #convert.py

  from databaseConnectionODBC import databaseConnectionODBC

  class convertBills(object):
    def convert(self, databaseConnection):
        sql = 'select * from bills'

        cursor = databaseConnection.getCursor()
        cursor.execute(sql)

        while(True):
            data = cursor.fetchone()
            if data == None:
                break;

            print '#####################################################################'
            for field in data:
                print field


  if __name__ == '__main__':
    databaseConnection = databaseConnectionODBC('CS01PatTemp')
    bills = convertBills()
    bills.convert(databaseConnection)


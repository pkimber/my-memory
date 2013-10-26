JDBC
****

Links
=====

- `New universal SQLite JDBC library`_ (July 21, 2008).

Download
========

Download the pure Java driver, ``sqlitejdbc-v044-nested.tgz``,
from http://www.zentus.com/sqlitejdbc/

Extract
=======

Extract the jar file from the archive.

Usage
=====

- Include the jar file on the ``CLASSPATH``:

  ::

    SET CLASSPATH=sqlitejdbc-v044-nested.jar

- The connection string and driver look like this:

  ::

    jdbc:sqlite:C:/repo/trac/my-test-trac/db/trac.db
    org.sqlite.JDBC


.. _`New universal SQLite JDBC library`: http://blog.gobansaor.com/2008/07/21/new-universal-sqlite-jdbc-library/

Table Space
***********

.. highlight:: sql

::

  CREATE TABLESPACE cbs LOCATION '/mnt/cbsvolume/pgdata';

To list table spaces:

.. code-block:: text

  postgres=# \db
                List of tablespaces
      Name    |  Owner   |       Location
  ------------+----------+-----------------------
   cbs        | postgres | /mnt/cbsvolume/pgdata
   pg_default | postgres |
   pg_global  | postgres |

To show which database are on a table space:

.. code-block:: text

  postgres=# \l+
                                     List of databases
      Name |    Owner | Encoding | Collate | Ctype | Access privileges |  Size   | Tablespace |
  ---------+----------+----------+---------+-------+-------------------+---------+------------+
   csw_abc | csw_abc  | UTF8     | C       | C     |                   | 6881 kB | pg_default |
   csw_def | csw_def  | UTF8     | C       | C     |                   | 6737 kB | pg_default |
   csw_xyz | csw_xyz  | UTF8     | C       | C     |                   | 5793 kB | cbs        |

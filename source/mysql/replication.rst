Replication
***********

Slave
=====

Status
------

To check the status of a slave, log into the slave server, run ``mysql``,
then:

::

  mysql> SHOW SLAVE STATUS\G
  *************************** 1. row ***************************
               Slave_IO_State: Waiting for master to send event
                  Master_Host: 192.167.100.54
                  Master_User: myslaveuser
                  Master_Port: 3306
                Connect_Retry: 60
              Master_Log_File: bin-log.000721
          Read_Master_Log_Pos: 31533
               Relay_Log_File: relay-bin.001541
                Relay_Log_Pos: 31668
        Relay_Master_Log_File: bin-log.000721
             Slave_IO_Running: Yes
            Slave_SQL_Running: Yes
              Replicate_Do_DB: myfirstdb,myseconddb
          Replicate_Ignore_DB:
           Replicate_Do_Table:
       Replicate_Ignore_Table:
      Replicate_Wild_Do_Table:
  Replicate_Wild_Ignore_Table:
                   Last_Errno: 0
                   Last_Error:
                 Skip_Counter: 0
          Exec_Master_Log_Pos: 31533
              Relay_Log_Space: 31668
              Until_Condition: None
               Until_Log_File:
                Until_Log_Pos: 0
           Master_SSL_Allowed: No
           Master_SSL_CA_File:
           Master_SSL_CA_Path:
              Master_SSL_Cert:
            Master_SSL_Cipher:
               Master_SSL_Key:
        Seconds_Behind_Master: 0
  1 row in set (0.00 sec)

Check:

- ``Seconds_Behind_Master`` is close to ``0``...
- ``Slave_IO_Running`` and ``Slave_SQL_Running`` are both ``Yes``.
- If there has been an error, then ``Last_Errno`` and ``Last_Error``
  will show the problem.

Stop
----

To stop a slave, log into the slave server, run ``mysql``, then:

::

  mysql> STOP SLAVE;


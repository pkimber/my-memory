Information
***********

.. highlight:: sql

Active users connected to a postgreSQL database::

  SELECT * FROM pg_stat_activity;

To drop connections for a database::

  SELECT pg_terminate_backend(procpid)
    FROM pg_stat_activity
    WHERE datname = 'database-name-to-terminate';

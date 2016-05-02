Issues
******

.. highlight:: bash

``schema_integrity_check_failed``
=================================

::

  =INFO REPORT==== 2-May-2016::17:13:24 ===
  Error description:
    {could_not_start,rabbit,
      {{schema_integrity_check_failed,
        [{table_attributes_mismatch,rabbit_user,
          [username,password_hash,tags],
          [username,password_hash,tags,hashing_algorithm]}]},
       {rabbit,start,[normal,[]]}}}

.. warning:: this solution will destroy all your durable exchanges and queues,
             and all your persisted messages!

If the database schema has changed, it will fail, citing
``schema_integrity_check_failed``. To correct this, delete your ``mnesia``
directory (on most platforms)::

  /var/lib/rabbitmq/mnesia

and restart the server::

  sudo service rabbitmq-server start
  sudo rabbitmqctl status

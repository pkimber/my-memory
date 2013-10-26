Network
*******

Permission
==========

To allow access to a MySQL server from another machine on the network:

- Edit the following file:

  ::

    /etc/mysql/my.cnf

- Change ``bind-address`` to the public address of the MySQL server e.g:

  ::

    # bind-address          = 127.0.0.1
    bind-address            = 192.168.11.73

- Re-start the server.
- Check the :doc:`security` notes.  Users must be created for each server...


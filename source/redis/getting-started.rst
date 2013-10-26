Getting Started
***************

Links
=====

- http://redis.io/
- http://code.google.com/p/redis/

Getting Started
===============

- Here's a 30 second guide to getting started with Redis (linux only):

  ::

    $ wget http://redis.googlecode.com/files/redis-2.2.11.tar.gz
    $ tar -xzf redis-2.2.11.tar.gz
    $ cd redis-2.2.11/
    $ make
    $ ./src/redis-server

  Note: To install the dependencies on *debian* linux, install the software in
  the *make* section of `debian install`_.

  And that's it - you now have a Redis server running on port 6379...

  Alternatively just install from the Debian repositories:

  ::

    apt-get install redis-server

- See :doc:`config` for configuration information e.g. how to enable remote
  access to a Redis server.
- To use the *redis* server from a python client, see :doc:`client/python`.


.. _`debian install`: ../linux/debian/install.html


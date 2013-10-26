python
******

Links
=====

- https://github.com/andymccurdy/redis-py

Install
=======

::

  pip install redis

Sample
======

Getting Started
---------------

::

  $ python
  >>> import redis
  >>> r = redis.Redis(host='192.168.11.11', port=6379, db=0)
  >>> r.set('foo', 'bar')
  True
  >>> r.get('foo')
  'bar'
  >>> 
  >>> r['name'] = 'patrick'
  >>> r['name']
  'patrick'
  >>> 

**Note**

- To connect to a Redis server on ``localhost``:

  ::

    r = redis.Redis()

- See :doc:`../config` to set-up Redis to allow remote connections.

Status
------

Continuing from the previous sample, we can get status information from the
Redis server:

::

  >>> r.info()
  {'total_connections_received': 2, 'db0': {'keys': 3, 'expires': 0}, 'connected_clients': 1, 'used_memory': 619878, 'last_save_time': 1294952249, 'bgrewriteaof_in_progress': 0, 'changes_since_last_save': 3, 'role': 'master', 'uptime_in_seconds': 195, 'uptime_in_days': 0, 'bgsave_in_progress': 0, 'connected_slaves': 0, 'multiplexing_api': 'epoll', 'arch_bits': 64, 'total_commands_processed': 10, 'redis_version': '1.2.0'}

Keys
----

Continuing from the previous sample, we can manipulate keys in other ways:

::
    >>> r.keys('*')
    []
    >>> r.set('key-1', 'Value 1')
    'OK'
    >>> r.keys('*')
    [u'key-1']
    >>> r.get('key-1')
    u'Value 1'

Capped Log
----------

To create a simple capped log implementation see the sample at
``sample/python/redis/log_limit_size.py``...


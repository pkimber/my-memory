Install
*******

::

  sudo apt-get install memcached

Configuration
-------------

::

  /etc/memcached.conf

From `Jacob Kaplan-Moss - django-deployment-workshop`_

::

  # Memcached conf (/etc/memcached.conf).

  # Logging
  logfile /var/log/memcached.log

  # Memory cap
  -m 32

  # Connection port
  -p 11211

  # Run user
  -u nobody

  # Listening IP address.
  # Replace this with your *internal* IP address.
  -l 10.X.X.X

  # Max simultaneous connections.
  -c 1024

Verify
------

See :doc:`monitor`


.. _`Jacob Kaplan-Moss - django-deployment-workshop`: http://github.com/jacobian/django-deployment-workshop/


Test - python
*************

Links
=====

- `Basic open-set intermediated peer-to-peer messaging with RabbitMQ`_

Install
=======

Follow :doc:`getting-started` to install and start the RabbitMQ server...

Install the `python client for the Advanced Message Queuing Procotol (AMQP)`_:

::

  easy_install amqplib

Copy the following script to a test folder:

::

  ../../misc/howto/rabbitmq/all.py

Run
===

Note: Sample 1 is really good as we can see all the code, it is well commented
and the article explains everything very clearly...

Sample 1
--------

`Rabbits and warrens`_.

Follow :doc:`getting-started` to start the RabbitMQ server...

Download `amqp_consumer.py`_.

Start the message consumer:

::

  amqp_consumer.py

Download `amqp_publisher.py`_.

Send test messages to the consumer:

::

  amqp_publisher.py "Hello..."

Sample 2
--------

Slighty complicated sample, but probably worth a look... particularly if you
want to send a message to all clients...

`Basic open-set intermediated peer-to-peer messaging with RabbitMQ`_:

Follow :doc:`getting-started` to start the RabbitMQ server...

Download all.py_ to a folder.

Open the first (of two) python shells:

::

  import all
  all.queue_setup("agent1")

Open the second python shell:

::

  import all
  all.queue_setup("agent2")

To send a message to all clients, type the following from one of the shells:

::

  all.notify_others("Hello, world! (Agent 1)")


.. _`amqp_consumer.py`: http://toybox/hg/sample/file/tip/ampq/python/amqp_consumer.py
.. _`amqp_publisher.py`: http://toybox/hg/sample/file/tip/ampq/python/amqp_publisher.py
.. _`Basic open-set intermediated peer-to-peer messaging with RabbitMQ`: http://www.holygoat.co.uk/blog/entry/2009-09-17-1
.. _`Basic open-set intermediated peer-to-peer messaging with RabbitMQ`: http://www.holygoat.co.uk/blog/entry/2009-09-17-1
.. _`python client for the Advanced Message Queuing Procotol (AMQP)`: http://barryp.org/software/py-amqplib/
.. _`Rabbits and warrens`: http://blogs.digitar.com/jjww/2009/01/rabbits-and-warrens/
.. _all.py: http://toybox/hg/sample/file/tip/ampq/python/all.py

Message Domains
***************

Links
=====

- `Basic JMS API Concepts`_
- `Linda's Open Message Queue Blog - JMS 101`_

Message
=======

`javax.jms.Message interface`_

Acknowledge
-----------

If the session, acknowledge mode is set to ``CLIENT_ACKNOWLEDGE``, then call
the ``acknowledge()`` method on the message to mark it as delivered.

::

  Session session = connection.createSession(false /* not transacted */,
      Session.CLIENT_ACKNOWLEDGE);
  Destination destination = JndiManager.getQueue(ctx);
  MessageConsumer consumer = session.createConsumer(destination);
  connection.start();
  TextMessage m = (TextMessage) consumer.receive();
  // Acknowledge this and all previous messages received.
  m.acknowledge();

Note:

- By invoking ``acknowledge`` on a consumed message, a client acknowledges
  ``all`` messages consumed by the session that the message was delivered to.
- Calls to ``acknowledge`` are ignored for both transacted sessions and
  sessions specified to use implicit acknowledgement modes.

Point to Point
==============

- Queue
- One to one relationship between a sender and a receiver
- Many receivers can access the same queue, but only the first to pick up the message will receive it.

Publish/Subscribe
=================

- Topic
- Many receivers can register interest in a topic by subscribing to it.

Session
=======

`javax.jms.Session interface`_

A session is a single-threaded stream of control of messages.  This means that
a session can **not** be used concurrently by two threads at the same time.

Sessions have cool properties:

- Message order is guaranteed.
- You can acknowledge or commit (depending on whether or not you are using
  transactions) several message at a time.
- You can rollback or recover the messages if you need to reprocess them.

Sessions are going to be important because everything else starts from here.
You create messages, producers, consumers, destinations from the Session.


.. _`Basic JMS API Concepts`: http://java.sun.com/products/jms/tutorial/1_3_1-fcs/doc/basics.html
.. _`Linda's Open Message Queue Blog - JMS 101`: http://blogs.sun.com/openmessagequeue/entry/jms_101
.. _`javax.jms.Message interface`: http://java.sun.com/j2ee/1.4/docs/api/javax/jms/Message.html
.. _`javax.jms.Session interface`: http://java.sun.com/j2ee/1.4/docs/api/javax/jms/Session.html


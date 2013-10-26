MQ
**

Install
=======

Downloaded the JBoss application server, ``jboss-4.0.2.zip``, from
http://labs.jboss.com/portal/jbossas/download.

I extracted to:

::

  C:\tools\jboss-4.0.2\

To start the application server...

::

  cd C:\tools\jboss-4.0.2\bin
  run.bat

Queue
=====

To add a message queue edit:

::

  C:\tools\jboss-4.0.2\server\default\deploy\jms\jbossmq-destinations-service.xml

I added the following configuration:

::

  <!--  Credit Request Send Queue  -->
  <mbean code="org.jboss.mq.server.jmx.Queue"
    name="jboss.mq.destination:service=Queue,name=CreditRequestSendQueue">
    <depends optional-attribute-name="DestinationManager">jboss.mq:service=DestinationManager</depends>
  </mbean>

  <!--  Credit Request Receive Queue  -->
  <mbean code="org.jboss.mq.server.jmx.Queue"
    name="jboss.mq.destination:service=Queue,name=CreditRequestReceiveQueue">
    <depends optional-attribute-name="DestinationManager">jboss.mq:service=DestinationManager</depends>
  </mbean>

Restart the application server and the queues will be created.


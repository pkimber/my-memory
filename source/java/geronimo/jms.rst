JMS
***

Geronimo uses *ActiveMQ* for JMS services.

Created a new *JMS Resource Group* in the `Geronimo Server Console`_.

This action builds a deployment plan which can be copied to a text file
(``pjk-plan.xml``).  Deployed this plan using the following command line:

::

  java -jar deployer.jar --user system --password manager deploy pjk-plan.xml ../repository/geronimo/ge-activemq-rar/1.1/ge-activemq-rar-1.1.rar

Appears to deploy but I still get the following message when trying to deploy
``sender.war``:

::

  /cygdrive/c/tools/geronimo-1.1/bin> java -jar deployer.jar --user system --password manager deploy sender.war
      Error: Unable to distribute sender.war: Unable to resolve resource
      reference 'DefaultActiveMQConnectionFactory' (Could not auto-map to
      resource.  Try adding a resource-ref mapping to your Geronimo
      deployment plan.)


.. _`Geronimo Server Console`: http://server:8080/console/portal/services/services_jms


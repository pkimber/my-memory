James - Issues
**************

Mail message to be spooled cannot be null
=========================================

::

  15/05/08 11:44:21 INFO  James.Mailet: Error while storing mail.
  java.lang.IllegalArgumentException: Mail message to be spooled cannot be null.
      at org.apache.james.transport.mailets.ToMultiRepository.storeMail(ToMultiRepository.java:214)

`addDeliveryHeader` is required for ToMultiRepository or it will try to store a
null message.

See `Mailets, ToMultiRepository`_

Solution
--------

To solve the problem I added the ``addDeliveryHeader`` tag to the
``ToMultiRepository`` mailet configuration:

::

  <mailet match="HostIsLocal" class="ToMultiRepository">
    <repositoryUrl>file:///C:/repository/james/drop/</repositoryUrl>
    <addDeliveryHeader>Processed by Apache James</addDeliveryHeader>


.. _`addDeliveryHeader`: http://www.nabble.com/-jira--Created%3A-%28JAMES-832%29-%3CaddDeliveryHeader%3E-is-required-for-ToMultiRepository-or-it-will-try-to-stire-a-null-message-td14693017.html#a14693017
.. _`Mailets, ToMultiRepository`: http://james.apache.org/server/2.3.1/provided_mailets.html

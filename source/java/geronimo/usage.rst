Usage
*****

Administration Console
======================

Browse to the following url: http://localhost:8080/console.

When prompted enter ``system`` as the user name and ``manager`` as the
password.

Deploy
======

To deploy the ``sender.war`` file:

::

  java -jar deployer.jar --user system --password manager deploy sender.war

List Modules
============

::

  java -jar deployer.jar --user system --password manager list-modules

Start Module
============

::

  java -jar deployer.jar --user system --password manager start mymodulename

Stop Module
===========

::

  java -jar deployer.jar --user system --password manager stop mymodulename

Undeploy
========

::

  java -jar deployer.jar --user system --password manager undeploy mymodulename


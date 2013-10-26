Juju
****

Links
=====

- http://cloud.ubuntu.com/
- #juju on irc.freenode.net
- http://askubuntu.com/search?q=juju
- https://juju.ubuntu.com/docs/provider-configuration-local.html
- http://charms.kapilt.com/charms

Charm School - 8th March 2012
=============================

Where does Juju fit?

- *Ubuntu Guest OS* - Very popular for deploying in the cloud - but - people
  don't want a server - they just want a service.
- Kind of the same level as PAAS, but also crosses into other areas.

What is Juju?

- python program which abstracts away the details of Infrastructure as a
  Service.  *Currently only supports EC2*.

What is a Juju charm?

- Units of declarative meta data in YAML format.
- Hooks - which do configuration of the service e.g. install, relations.
- Unique - they are encapsulated very well.  The coupling between components is
  very loose.  Easy to keep them isolated which makes them extremely sharable.

Charm store

- 55 charms available including MySQL, OpenStack, Node.js, PostgreSQL,
  RabbitMQ.
- Shared ecosystem.

Questions

- Juju enforces encapsulation, which makes it easy to share charms.  Juju can
  be used to install Fabric on a server.  Fabric would then be used for general
  management purposes, not to install services.

Example (MediaWiki)

- Hook scripts can be written in any language - they are just executed.  So you
  can make use of existing install routines.
- #juju on irc.freenode.net.  Always happy to help people write Charms.
- Manage the service - not the machine.
- Encourage all hooks to be idempotent.

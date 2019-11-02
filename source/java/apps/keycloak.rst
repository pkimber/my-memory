Keycloak
********

Docker
======

::

  docker run --name keycloak -e KEYCLOAK_USER=admin -e KEYCLOAK_PASSWORD=letmein -p 8443:8443 jboss/keycloak

Browse to:
https://localhost:8443/auth

To add a user (cannot find a way to add the email address)::

  docker exec 5be9949528f4 /opt/jboss/keycloak/bin/add-user-keycloak.sh -u patrick -p letmein
  # list containers
  docker ps -aq
  # e.g. 5be9949528f4
  # restart the container
  docker restart 5be9949528f4

Containers
**********

.. highlight:: bash

List::

  docker ps -aq

Kill all::

  docker kill `docker ps -q`

Remove all containers (delete)::

  docker rm `docker ps -aq`

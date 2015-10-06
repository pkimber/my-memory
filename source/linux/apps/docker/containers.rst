Containers
**********

.. highlight:: bash

Using this ``Dockerfile``::

  FROM tomcat

Build::

  docker build -t mytomcat .

Run::

  docker run -d -p 8080:8080 mytomcat

List::

  docker ps -aq

Kill all::

  docker kill `docker ps -q`

Remove all containers (delete)::

  docker rm `docker ps -aq`

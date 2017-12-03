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

Remove all exited containers::

  docker rm $(docker ps -a -f status=exited -q)

Kill all::

  docker kill `docker ps -q`

Remove all containers (delete)::

  docker rm `docker ps -aq`

Stop and remove::

  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)

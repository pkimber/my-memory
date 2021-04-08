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

  docker ps -a
  docker ps -aq

Run bash::

  ❯ docker ps -a
  CONTAINER ID    IMAGE             COMMAND
  e33f95652391    apple_apple       "/srv/apple/docker"
  ❯ docker exec -it e33f95652391 bash
  root@e33f95652391:/srv/apple# python3 manage.py shell

Remove all exited containers::

  # bash
  docker rm $(docker ps -a -f status=exited -q)
  # fish
  docker rm (docker ps -a -f status=exited -q)

Kill all::

  docker kill `docker ps -q`

Remove all containers (delete)::

  docker rm `docker ps -aq`

Stop and remove::

  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)

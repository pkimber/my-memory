Images
******

.. highlight:: bash

List images::

  docker images

List image IDs::

  docker images -q

Remove all images (delete)::

  docker rmi `docker images -q`

Create
======

.. note:: The following image is used for our continuous integration server:
          :doc:`../../../git/gitlab`

::

  mkdir gitlab-pytest
  cd gitlab-pytest
  touch Dockerfile

Edit ``Dockerfile`` so it contains the following::

  FROM ubuntu:14.04
  MAINTAINER Patrick Kimber <code@pkimber.net>
  RUN apt-get update
  RUN apt-get install -y libpq-dev python3-dev libxml2-dev libxslt-dev libjpeg8-dev python3-pip git postgresql-client

Build::

  docker build -t pkimber/gitlab-pytest .

Create a container from the image::

  docker run -t -i pkimber/gitlab-pytest /bin/bash

Push to Docker hub::

  docker push pkimber/gitlab-pytest

Original Notes
==============

Run docker (see :doc:`getting-started`)::

  sudo docker run -i -t ubuntu /bin/bash

To view the running image, run the following command from a separate terminal::

  sudo docker ps

Update the image e.g. install some software e.g::

  sudo docker run -i -t ubuntu /bin/bash
  root@f3924d65dfa6:/# apt-get install vim

.. warning::

  Do not exit from the virtual machine because all your changes will be lost.

To save the changes to your image, run the following command from a separate
terminal::

  # get the container ID
  sudo docker ps
  ID            IMAGE         COMMAND    CREATED        STATUS        PORTS
  4b7a3737643a  ubuntu:12.04  /bin/bash  5 minutes ago  Up 5 minutes

In the above example, the container ID is ``4b7a3737643a``.

Now commit the changes to your image, giving it a name. In this example, the
name is ``vim``::

  sudo docker commit 4b7a3737643a vim
  # to give your image a name AND tag
  sudo docker commit 45d674f6db96 vim:version1

To list the images - which should include the image you just created::

  sudo docker images

To run this image::

  sudo docker run -i -t vim /bin/bash

e.g. to run ``ubuntu``, ``14.04``::

  $ sudo docker images
  REPOSITORY  TAG      IMAGE ID      CREATED      VIRTUAL SIZE
  ubuntu      12.04    b9e56c8f2cf5  2 hours ago  103.9 MB
  ubuntu      13.10    195eb90b5349  4 weeks ago  184.7 MB
  ubuntu      14.04    e54ca5efa2e9  4 weeks ago  276.5 MB

  sudo docker run -i -t ubuntu:14.04 /bin/bash

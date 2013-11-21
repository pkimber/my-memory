Images
******

Run docker (see :doc:`getting-started`)::

  sudo docker run -dns 8.8.8.8 -dns 8.8.4.4 -i -t ubuntu /bin/bash

To view the running image, run the following command from a separate terminal::

  sudo docker ps

Update the image e.g. install some software e.g::

  sudo docker run -dns 8.8.8.8 -dns 8.8.4.4 -i -t ubuntu /bin/bash                                                                     
  root@f3924d65dfa6:/# apt-get install vim

.. warning::

  Do not exit from the virtual machine because all your changes will be lost.

To save the changes to your image, run the following command from a separate
terminal::

  # get the container ID
  sudo docker ps
  ID                  IMAGE               COMMAND             CREATED             STATUS              PORTS
  4b7a3737643a        ubuntu:12.04        /bin/bash           5 minutes ago       Up 5 minutes

In the above example, the container ID is ``4b7a3737643a``.

Now commit the changes to your image, giving it a name. In this example, the
name is ``vim``::

  sudo docker commit 4b7a3737643a vim

To list the images - which should include the image you just created::

  sudo docker images

To run this image::

  sudo docker run -dns 8.8.8.8 -dns 8.8.4.4 -i -t vim /bin/bash

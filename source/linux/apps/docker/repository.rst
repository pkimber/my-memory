Repositories
************

Search
======

::

  $ sudo docker help search
  $ sudo docker search centos
  Found 25 results matching your query ("centos")
  NAME                             DESCRIPTION
  centos
  creack/centos
  ...

There you can see two example results: ``centos`` and ``creack/centos``.  The
second result shows that it comes from the public repository of a user,
``creack/``, while the first result (``centos``) doesn't explicitly list a
repository so it comes from the trusted Central Repository.  The ``/``
character separates a user's repository and the image name.

Once you have found the image name, you can download it::

  sudo docker pull centos

To use this image, use the standard methods e.g::

  sudo docker run -dns 8.8.8.8 -dns 8.8.4.4 -i -t centos /bin/bash

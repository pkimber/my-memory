elasticsearch
*************

From `Install ElasticSearch in Ubuntu 14.04 server`

Install :doc:`../../linux/ubuntu/java`::

  sudo wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -

Add the following line to ``/etc/apt/sources.list``::

  deb http://packages.elasticsearch.org/elasticsearch/1.3/debian stable main

::

  sudo apt-get update
  sudo apt-get install elasticsearch
  sudo service elasticsearch start

See https://www.pkimber.net/open/app-search.html for diagnostics etc...


.. _`Install ElasticSearch in Ubuntu 14.04 server`: http://blog.bekijkhet.com/2014/06/install-elasticsearch-in-ubuntu-1404.html

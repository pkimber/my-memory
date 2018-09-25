Docker
******

- Click here for :doc:`commands`
- Click here for :doc:`getting-started`
- Click here for :doc:`kibana`

.. note:: We run ElasticSearch from a Docker container because Ubuntu 14.04
          is using version 2.4.6.

.. note:: We are using this container, https://hub.docker.com/_/elasticsearch/,
          because I can't find an official ElasticSearch container for
          version 2.4.

To start ElasticSearch in a Docker container::

  docker run elasticsearch:2.4.6
  # find the container ID
  docker ps
  # find the IP address of your container
  docker inspect c20f2a08570e | grep "IPAddress"
  # check ElasticSearch is running (using 'httpie')
  http GET "http://172.17.0.2:9200/"

Update your ``.private`` file to include the IP address of the container::

  set -x ELASTICSEARCH_HOST "172.17.0.2"
  set -x ELASTICSEARCH_PORT "9200"

.. note:: This is the syntax for the ``fish`` shell.

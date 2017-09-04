Kibana
******

Install
=======

Download Kibana from
https://www.elastic.co/downloads/kibana

I downloaded ``kibana-6.0.0-beta2-linux-x86_64.tar.gz``::

  cd ~/bin/
  tar xf ~/Downloads/packages/kibana-6.0.0-beta2-linux-x86_64.tar.gz

Run
===

.. note:: Kibana configuration is set in ``config/kibana.yml``

Make sure ElasticSearch is running::

  cd ~/bin/kibana-6.0.0-beta2-linux-x86_64/
  ./bin/kibana

Browse to http://localhost:5601

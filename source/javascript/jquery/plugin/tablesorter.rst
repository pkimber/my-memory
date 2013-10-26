tablesorter
***********

Links
=====

- http://tablesorter.com/docs/

Plugins
-------

- http://code.google.com/p/tablesorter-extras/wiki/TablesorterSelect
- :doc:`scrollable-fixed-header-table`

Install
=======

::

  cd static/js/
  wget http://autobahn.tablesorter.com/jquery.tablesorter.js .

  cd ../css/
  mkdir tablesorter/
  cd tablesorter/

  wget http://tablesorter.com/themes/blue/blue.zip .
  unzip blue.zip
  rm blue.zip

Usage
=====

.. code-block:: html

  <head>
    <link rel="stylesheet" type="text/css" href="{{ STATIC_URL }}css/common/tablesorter/style.css">
    <script type="text/javascript" src="{{ STATIC_URL }}js/common/jquery-1.6.4.js"></script>
    <script type="text/javascript" src="{{ STATIC_URL }}js/common/jquery.tablesorter.js"></script>


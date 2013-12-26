Print
*****

.. highlight:: python

::

  import json
  print json.dumps(result, indent=2)

Shell
=====

Using ``json.tool`` from the shell to validate and pretty-print (from
`json - JSON encoder and decoder`_)::

  echo '{"json":"obj"}' | python -mjson.tool


.. _`json - JSON encoder and decoder`: http://docs.python.org/library/json.html

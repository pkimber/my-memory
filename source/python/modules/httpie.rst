HTTPie
******

.. highlight:: bash

Links
=====

- https://github.com/jkbr/httpie

Install
=======

::

  pip install httpie

Usage
=====

::

  http GET http://localhost:8000/contacts/api/villages/
  http POST http://localhost:5000/api/todo/ message='Meet for coffee'

Headers
-------

::

  http --headers GET http://www.google.co.uk/

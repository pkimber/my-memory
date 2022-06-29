JSON
****

.. highlight:: python

.. tip:: python 2.6 included the ``simplejson`` module,
         but it was renamed to ``json``.

Links
=====

- https://docs.python.org/3/library/json.html

File
====

Read
----

::

  import json

  with open("out.json", "r") as f:
      data = json.load(f)

Write
-----

::

  import json

  with open("out.json", "w") as f:
      json.dump(data, f, indent=4)

Legacy
======

Install
-------

.. note:: No need to install ``simplejson`` for python 2.6 and above.
          Just use ``json`` instead.

From `json and simplejson module differences in Python`_:

``json`` is ``simplejson``, added to the stdlib. Since ``json`` was only added
in 2.6, ``simplejson`` has the advantage of working on more python versions
(2.4+, rather than 2.6+).  Also, ``simplejson`` is updated more frequently than
Python is, so if you need (or want) the latest version, it's best to use
``simplejson`` itself, if possible.

A good practice, in my opinion, is to use one or the other as a fallback.

::

  try: import simplejson as json
  except ImportError: import json

jython
------

Install `Easy Install`_:

::

  jython \tools\jython2.5.1\bin\easy_install simplejson

Windows
-------

Download ``simplejson-1.7.3.tar.gz`` from
http://cheeseshop.python.org/pypi/simplejson

Build and Install: Extract the file to a temporary folder.  Open a
*Visual Studio 2005 Command Prompt*, change into the temporary folder and run:

::

  python setup.py install

Sample
======

Dump
----

::

  import simplejson # or json for python 2.6
  d = {'name': 'Sam', 'age': 47}

  simplejson.dumps(d)
  >>> '{"age": 47, "name": "Sam"}'

Dump and then load all class attributes:

::

  import simplejson # or json for python 2.6

  class client:
      def __init__(self, name = None, address = None, age = None):
          self.name = name
          self.address = address
          self.age = age

      def __str__(self):
          return self.name + ', ' + self.address + ', ' + str(self.age)

  if __name__ == '__main__':
      c = client('Patrick', '2 Moorview', 43)
      j = simplejson.dumps(c.__dict__)
      print 'JSON:'
      print j
      c = client()
      c.__dict__ = simplejson.loads(j)
      print 'Loads:'
      print c

`Joy of Python: Classes and Dictionaries`_, *all the attributes in a class are
already in a* ``__dict__``...

Dump to a file:

::

  import simplejson # or json for python 2.6
  f = open('out.json', 'wb')
  data = # create a list/dictionary etc...
  simplejson.dump(data, f, indent=4)

Load
----

::

  import simplejson # or json for python 2.6
  s = '{"name":"Exbourne","id":2}'

  simplejson.loads(s)
  >>> {'name': 'Exbourne', 'id': 2}


.. _`Easy Install`: ../jython/easy_install.html
.. _`Joy of Python: Classes and Dictionaries`: http://vsbabu.org/mt/archives/2003/02/13/joy_of_python_classes_and_dictionaries.html
.. _`json and simplejson module differences in Python`: http://stackoverflow.com/questions/712791/json-and-simplejson-module-differences-in-python
.. _jsonpickle: http://jsonpickle.github.com/
.. _jsonpipe: https://github.com/dvxhouse/jsonpipe
.. _simplejson: http://www.undefined.org/python/

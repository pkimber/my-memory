CSV
***

Links
=====

- `CSV Examples`_
- `CSV File Reading and Writing`_
- http://github.com/kennethreitz/tablib
  A format-agnostic tabular dataset library for Python.

Sample
======

::

  import csv

  csv.register_dialect('default', skipinitialspace=True, quoting=csv.QUOTE_ALL)

  class helper:
    def __init__(self):
      pass

    def read(self, fileName):
      reader = csv.reader(open(fileName), 'default')
      for row in reader:
        for item in row:
          if len(item.strip()) > 0:
            print item.strip()

  if __name__ == '__main__':
    helper().read('/temp/temp.csv')


.. _`CSV Examples`: http://docs.python.org/lib/csv-examples.html
.. _`CSV File Reading and Writing`: http://docs.python.org/lib/module-csv.html


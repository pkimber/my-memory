CSV
***

.. highlight:: python

Links
=====

- `CSV Examples`_
- `CSV File Reading and Writing`_
- http://github.com/kennethreitz/tablib
  A format-agnostic tabular dataset library for Python.

Sample
======

Write::

  import csv

  with open("temp.csv", "w", newline="", encoding="utf-8") as out:
      csv_writer = csv.writer(out, dialect="excel-tab")
      for a, b in data.items():
          csv_writer.writerow([a, b])

.. tip:: To learn more about ``encoding``, see `Unicode character encodings`_

To create a date based file name (using Django)::

  from django.utils import timezone

  date_as_str = timezone.localtime(timezone.now()).strftime("%Y-%m-%d")
  file_name = f"{date_as_str}-courses.tsv"
  with open(file_name, "w", newline="", encoding="utf-8") as out:

Read::

  import csv
  reader = csv.reader(open('temp.csv'), 'excel-tab')

Older Examples
--------------

Read::

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

Write::

  import csv

  with open('eggs.csv', 'w', newline='') as csv_file:
      csv_writer = csv.writer(
          csv_file,
          dialect='excel-tab',
      )
      # DBAPI cursor...
      cursor.execute('SELECT * FROM ilspa_web2py.t_courses ORDER BY id')
      data = cursor.fetchall()
      description = [item.name for item in cursor.description]
      csv_writer.writerow(description)
      for row in data:
          csv_writer.writerow(row)


.. _`CSV Examples`: https://docs.python.org/3.4/library/csv.html#examples
.. _`CSV File Reading and Writing`: https://docs.python.org/3.4/library/csv.html
.. _`Unicode character encodings`: https://www.youtube.com/watch?v=ZJ-rrJHibio

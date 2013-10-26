execfile
********

Calling scripts using another script

Use the ``execfile`` command to call a script from another script.

Sample
======

Create a script called ``testFunctions.py`` that contains the following:

::

  def printName(first, last):
     name = first + ' ' + last
     return name

Then create a script called ``test1.py`` that contains the following:

::

  execfile('/script/testFunctions.py')
  print printName('Cathy', 'Smith')

Note:

- You can call ``execfile`` from an interactive console.


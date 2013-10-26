Dictionary
**********

`HOWTO: Sort a Python Dictionary/Map`_

::

  import time

  work = {}

  #
  # create some sample data...
  #
  for i in range(10):
      key = "unit_%s" % i
      unitOfWork = {
          "id" : key,
          "data" : {
              "name" : "Turansky",
              "dob" : "03/28",
              "favoriteNumber" : int(time.time()) + i
          }
      }
      work[key] = unitOfWork

  print "The 'work' dictionary will print the objects randomly..."
  for i in work:
      print work[i]

  print ""
  print "Sprinkle some sorting magic..."

  # but you want to sort the objects by favoriteNumber'
  # get your values as a list... you want to use the list.sort() method
  units = work.values()

  # provide a lambda function that references your data structure
  units.sort(key = lambda obj:obj["data"]["favoriteNumber"])

  print ""
  print "... and just like that, you have order."
  for u in units:
      print u


.. _`HOWTO: Sort a Python Dictionary/Map`: http://blog.markturansky.com/archives/130


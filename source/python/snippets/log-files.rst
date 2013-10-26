log files
*********

`Simon Brunning - Blog`_

Various solutions in the blog, but I like this script for extracting a section
of a log file using the time:

::

  f = file("bitofblah.log")
  write = false
  for line in file("blah.log"):
    if line.startswith("12:0"): write = true
    if line.startswith("12:1"): write = false
    if write:
      f.write(line)


.. _`Simon Brunning - Blog`: http://www.brunningonline.net/simon/blog/archives/002192.html


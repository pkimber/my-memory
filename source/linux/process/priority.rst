Priority
********

To run a process so that it doesn't take too many resources, try the
following (in this example ``python script.py`` is the command):

::

  nice ionice -c3 python script.py


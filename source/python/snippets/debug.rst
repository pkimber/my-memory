Debug
*****

`Printing the current running stack in Python - Blog`_

::

  import traceback
  import logging

  # somewhere in your buggy code
  logging.log(1, "".join(traceback.format_stack())


.. _`Printing the current running stack in Python - Blog`: http://www.redmountainsw.com/wordpress/archives/printing-the-current-running-stack-in-python


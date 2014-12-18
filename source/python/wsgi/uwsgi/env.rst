env
***

.. highlight:: bash

From `uWSGI does not load environment variables`_ and
`Set environment variables from file`_

To read environment variables from a file in your uWSGI ``ini`` file::

  for-readline = ../mysite/.private
    env = %(_)
  endfor =

For a file in this format with the name ``.private``::

  AWS_S3_ACCESS_KEY_ID="ABC"
  AWS_S3_SECRET_ACCESS_KEY="123"

.. note:: I am not sure whether the double quotes are OK there or not.

To read the same variables into a bash script::

  export $(cat .private | xargs)


.. _`uWSGI does not load environment variables`: https://github.com/unbit/uwsgi/issues/629#issuecomment-43303330
.. _`Set environment variables from file`: http://stackoverflow.com/questions/19331497/set-environment-variables-from-file

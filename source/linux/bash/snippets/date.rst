Date
****

.. highlight:: bash

Append the date and time to a parameter::

  #!/bin/bash
  # exit immediately if a command exits with a nonzero exit status.
  set -e

  # make sure the user has passed in a file name.
  if [ "$1" = "" ]; then
      echo "Usage: $0 <file name>"
      exit
  fi

  # treat unset variables as an error when substituting.
  set -u

  # Dump the database to this file.
  NOW=$(date +"%Y-%m-%d-%H-%M")
  echo $NOW

  DUMP_FILE=$1-$NOW
  echo $DUMP_FILE

Another example::

  pg_dump -U postgres db -f ~/repo/backup/$(date +%Y%m%d_%H%M).sql

.. note:: Not sure if we need the double quotes around the ``date`` variable.

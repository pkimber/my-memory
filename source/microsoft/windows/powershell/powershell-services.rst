Services
********

List
====

::

  get-service | where {$_.status -eq "Running" }
  get-service | where {$_.status -eq "Stopped" }


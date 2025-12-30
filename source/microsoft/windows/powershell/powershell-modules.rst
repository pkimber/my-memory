Installing a PowerShell Module
******************************


To display the ``PSModulePath``::

  [Environment]::GetEnvironmentVariable("PSModulePath")

To install https://github.com/insomnimus/ps-dotenv::

  mkdir $HOME\Documents\WindowsPowerShell\

.. warning:: This got too complicated, so I just used a script to set
             environment variables.

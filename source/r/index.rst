R programming language
**********************

.. highlight:: bash

I am working on Salt states to install 'shiny' R package from CRAN:
https://gitlab.com/kb/salt/commit/ccecedb5f3d9008118a40f5e316e4888b1e0a85b

Some useful ``bash`` commands::

  # is a package installed?
  R --silent -e "packageVersion('shiny')"

  # install a package
  R --silent -e "remove.packages('shiny', repos='https://cran.rstudio.com/')"

  # remove a package (not sure what ``--silent`` is doing)?
  R --silent -e "remove.packages('shiny')"

Shiny Server
============

Install
=======

I can't find a way to install ``jsonlite`` as a user, so do the following::

  sudo -i -u shiny
  # run R
  R
  # at the R prompt
  install.packages('jsonlite', dependencies=TRUE, repos='https://cran.rstudio.com/')
  # accept the defaults

Logging
=======

To add logging, edit::

  /etc/systemd/system/shiny-server.service

And add a ``SHINY_LOG_LEVEL`` e.g::

  [Service]
  Environment="SHINY_LOG_LEVEL=DEBUG"

Reload the ``daemon`` and re-start the service::

  systemctl stop shiny-server
  systemctl daemon-reload
  systemctl start shiny-server

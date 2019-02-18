R programming language
**********************

.. highlight:: bash

Issues
======

If you get ``The application failed to start`` followed by::

  The application exited during initialization.

Then you probably have a missing package.  To find the missing package, run the
script (see Script_ below)...

Packages
========

I am working on Salt states to install 'shiny' R package from CRAN:
https://gitlab.com/kb/salt/commit/ccecedb5f3d9008118a40f5e316e4888b1e0a85b

Some useful ``bash`` commands::

  # is a package installed?
  R --silent -e "packageVersion('shiny')"

  # install a package
  R --silent -e "install.packages('tidyverse', repos='https://cran.rstudio.com/')"

  # remove a package (not sure what ``--silent`` is doing)?
  R --silent -e "remove.packages('shiny')"

Script
======

To run a script::

  sudo -i -u shiny
  Rscript /srv/shiny-server/app.R

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

If you want to ``preserve_logs`` (as suggested in several forums) add
``preserve_logs`` as the very first line in the ``shiny-server.conf`` file::

  # /etc/shiny-server/shiny-server.conf
  preserve_logs true;
  # Instruct Shiny Server to run applications as the user "shiny"
  run_as shiny;

.. note:: Adding ``preserve_logs`` didn't seem to change the logging for me.

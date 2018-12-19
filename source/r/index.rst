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

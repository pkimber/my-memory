Tips
****

.. highlight:: bash

Automatically Build
===================

`Auto-building Sphinx docs`_ (thank you Jacob Kaplan-Moss):

::

  $ pip install watchdog
  $ watchmedo shell-command \
      --patterns="*.txt" \
      --ignore-pattern='_build/*' \
      --recursive \
      --command='make html'

.. _`Auto-building Sphinx docs`: http://www.jacobian.org/writing/auto-building-sphinx/

For another way to automatically build your documentation, see
:doc:`../../mercurial/hooks`.

Single File
===========

To convert a single file from ``rst`` to ``html``, install Sphinx and
run (Sphinx installs ``/usr/bin/rst2html``):

::

  rst2html wip.rst > ~/temp/wip.html

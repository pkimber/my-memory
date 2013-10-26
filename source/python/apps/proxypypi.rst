proxypypi
*********

**Note**: I have decided to use :doc:`devpi` instead...

https://bitbucket.org/r1chardj0n3s/proxypypi

Getting Started
===============

Install
-------

::

  mkdir ~/repo/tool/proxypypi
  mkvirtualenv proxypypi

Run
---

::

  proxypypi -l logger.log -b 127.0.0.1 run

To proxy through nginx, see :doc:`../../nginx/proxy`

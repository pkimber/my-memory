PyPI - Python Package Index
***************************

.. note::

  Check out :doc:`../apps/devpi`

Also see :doc:`../apps/proxypypi`

- To check out: `Setting Up Your Own PyPi Server`_

Mirror
======

`What to do when PyPI goes down`_

::

  pip install -i http://d.pypi.python.org $PACKAGE

Note: Three mirrors are available, ``b``, ``c`` and ``d``.

... or:

::

  pip install --use-mirrors $PACKAGE

... or set the following environment variable in ``~/.bashrc``:

::

  export PIP_USE_MIRRORS=true


.. _`Setting Up Your Own PyPi Server`: http://justcramer.com/2011/04/04/setting-up-your-own-pypi-server/
.. _`What to do when PyPI goes down`: http://jacobian.org/writing/when-pypi-goes-down/

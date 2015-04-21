Module Documentation
********************

.. highlight:: bash

Links
=====

- `sphinx.ext.autodoc`_, Include documentation from docstrings
- `Documenting python - Additional Markup Constructs`_
- `Info field lists`_, (also see `The Epytext Markup Language`_).
- The `template module illustrating the usage of docstring`_ to create nice and
  useful documentation of your code.
- Some interesting comments in this discussion: In Sphinx, is there a way to
  `document parameters along with declaring them`_.

To add module documentation
===========================

Edit ``source/conf.py``, uncomment the ``#sys.path.insert`` section to read:

.. code-block:: python

  import sys
  sys.path.insert(0, os.path.abspath('../../'))

Add the following extensions:

.. code-block:: python

  extensions = ['sphinx.ext.autodoc', 'sphinx.ext.viewcode']

Some sample source code to get you started:

.. code-block:: rst

  :mod:`simple_booking_engine` -- Simple Booking Engine
  *****************************************************

  Module
  ======

  .. automodule:: simple_booking_engine.model

  Functions
  =========

  .. autofunction:: simple_booking_engine.model.create_booking

  Class
  =====

  .. autoclass:: simple_booking_engine.model.Booking
     :members:
     :undoc-members:


.. _`document parameters along with declaring them`: http://stackoverflow.com/questions/2194777/in-sphinx-is-there-a-way-to-document-parameters-along-with-declaring-them
.. _`Documenting python - Additional Markup Constructs`: http://docs.python.org/documenting/markup.html
.. _`Info field lists`: http://sphinx.pocoo.org/markup/desc.html#info-field-lists
.. _`sphinx.ext.autodoc`: http://sphinx.pocoo.org/ext/autodoc.html
.. _`template module illustrating the usage of docstring`: http://openalea.gforge.inria.fr/doc/openalea/doc/_build/html/source/sphinx/template.html#id3
.. _`The Epytext Markup Language`: http://epydoc.sourceforge.net/epytext.html

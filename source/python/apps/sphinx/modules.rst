Module Documentation
********************

Links
=====

- For details, see the **sample application** at
  ``~/repo/sample/python/sphinx/sample-docstring``.
- `sphinx.ext.autodoc`_, Include documentation from docstrings
- `Documenting python - Additional Markup Constructs`_
- `Info field lists`_, (also see `The Epytext Markup Language`_).

- `The template module is aimed at illustrating the usage of docstring to create nice and useful documentation of your code`_
- Some interesting comments in this discussion: `In Sphinx, is there a way to
  document parameters along with declaring them`_.

To add module documentation
===========================

- edit ``source/conf.py``, uncomment the ``#sys.path.insert`` section
  to read:

  ::

    sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..').replace('\\','/')))

- Create a ``modules`` folder inside the ``source`` folder:

  ::

    mkdir -p source/modules/

- Inside the new ``modules`` folder, create an ``model.rst`` file:

  ::

    touch source/modules/model.rst

  ...containing the following:

  ::

    :mod:`simple_booking_engine` -- Simple Booking Engine
    =====================================================

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

- Edit ``source/index.rst`` to add the ``model.rst`` file to the table
  of contents (this section can go at the end of the ``index.rst`` file):

  ::

    Modules
    =======

    .. toctree::
       :maxdepth: 2

       modules/model

- Rebuild the documentation...


.. _`sphinx.ext.autodoc`: http://sphinx.pocoo.org/ext/autodoc.html
.. _`Documenting python - Additional Markup Constructs`: http://docs.python.org/documenting/markup.html
.. _`Info field lists`: http://sphinx.pocoo.org/markup/desc.html#info-field-lists
.. _`The template module is aimed at illustrating the usage of docstring to create nice and useful documentation of your code`: http://openalea.gforge.inria.fr/doc/openalea/doc/_build/html/source/sphinx/template.html#id3
.. _`In Sphinx, is there a way to document parameters along with declaring them`: http://stackoverflow.com/questions/2194777/in-sphinx-is-there-a-way-to-document-parameters-along-with-declaring-them
.. _`The Epytext Markup Language`: http://epydoc.sourceforge.net/epytext.html

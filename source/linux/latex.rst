LaTex
*****

`The Not So Short Introduction to LaTeX2e`_

Links
=====

- `The LaTEX Companion`_
- :doc:`../python/apps/sdaps`
- :doc:`../python/apps/sphinx/output-pdf`
- `Sphinx PDF Generation with LaTeX`_

Install
=======

::

  sudo apt install texlive-full

Getting Started
===============

From the `The Not So Short Introduction to LaTeX2e`_

Create a minimal LaTeX file:

.. code-block:: latex

  \documentclass{article}
  \begin{document}
  Small is beautiful.
  \end{document}

Save the file using a ``tex`` extension e.g. ``temp.tex``

Run LaTeX on your file::

  latex temp.tex

If successful you will end up with a ``.dvi`` file.

.. note::

  It may be necessary to run LATEX several times to get the table of contents
  and all internal references right.

To view the file on screen::

  xdvi temp.dvi

To convert to pdf::

  dvipdf temp.dvi

To convert to postscript::

  dvips -Pcmz temp.dvi -o temp.ps
  ghostscript temp.ps


.. _`Sphinx PDF Generation with LaTeX`: http://jimmyg.org/blog/2009/sphinx-pdf-generation-with-latex.html
.. _`The LaTEX Companion`: http://latex-project.org/guides/tlc2-ch0.pdf
.. _`The Not So Short Introduction to LaTeX2e`: http://mirror.ox.ac.uk/sites/ctan.org/info/lshort/english/lshort.pdf

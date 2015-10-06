PDF
***

Single Page
===========

http://rst2pdf.ralsina.com.ar/::

  rst2pdf source/info/cv.rst -o cv.pdf

To control page breaks::

  .. raw:: pdf

    PageBreak

To set a footer::

  .. footer::

    Page ###Page### of ###Total###

Complete Documentation
======================

Linux
-----

Install Latex, :doc:`../../../linux/latex`

Generate the PDF document::

  make latexpdf

Open the document::

  evince build/latex/MyProjectName.pdf

Windows
-------

To generate a PDF document from a standard Sphinx project, we need to start by
producing ``latex`` output::

  make latex

To convert the latex documentation into PDF format:

Download the *basic MiKTeX system*, ``basic-miktex-2.8.3557.exe``, from
http://www.miktex.org/.

I installed to::

  C:\tools\MiKTeX 2.8\

Run *TeXworks* by clicking *Start*, *All Programs*, *MiKTeX 2.8*, *TeXworks*::

  "C:\tools\MiKTeX 2.8\miktex\bin\miktex-texworks.exe"

To generate the PDF file, *TeXworks*, *File*, *Open* and open the ``tex``
file generated in the first step.

Click the *Play* (*Typeset*) button on the toolbar and your PDF file will be
created in the same folder as your ``tex`` file.

*PDF - Command Line*

Before using the command line tools, you will need to generate a PDF using
the GUI (as in the previous section).  This will download required
dependencies.

Add the MiKTeX tools to your ``PATH``.  For an example batch file, see
tex.bat_.

To generate the ``pdf`` file, change into the folder containing your ``tex``
file and run the ``pdflatex`` command passing the ``tex`` file as the first
parameter.  The ``pdf`` file will be generated in the current folder e.g::

  cd doc\latex\
  pdflatex myApp.tex

Customise
=========

Latex
-----

Page break::

  .. raw:: latex

     \newpage

The latex ``documentclass`` files can be found as follows::

  cdsitepackages
  cd sphinx
  vim ./texinputs/sphinxmanual.cls
  vim ./texinputs/sphinxhowto.cls

Note: I have no idea what to do with these files, but it might be useful to
know where they are.

Issues
======

File not found
--------------

::

  ! LaTeX Error: File `manual.cls' not found.

To solve this problem, run the ``pdflatex`` command from the folder containing
your ``tex`` file.


.. _tex.bat: http://toybox/hg/core/file/tip/batch/set-path/tex.bat

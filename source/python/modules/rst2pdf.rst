rst2pdf
*******

Links
=====

- http://code.google.com/p/rst2pdf/
- `Creating presentations using restructured text`_
- http://impressive.sourceforge.net/

Install
=======

Create a virtual environment:

::

  pip install http://www.reportlab.org/ftp/ReportLab_2_3.tar.gz
  pip install rst2pdf==0.14.2

Note: Had to install ReportLab separately as there was an issue with the md5
hash.

Usage
=====

::

  rst2pdf doc/currency.rst

``currency.pdf`` will be created in the ``doc`` folder.


.. _`Creating presentations using restructured text`: http://lateral.netmanagers.com.ar/stories/BBS52.html


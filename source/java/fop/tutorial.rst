Tutorial
********

Links
=====

http://www.zype.co.nz/resources/tutorials/invoice

Download
========

Downloaded ``fop-0.20.5-bin.zip`` from
http://xmlgraphics.apache.org/fop/download.html.

Extracted to:

::

  C:\tools\fop-0.20.5\

Sample Files
============

Download from:

::

  ../../misc/howto/fop/zype-invoice-tutorial.zip.

Extracted to:

::

  C:\development\learn\zype-invoice-tutorial\

To create the PDF file:

::

  cd C:\development\learn\zype-invoice-tutorial\
  SET CLASSPATH=C:\tools\fop-0.20.5\lib\xalan-2.4.1.jar;C:\tools\fop-0.20.5\lib\xml-apis.jar;C:\tools\fop-0.20.5\lib\xercesImpl-2.2.1.jar
  java org.apache.xalan.xslt.Process -in invoice.xml -xsl invoice.xsl -out invoice.fo
  C:\tools\fop-0.20.5\fop.bat invoice.fo invoice.pdf


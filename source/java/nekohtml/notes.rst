Notes
*****

- http://people.apache.org/~andyc/neko/doc/html/index.html

Download
========

Downloaded ``nekohtml-latest.zip`` from the above web site.

Extracted to:

::

  C:\src\nekohtml-0.9.5\

Dependencies
============

Downloaded ``Xerces-J-bin.2.8.0.zip`` from
http://archive.apache.org/dist/xml/xerces-j/

Extracted:

- ``xercesImpl.jar``
- ``xercesSamples.jar``
- ``xml-apis.jar``

to:

::

  C:\src\nekohtml-0.9.5\lib\

Downloaded ``xalan-j_2_7_0-bin.zip`` from
http://www.apache.org/dyn/closer.cgi/xml/xalan-j.

Extracted:

- ``xalan.jar``

to:

::

  C:\src\nekohtml-0.9.5\lib\

Build
=====

The batch file did not appear to work...  So I copied ``build-html.xml`` to
``build.xml`` and built the project by running ``ant``.


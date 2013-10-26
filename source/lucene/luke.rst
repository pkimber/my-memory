Luke
****

Links
=====

- http://www.getopt.org/luke/

Issues
======

ClassNotFoundException
----------------------

When running Luke using individual jar files...

Downloaded ``luke-0.7.1.jar`` to ``C:\\tools\\luke``, copied in the lucene and
snowball jar files and ran this command line:

::

  java -classpath luke-0.7.1.jar;lucene-core-2.3-dev-rev-566112.jar;lucene-snowball-2.2.0.jar org.getopt.luke.Luke

When using the snowball analyzer I get this exception:

::

  java.lang.ClassNotFoundException: net.sf.snowball.ext.Stemmer


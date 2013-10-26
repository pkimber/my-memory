JDK Recompile Old Version
*************************

Looks like ColdFusion will not work with jdk1.5 so I will try and recompile all
our third party libraries with:

::

  C:\Tools\j2sdk1.4.2_08

ant: Changed java home to:

::

  JAVA_HOME=C:\Tools\j2sdk1.4.2_08

PDF Box

::

  c:\Tools\PDFBox-0.7.1
  ant

New jar in:

::

  C:\Tools\PDFBox-0.7.1\lib

log4j

::

  C:\Tools\logging-log4j-1.2.11
  ant jar

Could not compile - Various errors which look complicated to solve.  See
``build.properties.sample``

I will just hope that the supplied log4j jar files are compiled with jdk 1.4!

Spoke to *M*.  Can open up the jar file and look in the manifest to see which
version of the jdk was used. e.g.

*Created-By: 1.4.2_07-b05 (Sun Microsystems Inc.)*

But it is very difficult to go back and recompile all the jar files...


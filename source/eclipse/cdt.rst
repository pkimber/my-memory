CDT
***

http://www.eclipse.org/cdt/

Install
=======

Linux
-----

Had to ``su root`` to install...

::

  /usr/local/eclipse/eclipse -vm /opt/sun-jdk-1.4.2.10/jre/bin/java

Windows and Linux
-----------------

Eclipse, *Help* menu select *Software Updates* and then *Find and Install*,
Select *Search for new features to install* and click *Next*.
Click *New Remote Site* to add an update site with the URL:

http://download.eclipse.org/tools/cdt/releases/eclipse3.1

Select the appropriate CDT entry and click next to show the list of features
for this release. The features for the CDT have been simplified and now only
defines two features, the CDT runtime and the CDT SDK. The SDK feature is a
superset of the CDT runtime with the addition of the CDT source.

Setup
=====

Windows
-------

Had to install ``g++`` and ``make`` in ``cygwin``.  Very simple using the
``cygwin`` update tools and somehow CDT is able to locate and use the tools.


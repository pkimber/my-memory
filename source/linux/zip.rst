zip
***

unzip
=====

The following command will unzip the zip file in the current folder.
It **will** re-produce the folder/directory structure

::

  unzip ~/download/vim/ColorSamplerPack.zip

folder
------

unzip just the files in the ``WEB-INF/lib/`` folder:

::

  unzip application.war WEB-INF/lib/*

Ignore folders
--------------

To ignore folders (junk paths/do not make directories):

::

  unzip -j application.war WEB-INF/lib/*

View
----

To view the ``META-INF/MANIFEST.MF`` file on the screen:

::

  unzip -p commons-logging.jar META-INF/MANIFEST.MF

list
====

List contents of the zip (``-l``):

::

  unzip -l ~/download/java/faces/jsfks-done.zip

zip
===

http://library.n0i.net/linux-unix/administration/nlm/part1/zip.html

This command, recursively (``-r``) adds files from the ``howto`` folder
to the ``howto.zip`` archive:

::

  zip -r howto.zip howto

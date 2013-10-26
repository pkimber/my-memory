Rhino
*****

Links
=====

- `Rhino is an open-source implementation of JavaScript written entirely in Java`_.
- `IBM - developerWorks - alt.lang.jre: Harnessing Rhino`_
- `Rhino Shell`_

Download
========

Download ``rhino1_6R7.zip`` from http://www.mozilla.org/rhino/download.html

Extract the archive to a convenient folder.  I extracted to:

::

  C:\tools\rhino1_6R7\

Usage
=====

To start the interactive shell:

::

  java -cp /tools/rhino1_6R7/js.jar org.mozilla.javascript.tools.shell.Main

Script
======

To run a script, just append the name of the script to the previous command
e.g.  to run this script:

::

  function name(first, last)
  {
      return first + " " + last;
  }
  print(name("Patrick", "Kimber"));

...which is saved as ``script.js``:

::

  java -cp /tools/rhino1_6R7/js.jar org.mozilla.javascript.tools.shell.Main script.js


.. _`Rhino is an open-source implementation of JavaScript written entirely in Java`: http://developer.mozilla.org/en/docs/Rhino
.. _`IBM - developerWorks - alt.lang.jre: Harnessing Rhino`: http://www.ibm.com/developerworks/java/library/j-alj11024/
.. _`Rhino Shell`: http://developer.mozilla.org/en/docs/Rhino_Shell


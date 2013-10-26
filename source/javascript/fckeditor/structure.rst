Structure
*********

See :doc:`setup` and :doc:`development`.

Working through the simple sample:

::

  C:\src\FCKeditor\_samples\html\sample01.html

This html file creates a new FCKeditor object:

::

  var oFCKeditor = new FCKeditor( 'FCKeditor1' ) ;

The function ``_GetIFrameHtml`` loads ``fckeditor.html``.

``fckeditor.html`` creates a table cell which has an embedded ``iframe`` which
has an id of ``eEditorArea``.

So how does ``eEditorArea`` respond to events?

Compactor
=========

The file ``fck_startup.js`` has all the source compacted:

::

  C:\src\FCKeditor\editor\js\fck_startup.js

Spoke to Helen.  If you look in:

::

  C:\src\FCKeditor\editor\fckeditor.original.html

There is the section which probably controls the packager/compactor:

::

  <!-- @Packager.RemoveLine
  <meta http-equiv="Cache-Control" content="public">
  @Packager.RemoveLine -->
  <!-- @Packager.Remove.Start -->
  <script type="text/javascript" src="_source/internals/fcknamespace.js"></script>
  <script type="text/javascript" src="_source/internals/fckcoreextensions.js"></script>
  <script type="text/javascript" src="_source/globals/fck_constants.js"></script>
  <script type="text/javascript" src="_source/internals/fckbrowserinfo.js"></script>
  <script type="text/javascript" src="_source/internals/fckscriptloader.js"></script>
  <script type="text/javascript" src="_source/internals/fckurlparams.js"></script>
  <script type="text/javascript" src="_source/internals/fck.js"></script>
  <script type="text/javascript" src="_source/internals/fckconfig.js"></script>
  <script type="text/javascript" src="_source/globals/fckeditorapi.js"></script>
  <script type="text/javascript" src="_source/internals/fck_onload.js"></script>
  <!-- @Packager.Remove.End -->
  <!-- @Packager.RemoveLine
  <script type="text/javascript" src="js/fck_startup.js"></script>
  @Packager.RemoveLine -->

We would guess that all the files in listed which are in the ``_source`` folder
are compacted into ``js/fck_startup.js``.

To Run the html sample without using the compacted files, add
``fcksource=true`` to the url.

::

  file:///C:/src/FCKeditor/_samples/html/sample01.html?fcksource=true

Startup
=======

A few clues in the source code...

::

  function Window_OnLoad()

in:

::

  C:\src\FCKeditor\editor\_source\internals\fck_onload.js

The editor startup follows these steps:

- Load the editor main page (``fckeditor.html``).
- Load the main configuration file (``fckconfig.js``)
- Process the configurations set directly in the page code (just load then).
- Override the configurations with the custom config file (if set).
- Override the configurations with that ones set directly in the page code.
- Load the editor skin styles CSS files.
- Load the first part of tha main scripts.
- Load the language file.
- Start the editor.


Document Object Model (DOM)
***************************

Tools
=====

FireFox has a built in DOM Inspector.  This is added to the *Tools* menu by
re-installing FireFox, selecting *Custom Install* and choosing *Developer
Tools*.

Links
=====

- http://www.webreference.com/js/column40/properties.html
- Gecko DOM Reference
  http://developer.mozilla.org/en/docs/Gecko_DOM_Reference
- Sample code
  http://g1/svn/home/patrick/learn/javascript/gecko-dom-reference

Properties
==========

The Document Object Model provides a set of properties that you can use to
navigate, access, and update the document tree with.

Read-only properties
--------------------

==================  =======================================================  =================================================================
DOM's Property      Returns                                                  Comments
==================  =======================================================  =================================================================
firstChild          The first child node.                                    An [object]. All children are included in childNodes collection.
lastChild           The last child node.                                     An [object]. All children are included in childNodes collection.
nextSibling         The next child of the node's parent.                     An [object].
nodeName            The HTML Tag.                                            Examples: P, FONT, UL.
nodeType            Whether the node is a tag, text, or attribute.           Returns 1 for tag, 2 for attribute, and 3 for text.
parentNode          A reference to the parent node.                          An [object].
previousSibling     A reference to the previous child of the node's parent.  An [object].
specified           Whether an attribute value is set.                       Boolean
==================  =======================================================  =================================================================

Read-write properties
---------------------

==================  ============================================  ============================================================================
DOM's Property      Returns                                       Comments
==================  ============================================  ============================================================================
data                The value of a text node.                     A string. Returns undefined for all other nodes. Can be set as well.
nodeValue           The value of a text node.                     A string. Returns null for all other nodes. Can be set as well.
==================  ============================================  ============================================================================

Collections
-----------

==================  ============================================  ============================================================================
DOM's Property      Returns                                       Comments
==================  ============================================  ============================================================================
attributes          A collection of the node's attributes.        Access by name. Example:attributes.id.
childNodes          A collection of the node's children.          Access by index. Example:childNodes[2].
==================  ============================================  ============================================================================

Properties (from other web sites)...
====================================

body
----

==================  ==========================================================================================================================
body	            Specifies the beginning and end of the document body.
                    Returns the BODY node of the current document.
==================  ==========================================================================================================================

DOM:element.innerHTML
---------------------

http://developer.mozilla.org/en/docs/DOM:element.innerHTML

``innerHTML`` sets or gets all of the markup and content within a given
element.

::

  // HTML:
  // <div id="d"><p>Content</p>
  // <p>Further Elaborated</p>
  // </div>

  d = document.getElementById("d");
  dump(d.innerHTML);

  // the string "<p>Content</p><p>Further Elaborated</p>"
  // is dumped to the console window

Though **not actually a part of the W3C DOM specification**, this property
provides a simple way to completely replace the contents of an element.  For
example, the entire contents of the document body can be deleted by:

::

  document.body.innerHTML = "";  // Replaces body content with an empty string.

Methods
=======

- http://www.w3schools.com/htmldom/dom_obj_document.asp
- http://wp.netscape.com/eng/mozilla/3.0/handbook/javascript/

addEventListener
----------------

- http://www.mozilla.org/docs/dom/domref/dom_el_ref31.html#1028304
  ``addEventListener`` allows the registration of event listeners on the event
  target.

open
----

The open method opens a stream to collect the output of ``write`` or
``writeln`` methods.  If the ``mimeType`` is text or image, the stream is
opened to layout; otherwise, the stream is opened to a plug-in.

If a document exists in the target window, the open method clears it.

``mimeType`` is an *optional* argument that specifies the type of document to
which you are writing. If you do not specify a mimeType, text/html is the
default.

The ``replace`` keyword causes the new document to reuse the history entry
that the previous document used.

::

  function windowWriter2() {
     var myString = "Hello, world!"
     msgWindow.document.open("text/html", "replace")
     msgWindow.document.write("<P>" + myString)
     msgWindow.document.write("<P>history.length is " + msgWindow.history.length)
     msgWindow.document.close()
  }

write
-----

Writes one or more HTML expressions to a document in the specified window.

The HTML parser reads the generated code as it is being written, so you might
have to escape some characters.

::

  window2=window.open('','window2')
  beginComment="\<!--"
  endComment="--\>"
  window2.document.write(beginComment)
  window2.document.write(" This some text inside a comment. ")
  window2.document.write(endComment)

close
=====

The close method closes a stream opened with the ``document.open()`` method.
If the stream was opened to layout, the close method forces the content of the
stream to display.


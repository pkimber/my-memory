Development
***********

See :doc:`setup`


Debug
=====

http://wiki.fckeditor.net/Developer%27s_Guide/Customization/Debugging

To enable it just set the following key in your configuration file:

::

  FCKConfig.Debug = true;


Editor Instance
===============

From http://wiki.fckeditor.net/Developer%27s_Guide/Javascript_API.

Once loaded, the editor registers a global object called ``FCKeditorAPI``.
This object offers the entry point to interact with any editor instance placed
in a page (you can have more than one). When placing the editor in the page,
you give it a "instance name". So, to retrieve it, you must simply call the
``FCKeditorAPI.GetInstance method``. For example:

::

  var oEditor = FCKeditorAPI.GetInstance('InstanceName') ;

DOM
---

To refer to the actual DOM document in the editor (this works in *our* fork of
the editor):

::

  FCK.EditorDocument

Events
======

From http://wiki.fckeditor.net/Developer%27s_Guide/Javascript_API.

Once the editor loading is complete and it is ready to use (and interact with
JavaScript), a standard function is called in the page that contains the
editor, if the function is defined. This function must be named
"FCKeditor_OnComplete" and receives the related editor instance as the
parameter. Using it, you can execute any initial code that makes the initial
interaction with the editor. This is a declaration example:

::

  function FCKeditor_OnComplete( editorInstance )
  {
      alert( editorInstance.Name ) ;
  }

Apart the above standard event, every FCKeditor instance has a "Event" object
that can be used to listen for events to be fired. For example, the following
code listens for the "OnSelectionChange" to execute custom code:

::

  var counter = 0 ;

  function DoSomething( editorInstance )
  {
          window.document.title = editorInstance.Name + ' : ' + ( ++counter ) ;
  }

  function FCKeditor_OnComplete( editorInstance )
  {
      editorInstance.Events.AttachEvent( 'OnSelectionChange', DoSomething ) ;
  }

Note that every callback function receives the editor instance as a parameter.

The following is the list of events available:

- OnSelectionChange

  Fired when the actual selection in the editor area changes (by selection I
  mean the cursor position too... it changes on key strokes). Note: In IE6,
  this event does not fire on every keystroke, but only on some random
  keystrokes. Handy!

- OnAfterSetHTML

  Fired once the HTML is loaded in the editor (including when changing views).

- OnStatusChange

  Fired when the editor status changes. The following constants are also
  available globally in the page:
  ``FCK_STATUS_NOTLOADED``, ``FCK_STATUS_ACTIVE`` and ``FCK_STATUS_COMPLETE``.

- OnPaste

  Fired when something is pasted in the editor


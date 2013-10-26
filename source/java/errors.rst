Errors
******

Error message:
==============

::

  lia/handlingtypes/framework/ExtensionFileHandler (Unsupported major.minor version 49.0)

From http://forum.java.sun.com/thread.jspa?threadID=562771&messageID=2771494

::

  This is the error; the important part is "(Unsupported major.minor version 49.0)".*
  Each Java version has an internal major.minor version.. Version 49.0 is Java 1.5 (aka Java 5).*
  
  Something in your computer isn't happy with Java 1.5.*
  Are you using an IDE that hasn't been updated to 1.5?*
  Or you may have some parts of an older Java version that's getting executed. Or ...*
  
  Eliminate other programs one at at time, you should find it.*

There were some very old ``.class`` files on the classpath which were probably
compiled with 1.5.  Removed them and the 49.0 error went away!

Linux
=====

The error is:

::

  java.lang.InternalError:  Can't connect to X11 window server using ':0.0' as the value of the DISPLAY variable.

...in:

::

  javax.swing.text.DefaultStyledDocument

This is because the java class function:

::

  sun.awt.X11GraphicsEnvironment.initDisplay(Native Method)

...wants access to a running X display.

See the following for more information:

- http://www.theserverside.com/common/printthread.tss?thread_id=24387
- http://www.jguru.com/faq/view.jsp?EID=222296
- http://www.jguru.com/faq/view.jsp?EID=458902

To solve the error:

::

  System.setProperty("java.awt.headless", "true");

Error Details
=============

::

  Test: testSearchIteratorRTFRecurse
  Class: com.mycompany.lucene.DocumentCollectionTest
  Type: java.lang.InternalError
  Message: Can't connect to X11 window server using ':0.0' as the value of the DISPLAY variable.

  java.lang.InternalError: Can't connect to X11 window server using ':0.0' as the value of the DISPLAY variable.
  	at sun.awt.X11GraphicsEnvironment.initDisplay(Native Method)
  	at sun.awt.X11GraphicsEnvironment.<clinit>(X11GraphicsEnvironment.java:134)
  	at java.lang.Class.forName0(Native Method)
  	at java.lang.Class.forName(Class.java:141)
  	at java.awt.GraphicsEnvironment.getLocalGraphicsEnvironment(GraphicsEnvironment.java:62)
  	at sun.awt.motif.MToolkit.<clinit>(MToolkit.java:81)
  	at java.lang.Class.forName0(Native Method)
  	at java.lang.Class.forName(Class.java:141)
  	at java.awt.Toolkit$2.run(Toolkit.java:748)
  	at java.security.AccessController.doPrivileged(Native Method)
  	at java.awt.Toolkit.getDefaultToolkit(Toolkit.java:739)
  	at java.awt.Toolkit.getEventQueue(Toolkit.java:1519)
  	at java.awt.EventQueue.isDispatchThread(EventQueue.java:651)
  	at javax.swing.SwingUtilities.isEventDispatchThread(SwingUtilities.java:1238)
  	at javax.swing.text.StyleContext.reclaim(StyleContext.java:419)
  	at javax.swing.text.StyleContext.addAttribute(StyleContext.java:276)
  	at javax.swing.text.StyleContext$NamedStyle.addAttribute(StyleContext.java:1468)
  	at javax.swing.text.StyleContext$NamedStyle.setName(StyleContext.java:1278)
  	at javax.swing.text.StyleContext$NamedStyle.<init>(StyleContext.java:1226)
  	at javax.swing.text.StyleContext.addStyle(StyleContext.java:88)
  	at javax.swing.text.StyleContext.<init>(StyleContext.java:68)
  	at javax.swing.text.DefaultStyledDocument.<init>(DefaultStyledDocument.java:88)
  	at lia.handlingtypes.rtf.JavaBuiltInRTFHandler.getDocument(JavaBuiltInRTFHandler.java:37)
  	at lia.handlingtypes.framework.ExtensionFileHandler.getDocument(ExtensionFileHandler.java:56)
  	at com.mycompany.lucene.IndexUpdate.indexDocument(IndexUpdate.java:235)
  	at com.mycompany.lucene.IndexUpdate.indexFolder(IndexUpdate.java:206)
  	at com.mycompany.lucene.IndexUpdate.indexFolder(IndexUpdate.java:202)
  	at com.mycompany.lucene.IndexUpdate.update(IndexUpdate.java:128)
  	at com.mycompany.lucene.ColdFusionDocumentCollection.update(ColdFusionDocumentCollection.java:388)
  	at com.mycompany.lucene.DocumentCollectionTest.updateDocumentPath(DocumentCollectionTest.java:498)
  	at com.mycompany.lucene.DocumentCollectionTest.searchIterator(DocumentCollectionTest.java:439)
  	at com.mycompany.lucene.DocumentCollectionTest.testSearchIteratorRTFRecurse(DocumentCollectionTest.java:369)
  	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
  	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
  	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)


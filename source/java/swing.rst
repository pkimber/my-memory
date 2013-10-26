Swing
*****

Links
=====

- Netbeans - Mattise, :doc:`../netbeans/mattise`
- `Improve Application Performance With SwingWorker in Java SE 6`_
- `JSR296 Swing Application Framework`_
- `Swing Explorer is a tool for Swing developers`_.
  It is intended for visual exploring of Swing-based application internals. It
  finds all windows in explored Swing application and displays their component
  hierarchies as a tree.
- WJB-275A: Java programming Language Course, Building Java GUIs,
  :doc:`./learning/wjb-275a`.

Components
----------

- `JDesktop Integration Components`_
- `Swing component that provides the breadcrumb bar functionality`_.

Button
======

To set the default button for a frame:

::

  public class Query extends javax.swing.JFrame {
      public Query() {
          initComponents();
          getRootPane().setDefaultButton(buttonOk);
      }

Exit
====

::

  private void buttonCancelActionPerformed(java.awt.event.ActionEvent evt) {
      System.exit(0);
  }

Layout
======

http://www.miglayout.com/

Look and Feel
=============

`How to Set the Look and Feel`_

::

  public static void main(String args[]) throws ClassNotFoundException, InstantiationException, IllegalAccessException, UnsupportedLookAndFeelException {
      UIManager.setLookAndFeel(
              UIManager.getSystemLookAndFeelClassName());
      ...

main
====

Here is the correct way to instantiate your application's UI:

::

  public class MainFrame extends javax.swing.JFrame {

      public static void main(String[] args) {
          SwingUtilities.invokeLater(new Runnable() {
              public void run() {
                  new MainFrame().setVisible(true);
              }
          });
      }
  }

Issues
======

``javax.swing.text.rtf.RTFEditorKit`` - ``UnsatisfiedLinkError``
----------------------------------------------------------------

When using the RTFEditorKit on Debian Linux:

::

  java.lang.UnsatisfiedLinkError:
      /usr/local/bin/j2sdk1.4.2_16/jre/lib/i386/libawt.so: libXp.so.6:
      cannot open shared object file: No such file or directory

To solve the issue (on Debian Linux):

::

  apt-get install libxp6
  apt-get install libxt6
  apt-get install libxtst6


.. _`Improve Application Performance With SwingWorker in Java SE 6`: http://java.sun.com/developer/technicalArticles/javase/swingworker/
.. _`JSR296 Swing Application Framework`: http://www.symphonious.net/2007/05/10/jsr296-swing-application-framework/
.. _`Swing Explorer is a tool for Swing developers`: https://swingexplorer.dev.java.net/
.. _`JDesktop Integration Components`: https://jdic.dev.java.net/
.. _`Swing component that provides the breadcrumb bar functionality`: https://flamingo.dev.java.net/docs/breadcrumb-bar.html
.. _`How to Set the Look and Feel`: http://java.sun.com/docs/books/tutorial/uiswing/lookandfeel/plaf.html


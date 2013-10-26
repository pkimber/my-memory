PyDev - Eclipse
***************

- `PyDev - Manual`_

Install
=======

To install Pydev and Pydev Extensions from the Eclipse Update Manager,
*Help*, *Software Update*, *Find and Install...*,
*Search for new features to install*, *New Remote Site*,

=================  ============================================
**Name**           **URL**
=================  ============================================
Pydev Extensions   http://www.fabioz.com/pydev/updates
=================  ============================================

Checking the installation
=========================

You can verify if it is correctly installed going to the menu *help*, *about*,
*plug in details* and checking if there are at least 5 plugins with the
plug-in Id starting with ``com.python.pydev`` and at least other 5 starting
with ``org.python.pydev`` (and check if they have the version you got).

Configuring
===========

After installing it, the first thing you must do is configure the python
and/or jython interpreter. To configure the interpreter:

- Go to: *window*, *preferences*, *pydev*, *Interpreter - Jython/Python*.
- Choose the interpreter you have installed in your computer
  (such as ``python.exe`` or ``jython.jar``).
- Select the paths that will be in your System ``PYTHONPATH``.
  It's important to select only those folders that will **not** be used as the
  root for some project of yours.

Project
-------

After creating the project...

The first thing to know about PyDev is that to use it to its *full extent*,
you must have your python modules beneath a **source folder** (the source
folders are the paths that are added to your ``PYTHONPATH``).  You can add a
new source folder in the menu: *File*, *new*, *other*, *pydev* source folder.

What if I add something new in my System PYTHONPATH after configuring it?
-------------------------------------------------------------------------

Well, if you add something to your python installation (anything that goes under
the ``site-packages``), you need to either add it manually as a *New Folder* in
the System ``PYTHONPATH`` or (**recommended**) remove your interpreter, press
apply so that it clears its cache and re-add the python interpreter.


.. _`PyDev - Manual`: http://www.fabioz.com/pydev/manual.html


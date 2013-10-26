python
******

Install
=======

Install the plugin from: http://pydev.org/updates

Configure
=========

Set the ``PYTHONPATH``

*Window*, *Preferences*, *Pydev*, *Interpreter - Python*, *New*.

I created an entry *Python 2.5* pointing at:

::

  C:\tools\Python25\python.exe

Note: To find the location of the python you are using on Linux, type
``which python``.

See http://pydev.sourceforge.net/faq.html

Project
=======

Create
------

To create a new *Pydev* project:

- Un-tick *Use default* and select a *Directory* at least one level below your
  python project.
- Un-tick *Create default 'src' folder and add it to the pythonpath*.

Configure
---------

- In the navigator, right click on the project root and choose *Properties*.

  In *PyDev PYTHONPATH*, you have to set your source folders (where your
  sources are within the project).

- You can also add other items to the ``PYTHONPATH``, by selecting the
  *External Libraries* tab.  This is for folders that are not within your
  eclipse environment).
- Also in the project properties, you can choose the *Project References*,
  so that your current projects gets those projects configurations
  in the ``PYTHONPATH``.


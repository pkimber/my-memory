Calling into Java classes
*************************

BeanUtils
=========

- `Jython Bean Scripting (BSF) Example`_:
- sample-jython-bean-scripting_

Console
=======

::

  \tools\jython2.2\jython.bat
  >>> import java.util.Date
  >>> d = java.util.Date()
  >>> d
  Mon Sep 17 15:57:38 BST 2007

Copy ``commons-lang-2.3.jar`` to ``/temp``:

::

  set CLASSPATH=/temp/commons-lang-2.3.jar
  \tools\jython2.2\jython.bat
  >>> import java.util.Date
  >>> d = java.util.Date()
  >>> d2 = java.util.Date()
  >>> import org.apache.commons.lang.time.DateUtils
  >>> org.apache.commons.lang.time.DateUtils.isSameDay(d, d2)
  1

...or, to make the code a little bit cleaner:

::

  >>> from java.util import Date
  >>> d = Date()
  >>> d2 = Date()
  1
  >>> from org.apache.commons.lang.time import DateUtils
  >>> DateUtils.isSameDay(d, d2)
  1
  >>> d2 = DateUtils.addDays(d2, 1)
  >>> DateUtils.isSameDay(d, d2)
  0


.. _`Jython Bean Scripting (BSF) Example`: http://www.fishandcross.com/blog/?p=337
.. _sample-jython-bean-scripting: http://toybox/hg/sample/file/tip/jython/sample-jython-bean-scripting


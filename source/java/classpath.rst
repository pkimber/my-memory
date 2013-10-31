ClassPath
*********

Links
=====

- `Mastering the Java CLASSPATH`_
- create-bat.py_ will create a suitable batch file from a Maven 2 project.

Notes
=====

**Understanding the class path and package names**

Java classes are organized into packages which are mapped to directories in the
file system. But, unlike the file system, whenever you specify a package name,
you specify the whole package name -- never part of it. For example, the
package name for ``java.awt.Button`` is always specified as ``java.awt``.

For example, suppose you want the Java runtime to find a class named
``Cool.class`` in the package ``utility.myapp``.

If the path to that directory is::

  C:\java\MyClasses\utility\myapp

you would set the class path so that it contains::

  C:\java\MyClasses

To run that app, you could use the following JVM command::

  C:> java -classpath C:\java\MyClasses utility.myapp.Cool

When the app runs, the JVM uses the class path settings to find any other
classes defined in the ``utility.myapp`` package that are used by the ``Cool``
class.

Note that the entire package name is specified in the command.  It is not
possible, for example, to set the class path so it contains
``C:\java\MyClasses\utility`` and use the command ``java myapp.Cool``.

The class would not be found.

See: https://java.sun.com/docs/books/tutorial/getStarted/cupojava/win32.html

Sun Java 1.6
============

Class path entries can contain the basename wildcard character ``*``, which is
considered equivalent to specifying a list of all the files in the directory
with the extension ``.jar`` or ``.JAR``:

- `Understanding class path wildcards`_
- A class path entry that contains ``*`` will not match class files.
- For example, the class path entry ``foo/*`` specifies all JAR files in the
  directory named ``foo``.
- `Class-Path Wildcards in Mustang`_...
  Linux - *Note that you must quote the asterisk in order to prevent it from
  being interpreted by your shell*...

::

  java -classpath "*" com.sample.Search c:\temp\

Error Explanation
=================

::

  Exception in thread "main" java.lang.NoClassDefFoundError: HelloWorldApp

If you receive this error, java cannot find your bytecode file,
``HelloWorldApp.class``.

One of the places java tries to find your bytecode file is your current
directory. So, if your bytecode file is in ``C:\java``, you should change your
current directory to that. To change your directory, type the following command
at the prompt and press Enter::

  cd c:\java

The prompt should change to ``C:\java``. If you enter ``dir`` at the prompt,
you should see your ``.java`` and ``.class`` files.  Now enter
``java HelloWorldApp`` again.

If you still have problems, you might have to change your ``CLASSPATH``
variable. To see if this is necessary, try "clobbering" the classpath with the
following command::

  set CLASSPATH=

Now enter ``java HelloWorldApp`` again. If the program works now, you'll have
to change your ``CLASSPATH`` variable. For more information, consult the
section 5. Update the ``PATH`` variable (outside of the tutorial) in the
installation instructions.

Example, Trying to run ``lia.analysis.AnalyzerDemo`` in::

  C:\Tools\LuceneInAction\build\classes\lia\analysis

Did not work because I was not including the current folder in the classpath.
This is the working command line::

  java -cp c:\tools\lucene-1.4.3\lucene-1.4.3.jar;. lia.analysis.AnalyzerDemo

Ran from::

  c:\Tools\LuceneInAction\build\classes\

Printing
========

`How to print classpath`_

::

  import java.net.URL;
  import java.net.URLClassLoader;

  public class PrintClasspath {
      public static void main(String[] args) {

          //Get the System Classloader
          ClassLoader sysClassLoader = ClassLoader.getSystemClassLoader();

          //Get the URLs
          URL[] urls = ((URLClassLoader)sysClassLoader).getURLs();

          for(int i=0; i< urls.length; i++)
          {
              System.out.println(urls[i].getFile());
          }

      }
  }


.. _`Class-Path Wildcards in Mustang`: http://blogs.sun.com/mr/entry/class_path_wildcards_in_mustang
.. _`How to print classpath`: http://www.java-tips.org/java-se-tips/java.lang/how-to-print-classpath.html
.. _`Mastering the Java CLASSPATH`: http://www.kevinboone.com/classpath.html
.. _`Understanding class path wildcards`: http://java.sun.com/javase/6/docs/technotes/tools/windows/classpath.html
.. _create-bat.py: http://g1/svn/home/patrick/tools/utility/create-bat.py

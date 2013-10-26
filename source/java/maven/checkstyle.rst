Checkstyle
**********

Running the Maven goal:

::

  maven checkstyle

Produces an XML and a text report:

::

  target\checkstyle-raw-report.xml
  target\checkstyle-raw-report.txt

To specify a specific checkstyle configuration:

- Set-up a specific checkstyle configuration (in this example
  ``checkstyle/my-chkstyle.xml``)
- To reference a URL, add the following to ``project.properties``:

  ::

    maven.checkstyle.propertiesURL=http://g1/svn/coding%20standards/checkstyle/my-chkstyle.xml
    or, to reference a file, add the following to ``project.properties``:

  ::

    maven.checkstyle.properties=checkstyle/my-chkstyle.xml

- From the Maven Users List,
  `How to share a common checkstyle config across modules?`_


.. _`How to share a common checkstyle config across modules?`: http://www.nabble.com/Need-a-quick-response-concerning-the-M2-war-plugin-%28Code-cut-off-is-today%29-tf3772323.html#a10669025


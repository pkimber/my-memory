Resource in JAR
***************

From email dated 18/11/2005 `[m2] where to put test data`_

*it may be a little hacky, but what I've used is*:

::

  ClassLoader loader = getClass().getClassLoader();
  String resourceName = "/path/to/test.xslt";
  URL resource = loader.getResource(resourceName);

  File testFile;
  if (resource != null) {
      testFile = new File(resource.getPath());
  } else {
      throw new SomethingException(..);
  }

From email dated 05/06/2006 `Referencing Files from a Unit Test`_

*I think this is what you're looking for*:

`Re: Referencing .properties files in the CLASSPATH in test`_

::

  this.getClass().getClassLoader().getResourceAsStream(...

Notes
=====

I think path separators when getting resources from the classpath must be a
forward slash.


.. _`[m2] where to put test data`: http://www.nabble.com/-m2-where-to-put-test-data-t571120.html
.. _`Referencing Files from a Unit Test`: http://www.nabble.com/Referencing-Files-from-a-Unit-Test-t1737229.html
.. _`Re: Referencing .properties files in the CLASSPATH in test`: http://marc.theaimsgroup.com/?l=turbine-maven-user&m=114917325827653&w=2


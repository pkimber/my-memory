Properties
**********

Managed Property
================

In the ``faces-config.xml`` file, add a ``managed-property`` to the
``managed-bean``:

::

  <managed-bean>
    <managed-bean-name>SearchBacking</managed-bean-name>
    <managed-bean-class>uk.co.pkopen.backing.SearchBacking</managed-bean-class>
    <managed-bean-scope>session</managed-bean-scope>
    <managed-property>
      <property-name>testProperty</property-name>
      <value>This is the location...</value>
    </managed-property>
  </managed-bean>

Add a ``setter`` and ``getter`` to the managed bean:

::

  public final class SearchBacking {

      public String getTestProperty() {
          return testProperty;
      }

      public void setTestProperty(String testProperty) {
          this.testProperty = testProperty;
      }

The property will be set when the application starts up.

Properties File
===============

To open and read a properties file from within a Facelets project:

::

  import java.io.InputStream;
  import java.util.Properties;

  InputStream propertiesStream = getClass().getResourceAsStream("/my-memory.properties");
  Properties properties = new Properties();
  properties.load(propertiesStream);
  return properties.getProperty("lucene.repository");

In this example ``my-memory.properties`` is the properties file which contains
the ``lucene.repository`` key:

::

  lucene.repository=/repository/my-memory

Maven can filter the contents of a properties file,
:doc:`../maven/filter-resource-files`.


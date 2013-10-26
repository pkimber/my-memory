Getting Started
***************

The ``service.xml`` file must be in the folder ``META-INF`` in the root of the
jar:

::

  META-INF\service.xml

The service name and class/package name from ``service.xml`` must match a class
file in your project:

::

  <service name="Axis2Example1">
      <parameter name="ServiceClass" locked="xsd:false">userguide.example1.Axis2Example1</parameter>


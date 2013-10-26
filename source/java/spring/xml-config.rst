XML Config
**********

import
======

Extract of text from `3.2.2.1. Composing XML-based configuration metadata`_:

::

  <beans>
      <import resource="services.xml"/>
      <import resource="resources/messageSource.xml"/>
      <import resource="/resources/themeSource.xml"/>

      <bean id="bean1" class="..."/>
      <bean id="bean2" class="..."/>
  </beans>

In this example, external bean definitions are being loaded from 3 files,
``services.xml``, ``messageSource.xml``, and ``themeSource.xml``.  All location
paths are considered relative to the definition file doing the importing, so
``services.xml`` in this case must be in the same directory or classpath
location as the file doing the importing, while ``messageSource.xml`` and
``themeSource.xml`` must be in a resources location below the location of the
importing file.  As you can see, a leading slash is actually ignored, but given
that these are considered relative paths, it is probably better form not to use
the slash at all.  The contents of the files being imported must be valid XML
bean definition files according to the Spring Schema or DTD, including the top
level ``<beans\/>`` element.

**Note**:

- It is possible to reference files in parent directories using a relative
  ``../`` path.  However, this is not recommended because it creates a
  dependency on a file that is outside the current application.  This is in
  particular not recommended for ``classpath:`` URLs (e.g.
  ``classpath:../services.xml``) where the runtime resolution process will pick
  the "nearest" classpath root and then look into its parent directory.  This
  is fragile since classpath configuration changes may lead to a different
  directory being picked.

- You can always use fully qualified resource locations instead of relative
  paths: e.g. ``file:C:/config/services.xml`` or
  ``classpath:/config/services.xml``.  However, be aware that you are coupling
  your application's configuration to specific absolute locations then.  It is
  generally preferable to keep an indirection for such absolute locations, e.g.
  through ``${...}`` placeholders that are resolved against JVM system
  properties at runtime.

  Other interesting notes on this subject:
  `classpath*: making your Modular Spring Resources`_

  Again, as projects grow, each tier (service, dao .. ) are modularised into
  separate jars, so the respective config file(s) also move to those jars. so,
  referencing those xml files relatively will not work, because they are loaded
  by a different class loader.  So to reference across class loaders

  ::

    <import  resource="classpath:context-files/dao.xml"/>



.. _`3.2.2.1. Composing XML-based configuration metadata`: http://static.springframework.org/spring/docs/2.5.x/reference/beans.html#beans-factory-xml-import
.. _`classpath*: making your Modular Spring Resources`: http://blog.sarathonline.com/2008/10/classpath-making-your-modular-spring.html


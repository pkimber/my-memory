Site - Multi-Module
*******************

Links
=====

- Hudson - Maven Site, :doc:`hudson/maven-site`.
- `Maven 2 Site Plugin`_
- `Reporting on a Multi-Module Project with Maven 2`_

Deploy
======

To view the site generated from a multi module project using the site staging
facility:

::

  mvn clean install
  mvn site:stage -DstagingDirectory=C:\temp\site

Note:

- We have to run the ``install`` goal first to create the project artifacts
  which the site needs to build correctly.  For more information see
  http://jira.codehaus.org/browse/MNG-2979,
  Cross module dependencies for multi-module site.
- The ``site:stage`` goal is not working for me.  See the notes dated
  26/09/2008 16:41:15 below for more information.
- Note: Hudson makes site generation nice and simple.  For details, see Hudson
  - Maven Site, :doc:`hudson/maven-site`.

Setup
=====

Parent
------

- Add the following element to the ``site.xml`` file:

  ::

    <menu ref="modules" />
    <menu ref="reports" />

- Set-up the reports so they work correctly with aggregation.  Here is a sample
  reports section:

  ::

    ../../misc/howto/maven/pom-standard-reports-multi-module.xml

Module
------

- Remove the ``url`` tag from the ``pom.xml`` file.
- Create a simple ``site.xml`` file:

  ::

    <?xml version="1.0" encoding="ISO-8859-1"?>
    <project>
      <body>
        <menu ref="parent" />
        <menu ref="reports" />
      </body>
    </project>

  The other attributes should be inherited from the parent.

- Create an ``index.apt`` file in ``src/site/apt/``.  In this file add a simple
  description of the module.

Issues
======

27/04/2007 11:22
----------------

The cobertura and cross reference reports are not working in the multi-module
site.

*Cobertura*

- `Fix for datafile configuration in limited environments`_.
- `CoberturaReportMojo.java`_

*Cross Reference*

This may just be an issue when using ``site:stage``.  The JXR files are
generated correctly when you run the ``site`` goal.

- `M2 site:stage does not copy apidocs and xref`_?
- `[M2] No xref report when executing site:stage`_?

02/09/2008 17:10:46
-------------------

::

  [WARNING] DEPRECATED [aggregate]: As of version 2.5, use the goals
  <code>javadoc:aggregate</code> and <code>javadoc:test-aggregate</code> instead.

26/09/2008 16:41:15
-------------------

The ``site:stage`` goal is really not working for me.

I tried ``site site:deploy`` with a simple file in the
``distributionManagement`` section of the ``pom.xml`` file:

::

  <distributionManagement>
    <site>
      <id>website</id>
      <url>file:///home/patrick/temp/site/</url>
    </site>
  </distributionManagement>

...the links from the parent ``index.html`` file are now pointing correctly to
the modules.

08/10/2009 06:23:30
-------------------

I was getting problems building the Maven site on our Hudson multi-module
project.  Looks like this person had the same issues, but has found a solution:

- `Wierdness with Maven's site-deploy and Hudson`_
- `M2 Extra Steps Plugin`_


.. _`Maven 2 Site Plugin`: http://maven.apache.org/plugins/maven-site-plugin/howto.html
.. _`Reporting on a Multi-Module Project with Maven 2`: http://blog.xebia.com/2007/01/16/reporting-on-a-multi-module-project-with-maven2/
.. _`Fix for datafile configuration in limited environments`: https://sourceforge.net/tracker/index.php?func=detail&aid=1543280&group_id=130558&atid=720017
.. _`CoberturaReportMojo.java`: http://mojo.codehaus.org/cobertura-maven-plugin/xref/org/codehaus/mojo/cobertura/CoberturaReportMojo.html
.. _`M2 site:stage does not copy apidocs and xref`: http://www.nabble.com/M2-site%3Astage-does-not-copy-apidocs-and-xref--tf2122285s177.html#a5854076
.. _`[M2] No xref report when executing site:stage`: http://www.nabble.com/-M2--No-xref-report-when-executing-site%3Astage--tf3180815s177.html#a8826676
.. _`Wierdness with Maven's site-deploy and Hudson`: http://twofourone.blogspot.com/2009/09/wierdness-with-mavens-site-deploy-and.html
.. _`M2 Extra Steps Plugin`: http://wiki.hudson-ci.org/display/HUDSON/M2+Extra+Steps+Plugin


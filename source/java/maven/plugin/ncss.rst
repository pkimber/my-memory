NCSS
****

Links
=====

javancss-maven-plugin_

Sample
======

::

  <reporting>
    <plugins>
      <plugin>
        <groupId>org.codehaus.mojo</groupId>
        <artifactId>javancss-maven-plugin</artifactId>
        <version>2.0-beta-2</version>
      </plugin>

Issues
======

`JavaNCSS may not fully support 1.5 annotations`_

::

  [INFO] Generating "JavaNCSS Report" report.
  ParseException in C:\projects\src\main\java\uk\co\plugin\image\CAPTCHAImage.java
  Last useful checkpoint: "uk.co.plugin.image.CAPTCHAImage.main(String[])"
  Encountered "@ SuppressWarnings ( \"unused\" ) String text =" at line 210, column 25.
  Was expecting one of:
      "assert" ...
      "boolean" ...



.. _javancss-maven-plugin: http://mojo.codehaus.org/javancss-maven-plugin/usage.html
.. _`JavaNCSS may not fully support 1.5 annotations`: http://jira.codehaus.org/browse/MJNCSS-4


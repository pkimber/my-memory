PMD
***

Links
=====

maven-pmd-plugin_

Sample
======

::

  <reporting>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-pmd-plugin</artifactId>
        <configuration>
          <targetJdk>1.5</targetJdk>
          <xrefLocation>${project.reporting.outputDirectory}/../xref</xrefLocation>
        </configuration>
      </plugin>
  </reporting>


.. _maven-pmd-plugin: http://maven.apache.org/plugins/maven-pmd-plugin/


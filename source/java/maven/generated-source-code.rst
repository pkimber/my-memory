Generated Source Code
*********************

Links
=====

`generated test sources`_

::

  <sourceRoot>
    ${project.build.directory}/generated-sources/main/java
  </sourceRoot>
  <testSourceRoot>
    ${project.build.directory}/generated-sources/test/java
  </testSourceRoot>

`Second source directory for generated code`_.

*You can put your generated files in:*

::

  target/generates/sub-dir

`Maven 1 - Generated Source Code`_

Notes
=====

I cannot find a definitive answer to this question... but for now I will go
with:

::

  ${project.build.directory}/generated-sources/


.. _`generated test sources`: http://www.nabble.com/generated-test-sources-tf1650204s177.html#a4551957
.. _`Second source directory for generated code`: http://www.nabble.com/Second-source-directory-for-generated-code-tf2317584s177.html#a6446457
.. _`Maven 1 - Generated Source Code`: http://maven.apache.org/maven-1.x/plugins/eclipse/


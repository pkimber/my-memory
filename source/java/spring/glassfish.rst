GlassFish
*********

Links
=====

`Sample Application using JSF, Spring 2.0, and Java Persistence APIs`_

Sample
------

sample-spring-on-glassfish_

Download
========

- ``spring-framework-2.0.6-with-dependencies.zip`` from
  http://www.springframework.org/download
- ``SpringJPA.zip`` from
  http://techdayscode.dev.java.net/servlets/ProjectDocumentList?folderID=7555

Setup
=====

- Install GlassFish, :doc:`../glassfish/install`.
- Unzip the Spring download and from this copy:

  - ``dist/spring.jar``
  - ``lib/jakarta-commons/commons-logging.jar``
  - ``lib/log4j/log4j-1.2.14.jar``

  ...to your glassfish installation lib directory, ``glassfish/lib``.

- Open Netbeans

  - In the *Tools* menu, select *Library Manager*...
  - Add a new Library, call it ``Spring``.
  - Add the 3 Jars you  copied to ``glassfish/lib``

- Extract ``SpringJPA.zip`` to a folder.  I extracted to:

  ::

    C:\src\SpringJPA\

- Open the project in Netbeans.

  - Resolve the missing project, ``SpringJPA-war``.  This can be found in the
    ``SpringJPA`` project folder: ``SpringJPA/SpringJPA-war``.
  - Resolve the missing server.  You might need to add the GlassFish server
    you just installed.

- Run the project in Netbeans.


.. _`Sample Application using JSF, Spring 2.0, and Java Persistence APIs`: http://weblogs.java.net/blog/caroljmcdonald/archive/2007/06/sample_applicat.html
.. _sample-spring-on-glassfish: http://toybox/hg/sample/file/tip/java/sample-spring-on-glassfish


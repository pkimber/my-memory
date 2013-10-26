Getting Started
***************

Sample
======

For sample code check out the project: sample-facelets_

There are further notes in the site documents - and see notes on components,
:doc:`components`.

Links
=====

- https://facelets.dev.java.net/
- O'Reilly - Short Cuts - Facelets:

  ::

    ../../misc/howto/jsf/0596529244.pdf

- `JBoss Seam`_
- `Facelets Tag Completion in Eclipse`_
- `Introducing Facelets`_

Maven Dependencies
==================

::

  <repositories>
    <repository>
      <id>dev.java.net</id>
      <name>dev.java.net-repo</name>
      <url>https://maven-repository.dev.java.net/repository/</url>
      <layout>legacy</layout>
    </repository>
    <repository>
      <id>maven2-repository.dev.java.net</id>
      <name>Java.net Repository for Maven</name>
      <url>https://maven2-repository.dev.java.net/nonav/repository</url>
      <layout>default</layout>
    </repository>
  </repositories>

Issues
======

Tomcat: could not find Factory
------------------------------

::

  root cause
  java.lang.IllegalStateException:
      Application was not properly initialized at startup,
      could not find Factory: javax.faces.context.FacesContextFactory

`It seems to be a listener issue`_.  *Listener is possibly configured in a*
``tld`` *inside* ``jsf-impl.jar`` *and Tomcat 5.5.20 can't extract that info.
Configuring the listener inside* ``web.xml`` *should solve it*.

*This equates to adding the following web.xml to workaround this problem*:

::

  <listener>
    <listener-class>
      com.sun.faces.config.ConfigureListener
    </listener-class>
  </listener>

  <!-- Listener implementation to handle web application lifecycle events -->
  <listener>
    <listener-class>
      com.sun.faces.application.WebappLifecycleListener
    </listener-class>
  </listener>



.. _sample-facelets: http://toybox/hg/sample/file/tip/java/sample-facelets
.. _`JBoss Seam`: http://jboss.com/products/seam
.. _`Facelets Tag Completion in Eclipse`: http://www.mojavelinux.com/blog/archives/2006/12/facelets_tag_completion_in_eclipse/
.. _`Introducing Facelets`: http://www.jroller.com/holy/entry/introducing_facelets
.. _`It seems to be a listener issue`: http://www.thearcmind.com/confluence/display/SHJFT/Getting+started+with+JSF,+Facelets,+Eclipse+WTP+and+Tomcat


Issues
******

method does not override a method from its superclass
=====================================================

I am having a problem building our code in Java 1.5. Apparently (see the links
below), in Java 1.6 the ``@Override`` annotation can also be applied to methods
that are implemented from an interface:

- http://forums.sun.com/thread.jspa?threadID=5342291
- http://www.filsa.net/2008/02/11/maven-and-the-method-does-not-override-a-method-from-its-superclass-error/

For examples of code which won't compile in Java 1.5 please see:

::

  framework\admin\admin_clients\src\main\java\uk\co\mycompany\adminclients\dao\mapper\UserMapper.java
  framework\admin\admin_framework_v2\src\main\java\uk\co\mycompany\admin\dao\ToolTipDaoImpl.java

I really need to get the code compiling... so I think we have to make a choice:

- Install Java 1.6 to all our servers.
- Remove the @Override annotations where they are not compatible with Java 1.5


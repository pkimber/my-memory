Problems
********

Issues with the wrong jdk being used by ant:
Running ant with the ``-diagnostics`` flag allows us to see more information.

In my case (an error I have not yet managed to solve):

::

  java.home : C:\Tools\jre1.5.0_03

is conflicting with:

::

  JAVA_HOME=C:\Tools\j2sdk1.4.2_08


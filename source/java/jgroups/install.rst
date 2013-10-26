Install
*******

::

  C:\Tools\j2sdk1.4.2_08\jre\lib\jce.jar

Removed 3 missing classpath entries from the "Java Build Path".

Testing your Setup
==================

Create a new "Run" configuration.  Main class: ``org.jgroups.Version``

I get the correct response so all is ok (note: the documentation says to call
``java org.javagroups.Version``)

Next I ran ``org.jgroups.demos.Draw``.  This works perfectly with multiple
instances on one workstation as well as across the network.  Used the following
command line:

::

  java -cp C:\Tools\JGroups-2.2.8\lib\commons-logging.jar;C:\Tools\JGroups-2.2.8\lib\concurrent.jar;. org.jgroups.demos.Draw


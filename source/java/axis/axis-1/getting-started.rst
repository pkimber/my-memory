Getting Started
***************

When it comes to deploying your web service.  The following command worked for
me:

::

  java -cp \Tools\axis-1_2_1\lib\axis.jar;\Tools\axis-1_2_1\lib\commons-discovery-0.2.jar;\Tools\axis-1_2_1\lib\commons-logging-1.0.4.jar;\Tools\axis-1_2_1\lib\jaxrpc.jar;\Tools\axis-1_2_1\lib\saaj.jar;\Tools\axis-1_2_1\lib\log4j-1.2.8.jar org.apache.axis.client.AdminClient -lhttp://localhost:8080/axis/services/AdminService deploy.wsdd

The following command tests the web service (need to run this from a place
where the class can be seen:

::

  java -cp .;\Tools\axis-1_2_1\lib\axis.jar;\Tools\axis-1_2_1\lib\commons-discovery-0.2.jar;\Tools\axis-1_2_1\lib\commons-logging-1.0.4.jar;\Tools\axis-1_2_1\lib\jaxrpc.jar;\Tools\axis-1_2_1\lib\saaj.jar;\Tools\axis-1_2_1\lib\log4j-1.2.8.jar com.mycompany.test.axis1.Axis1Test1 -lhttp://localhost:8080/axis/servlet/AxisServlet


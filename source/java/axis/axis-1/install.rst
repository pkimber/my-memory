Install
*******

Download and extract:

::

  axis-bin-1_2_1.zip

I copied it to:

::

  C:\Tools\axis-1_2_1

Copy the folder:

::

  C:\Tools\axis-1_2_1\webapps\axis\

to:

::

  C:\Tools\Tomcat 5.5\webapps

So that the Tomcat folder structure looks like this:

::

  C:\Tools\Tomcat 5.5\webapps\axis\WEB-INF\classes\

Download:

::

  activation.jar

from:

http://java.sun.com/products/javabeans/glasgow/jaf.html

unzip archive and copy ``activation.jar`` to:

::

  C:\Tools\Tomcat 5.5\webapps\axis\WEB-INF\lib

Restart Tomcat... and test by loading this page:

http://localhost:8080/axis/happyaxis.jsp

The following url's will run a web service on the server:

- http://localhost:8080/axis/services/Version?method=getVersion
- http://localhost:8080/axis/EchoHeaders.jws?method=list


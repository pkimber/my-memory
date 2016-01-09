Activiti
********

From `Getting started with the new Activiti 6 UI`_

Install
=======

:doc:`../../tomcat/install-linux`

Download Activiti from http://activiti.org/download.html.
I downloaded `activiti-6.0.0.Beta2.zip`_

Extract the zip file.

Copy the ``war`` file to Tomcat e.g::

  cp activiti-6.0.0.Beta2/wars/activiti-app.war /var/lib/tomcat7/webapps/

Change the database settings::

  vim /var/lib/tomcat7/webapps/activiti-app/WEB-INF/classes/META-INF/activiti-app/activiti-app.properties

Replace the MySQL settings with::

  # H2
  datasource.driver=org.h2.Driver
  datasource.url=jdbc:h2:mem:activiti
  datasource.username=sa
  datasource.password=
  hibernate.dialect=org.hibernate.dialect.H2Dialect

Re-start Tomcat::

  service tomcat7 restart

Browse to http://localhost:8080/activiti-app/

Login::

  user          admin@app.activiti.com
  pass          test


.. _`activiti-6.0.0.Beta2.zip`: https://github.com/Activiti/Activiti/releases/download/activiti-6.0.0.Beta2/activiti-6.0.0.Beta2.zip
.. _`Getting started with the new Activiti 6 UI`: http://bpmn20inaction.blogspot.co.uk/2015/09/getting-started-with-new-activiti-6-ui.html

Work in Progress
****************

email

  Perhaps we could use https://mailinabox.email/ on the server.

Tip - To remove the stack trace from the log file::

  grep '^[2c]" catalina.out

Tip - in the rhino javascript engine you can use ``logger.log`` to log errors
in much the same way as ``console.log`` in the browser.  It does not seem to be
writing output anywhere so I googled enabling logging and have put a
``log4j.properties`` file in the alfresco webapp
(``webapps/alfresco/WEB-INF/lib/log4j.properties``) and just tried uploading a
file to see if it made a difference.

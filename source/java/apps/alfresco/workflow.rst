Workflow
********

We installed `Activiti Designer`_ (the Eclipse plugin) and exported an invoice
workflow and it created the following folders (and files)::

  ├── extension
  │   ├── invoice.bpmn20.xml
  │   ├── invoice-context.xml
  │   └── invoice-model.xml
  └── web-extension
      ├── invoice-config-custom.xml
      └── invoice-share-context.xml

I copied these to our Alfresco server to the matching folders i.e::

  /opt/alfresco-5.0.d/tomcat/shared/classes/alfresco/extension/
  /opt/alfresco-5.0.d/tomcat/shared/classes/alfresco/web-extension/

We logged into Eclipse as an administrator, clicked on *Tasks*, *My Tasks*,
*Start Workflow* and selected our task.


.. _`Activiti Designer`: http://docs.alfresco.com/4.0/topics/wf-activiti-designer-setup.html

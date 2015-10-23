Alfresco
********

https://www.alfresco.com/

Download the Community Edition from:
https://www.alfresco.com/alfresco-community-download

I downloaded::

  http://dl.alfresco.com/release/community/5.0.d-build-00002/alfresco-community-5.0.d-installer-linux-x64.bin

From https://wiki.alfresco.com/wiki/Community_file_list_5.0.d

.. tip:: You will need over 2GB of RAM (and preferably at least 4.0 GB).

Dependencies::

  sudo apt-get install libice6 libsm6 libxt6 libxrender1 libfontconfig1 libcups2

To install::

  chmod +x alfresco-community-5.0.d-installer-linux-x64.bin
  alfresco-community-5.0.d-installer-linux-x64.bin --mode text

The ``README.txt`` is at::

  /opt/alfresco-5.0.d/README.txt

Login at http://170.23.45.250:8080/share/ with the user name ``admin`` and the
password you entered when you installed Alfresco.

Maintenance
===========

Stop::

 cd /opt/alfresco-5.0.d/
 ./alfresco.sh stop

Start::

 cd /opt/alfresco-5.0.d/
 ./alfresco.sh start

Some log files in this folder::

  /opt/alfresco-5.0.d/

Links
=====

For install instructions:

- http://docs.alfresco.com/community/tasks/simpleinstall-community-lin.html
- http://docs.alfresco.com/community/concepts/download-community.html

How to install Alfresco 5.0.a Community Edition on Ubuntu 14.04 LTS:
http://fcorti.com/2014/10/13/how-to-install-alfresco-5-0-ubuntu-14-04-lts/

Workflow
========

We installed Activiti Designer (the Eclipse plugin).  We exported an invoice
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

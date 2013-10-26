Getting Started
***************

Links
=====

- http://www.liquibase.org/quickstart

Download
========

Download LiquiBase from http://www.liquibase.org/download.

I downloaded ``liquibase-1.7.0.zip``.

Install
=======

Extract the archive.  I installed to:

::

  mkdir ~/bin/liquibase/
  cd ~/bin/liquibase/
  unzip /home/patrick/Downloads/liquibase/liquibase-2.0.5-bin.zip

Setup
=====

You can run LiquiBase from the command line:

::

  java -jar C:\tools\liquibase-1.7.0\liquibase-1.7.0.jar

Note: Also see ``misc/sample-shell-script.sh``.

Create an empty XML file:

::

  <?xml version="1.0" encoding="UTF-8"?>
  <databaseChangeLog
    xmlns="http://www.liquibase.org/xml/ns/dbchangelog/1.6"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.liquibase.org/xml/ns/dbchangelog/1.6
    http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-1.6.xsd">

  </databaseChangeLog>

Add change sets to the XML file.  Here is one (``db.changelog.xml``):

::

  <?xml version="1.0" encoding="UTF-8"?>
  <databaseChangeLog
    xmlns="http://www.liquibase.org/xml/ns/dbchangelog/1.6"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.liquibase.org/xml/ns/dbchangelog/1.6
    http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-1.6.xsd">
    <changeSet id="1" author="patrickk">
      <createTable tableName="department">
        <column name="id" type="int">
          <constraints primaryKey="true" nullable="false"/>
        </column>
        <column name="name" type="varchar(50)">
          <constraints nullable="false"/>
        </column>
        <column name="active" type="boolean" defaultValue="1"/>
      </createTable>
    </changeSet>
  </databaseChangeLog>

Usage
=====

Run the change set:

::

  java -jar C:\tools\liquibase-1.7.0\liquibase-1.7.0.jar --driver=net.sourceforge.jtds.jdbc.Driver --classpath=c:\Users\Patrick\.m2\repository\net\sourceforge\jtds\jtds\1.2\jtds-1.2.jar --changeLogFile=db.changelog.xml --url="jdbc:jtds:sqlserver://localhost:1433;databaseName=temp" --username=sa --password=mypassword migrate

**Note**

- You can also run the changeset using :doc:`maven`.
- Also see ``misc/sample-shell-script.sh``.

Parameters
**********

Links
=====

- http://www.liquibase.org/manual/column
  Column tag
- http://www.liquibase.org/manual/add_auto-increment
  Add Auto-Increment
- http://www.liquibase.org/manual/create_table
  Create Table

SQL
===

To run an external SQL script:

::

  <sqlFile path="module/gateway_tables.sql"/>

Table
=====

Alter
-----

::

  <changeSet id="2" author="pat">
    <dropNotNullConstraint tableName="stores" columnName="height" columnDataType="int"/>
    <addDefaultValue tableName="stores" columnName="height" defaultValue="NULL"/>
  </changeSet>

Create
------

To create a table.  This example creates an auto increment field as a
primary key as well as a foreign key:

::

  <createTable tableName="personal_media_disk">
    <column name="id" type="BIGINT" autoIncrement="true">
      <constraints primaryKey="true" primaryKeyName="PK_personal_media_disk" nullable="false"/>
    </column>
    <column name="code" type="VARCHAR(10)">
      <constraints nullable="false"/>
    </column>
    <column name="response" type="VARCHAR(100)">
      <constraints nullable="false"/>
    </column>
    <column name="inbound_sms_id" type="INT">
      <constraints foreignKeyName="FK_inbound_sms_id" nullable="false" references="inbound_sms(id)"/>
    </column>
  </createTable>

::

  <changeSet id="1" author="patrick">
      <createTable tableName="department">
          <column name="id" type="int" autoIncrement="true">
              <constraints primaryKey="true" nullable="false"/>
          </column>
      </createTable>
  </changeSet>

Insert
------

To insert data:

::

  <insert tableName="email_account">
      <column name="email_server_id" valueNumeric="1"/>
      <column name="username" value="my_user"/>
      <column name="password" value="my_password"/>
  </insert>

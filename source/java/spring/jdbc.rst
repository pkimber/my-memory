JDBC
****

Transactions
============

13/08/2008 14:05:56 - Notes (James S)
=====================================

Links
-----

- `Spring, JdbcTemplate and Transactions`_
- SingleColumnRowMapper_

Annotation
----------

::

  import org.springframework.transaction.annotation.Propagation;
  import org.springframework.transaction.annotation.Transactional;

  @Transactional(propagation = Propagation.REQUIRED)

Configuration (Hibernate)
-------------------------

::

  <!-- Data source configured through JNDI  -->
    <jee:jndi-lookup id="dataSource" jndi-name="jdbc/oracle-crm" resource-ref="false" />

    <!-- Transaction manager supporting annotations (see service package for example of use) -->
    <tx:annotation-driven transaction-manager="transactionManager" />
    <bean id="transactionManager" class="org.springframework.orm.hibernate3.HibernateTransactionManager">
      <property name="sessionFactory" ref="sessionFactory" />
    </bean>

Issues
======

Exceptions
----------

I was getting SQL *missing parameter* exceptions, but no matter what changes I
made to the Java code, I couldn't solve the problem.

Turned out, the stored procedure was being called dynamically from another part
of the application.  My Java code was fine...

Stored Procedure - Names Parameters
-----------------------------------

When using ``org.springframework.jdbc.object.StoredProcedure`` with Microsoft
SQL Server and named parameters...

Even though the parameters are named, they still have to be added in the same
order as the stored procedure...

I am sure Spring has support for named parameters, but cannot see how to use
them in conjunction with the ``StoredProcedure`` class.



.. _`Spring, JdbcTemplate and Transactions`: http://sujitpal.blogspot.com/2007/03/spring-jdbctemplate-and-transactions.html
.. _SingleColumnRowMapper: http://static.springsource.org/spring/docs/2.0.x/api/org/springframework/jdbc/core/SingleColumnRowMapper.html


Bean - Data Types
*****************

Bean
====

Array List
----------

To create an ``ArrayList`` bean containing ``String`` objects:

::

  <bean id="searchSolrLookupCodeUrl" class="java.util.ArrayList">
      <constructor-arg>
          <list>
              <value>"http://dev3:8050/solr1/"</value>
              <value>"http://dev3:8050/solr2/"</value>
          </list>
      </constructor-arg>
  </bean>


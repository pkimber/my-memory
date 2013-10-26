Faceting
********

How?
====

This simple query searches for ``hotel`` in the default field and return the
``regionId`` as a faceted list:

http://dev.mycompany:8042/solr/select?q=hotel&rows=0&facet=true&facet.limit=-1&facet.field=regionId

::

  <lst name="facet_fields">
      <lst name="regionId">
          <int name="1">4</int>
          <int name="10">11</int>
          <int name="11">14</int>
          <int name="12">6</int>
          <int name="13">38</int>
          <int name="2">1</int>
          <int name="3">4</int>
          <int name="4">1</int>
          <int name="5">5</int>
          <int name="6">8</int>
          <int name="7">0</int>
          <int name="8">27</int>
          <int name="9">5</int>
      </lst>
  </lst>


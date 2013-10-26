select
******

Knockout.js and a 'select' control
==================================

JavaScript
----------

.. code-block:: js

  function village(name) {
      this.name = ko.observable(name);
  }

  var viewModel = {
      villages: ko.observableArray([]),
      selectedVillage : ko.observable()
  }

HTML
----

.. code-block:: html

  <!-- jQuery template for displaying 'item_id' in a 'select'. -->
  <script type="text/html" id="village_template">
    <option value="${ $data.name }">${ $data.name }</option>
  </script>

  <select id="village_list" size=5 title="Villages"
    data-bind="template: {name:'village_template', foreach:villages}, value: selectedVillage">
  </select>

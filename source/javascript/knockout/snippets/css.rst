CSS
***

.. highlight:: html

In this example, the ``rowselect`` class will be added when the ``isSelected``
binding returns ``True``:

::

  <li class='item' data-bind='css: { rowselect: isSelected }'>

Note: If the class name contains a dash, then it will need to be surrounded by
quotes e.g. ``data-bind='css: { "row-select": isSelected }``

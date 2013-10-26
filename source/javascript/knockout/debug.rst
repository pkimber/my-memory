Debug
*****

Sample
======

From `10 things to know about KnockoutJS on day one`_:

Put a div at the bottom of your page and display some or all of your
``viewModel`` using ``ko.toJSON`` to get a live preview of how changes in your
UI are affecting the underlying data.  No need for console logs or alerts:

::

  <hr />
  <h2>Debug</h2>
  <div data-bind="text: ko.toJSON(viewModel)"></div>


.. _`10 things to know about KnockoutJS on day one`: http://www.knockmeout.net/2011/06/10-things-to-know-about-knockoutjs-on.html

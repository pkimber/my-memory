Scrollable Fixed Header Table
*****************************

This plug-in works with :doc:`tablesorter`.

Links
=====

- `Scrollable Fixed Header Table`_

Install
=======

::

  cd ~/repo/temp/
  svn checkout http://jquery-sfht.googlecode.com/svn/trunk/ jquery-sfht

  cd my/site/static/js/
  mkdir jquery-sfht/
  cd jquery-sfht/

  cp ~/repo/temp/jquery-sfht/javascripts/jquery.cookie.pack.js .
  cp ~/repo/temp/jquery-sfht/javascripts/jquery.dimensions.min.js .
  cp ~/repo/temp/jquery-sfht/javascripts/jquery.scrollableFixedHeaderTable.js .

  cd my/site/static/css/
  mkdir jquery-sfht/
  cd jquery-sfht/
  cp -R ~/repo/temp/jquery-sfht/css/* .

Note: We don't actually want to copy everthing in the ``css`` folder as it will
include ``svn`` meta-data.

Usage
=====

.. code-block:: html


  <link rel="stylesheet" type="text/css" href="{{ STATIC_URL }}css/common/jquery-sfht/themes/blue/style.css">
  <link rel="stylesheet" type="text/css" href="{{ STATIC_URL }}css/common/jquery-sfht/scrollableFixedHeaderTable.css">

  <script type="text/javascript" src="{{ STATIC_URL }}js/common/jquery-1.6.4.js"></script>
  <script type="text/javascript" src="{{ STATIC_URL }}js/common/jquery.tablesorter.js"></script>

  <script type="text/javascript" src="{{ STATIC_URL }}js/common/jquery-sfht/jquery.cookie.pack.js" ></script>
  <script type="text/javascript" src="{{ STATIC_URL }}js/common/jquery-sfht/jquery.dimensions.min.js" ></script>
  <script type="text/javascript" src="{{ STATIC_URL }}js/common/jquery-sfht/jquery.scrollableFixedHeaderTable.js" ></script>

To initialise the table:

.. code-block:: javascript

  $('#myTable').scrollableFixedHeaderTable(500, 200);
  $('#myTable').tablesorter().bind('sortEnd', function(){
      var $cloneTH = $('.sfhtHeader thead th');
      var $trueTH = $('.sfhtData thead th');
      $cloneTH.each(function(index){
          $(this).attr('class', $($trueTH[index]).attr('class'));
      });
  });
  $('.sfhtHeader thead th').each(function(index){
      var $cloneTH = $(this);
      var $trueTH = $($('.sfhtData thead th')[index]);
      $cloneTH.attr('class', $trueTH.attr('class'));
      $cloneTH.click(function(){
          $trueTH.click();
      });
  });


.. _`Scrollable Fixed Header Table`: http://jeromebulanadi.wordpress.com/2010/03/22/scrollable-fixed-header-table-a-jquery-plugin/


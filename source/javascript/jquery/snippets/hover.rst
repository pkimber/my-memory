Hover
*****

.. highlight:: javascript

From `.hover()`_: To add a special style to table cells that are being hovered
over, try::

  $("td").hover(
      function () {
          $(this).addClass("hover");
      },
      function () {
          $(this).removeClass("hover");
      }
  );


.. _`.hover()`: http://api.jquery.com/hover/

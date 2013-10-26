Image Maps
**********

Links
=====

`HTMLSource, Image Maps Tutorial`_

Sample
======

sample-image-maps_

::

  <img src="images/map.jpg" usemap="#metroid" ismap="ismap" border="0">
  <map name="metroid">
    <area shape="rect" coords="4,14,39,116" href="http://www.rareware.com" alt="">
    <area shape="circle" coords="84,47,22" href="http://www.retrostudios.com" alt="" >
    <area shape="circle" coords="139,58,31" href="http://www.nintendo.com" alt="">
    <area shape="poly" coords="119,154,100,154,97,166,109,176,128,164,119,154" href="http://www.yourhtmlsource.com" alt="">
  </map>

Links
=====

The main image can have an ``alt`` of its own and can even be active as a link.
The hot spots will always take precedence over the rest of the image, so you
can have all the normal areas linked to something too.

When you're using an image map as your page navigation, you should always
include a row of links to the respective pages underneath, for those readers
who surf with images turned off.

Shapes
======

- ``rect`` for rectangle:

  You only need two co-ordinates to make a rectangle: the points at its top-left
  and bottom-right corners.

- ``circle``:

  A circle needs to be described by three values; the co-ordinates of its
  centre-point, and a radius (size) for the circle.

- ``poly`` for polygon (any multi-sided shape you want):

  A polgon can be made up of any number of points, which will all join together
  into one shape. Think of the co-ordinates as sets of pairs, a pair for each
  point.

Note: Co-ordinates of the shape's corner points follow the familar x-axis,
y-axis rules of graphs, with one caveat: in the mathematical graphs that you
may have had taught to you in school, y starts at 0 and increases as you go up
the graph.  However, on computer screens, we measure y from the top of the
screen down.  The top-left corner's co-ordinates are thus 0,0. The co-ordinates
50,23 mean 50 pixels from the left and 23 down.


.. _`HTMLSource, Image Maps Tutorial`: http://www.yourhtmlsource.com/images/imagemaps.html
.. _sample-image-maps: http://toybox/hg/sample/file/tip/html/sample-image-maps/sample.html


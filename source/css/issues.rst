Issues
******

Inline
======

When using CSS inline you must be sure not to use quotations within your
inline CSS.  If you use quotations the browser will interpret this as the
end of your style value.

**Note**: The first example is broken:

::

  <p style="background: url("yellow_rock.gif");">
    This is broken
  </p>

  <p style="background: url(yellow_rock.gif);">
    This is workin'
  </p>

List
====

http://meyerweb.com/eric/css/list-indent.html
Margins on list items...

Properties
==========

Do NOT leave spaces between the property value and the units!

If you use ``margin-left: 20 px`` instead of ``margin-left: 20px`` it will only
work properly in IE6 but it will not work in Mozilla/Firefox or Netscape.


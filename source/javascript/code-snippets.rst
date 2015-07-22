Code Snippets
*************

.. highlight:: javascript

Links
=====

- `JavaScript Snippets`_

Download
========

::

  var url = 'http://dev3:8090/Voucher.msi';
  window.location.href = url
  // or we could try... window.open(url, 'Download');

String - Remove Control Characters
==================================

`Remove control characters from a string`_::

  function removeNL(s) {
      /*
       ** Remove NewLine, CarriageReturn and Tab characters from a String
       **   s  string to be processed
       ** returns new string
      */
      r = "";
      for (i=0; i < s.length; i++) {
          if (s.charAt(i) != '\n' &&
              s.charAt(i) != '\r' &&
              s.charAt(i) != '\t') {
              r += s.charAt(i);
          }
      }
      return r;
  }

String - Trim
=============

`Adds trim function to javascript string object`_::

  String.prototype.trim = function() {
      return this.replace(/^\s+|\s+$/g, "");
  };


.. _`Adds trim function to javascript string object`: http://www.bigbold.com/snippets/posts/show/701
.. _`JavaScript Snippets`: https://weezy/svn/learn/javascript/snippets
.. _`Remove control characters from a string`: http://www.rgagnon.com/jsdetails/js-0041.html

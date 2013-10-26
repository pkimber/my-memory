Popup Windows
*************

Links
=====

- http://www.htmlcodetutorial.com/linking/linking_famsupp_70.html
- http://www.yourhtmlsource.com/javascript/popupwindows.html
- http://www.sitepoint.com/article/perfect-pop-up
- http://scriptasylum.com/tutorials/openwindows.html

Sample Code
===========

Pop-up text
-----------

A simple pop-up windows suitable for use when debugging code and you need to write
some *text* for viewing.

::

  function popupMyWindow(text) {
      var myWindow = window.open('', 'name', 'height=400,width=700,scrollbars=yes');
      myWindow.document.write('<html><head><title>DOM</title>');
      myWindow.document.write('</head><body>');
      myWindow.document.write('<p>' + text + '</p>');
      myWindow.document.write('<p><a href="javascript:self.close()">Close</a></p>');
      myWindow.document.write('</body></html>');
      myWindow.document.close();
      myWindow.focus();
  }

Pop-up page
-----------

...to have a link which pops up a small window displaying a given url:

::

  <a href="javascript:window.open('http://www.westberks.gov.uk', 'windowName', 'width=300,height=150,status=no,location=no');" target="_blank"  title="Sample Link Description">FRED</a>

(from Dave S 18/05/2007 17:05)

Generator
=========

http://accessify.com/tools-and-wizards/accessibility-tools/pop-up-window-generator/


Download
********

Force Files to Download
=======================

Note: Not sure I understand this, and not tested properly...

`Force Files to Download Instead of Opening`_

Have ever wished that you could force a file to download instead of opening
in a browser?  Some common files like ``MP3`` and ``PDF`` files will open in
your reader's browser if the proper parent plugin is installed.  Sometimes you
want to force them to download the file without having to right-click and save
it.

This action can be achieved very easily in Apache by modifying the
``.htaccess`` file.  You can set it at your domain root to affect your entire
site, or you can set it in subdirectories to only affect parts of your site.

All you need to know is your file extension(s).  Then add an ``octet-stream``
mime type for each.  So you might add the following to your ``.htaccess`` file:

::

  AddType application/octet-stream .avi
  AddType application/octet-stream .mpg
  AddType application/octet-stream .mov
  AddType application/octet-stream .pdf

The above example would force a download message and prevent any ``AVI``,
``MPG``, ``MOV``, or ``PDF`` file from opening in a browser.


.. _`Force Files to Download Instead of Opening`: http://www.nilpo.com/2007/11/apache/force-files-to-download-instead-of-opening/


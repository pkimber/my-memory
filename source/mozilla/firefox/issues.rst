Issues
******

Audio and Video
===============

If Firefox will not play audio and video it is probably because the content
type of the media is set incorrectly.  I had this problem with the Rackspace
Cloud when uploading files through their web interface.  The files uploaded
this way were give then type of ``application/octet-stream`` when they should
have been ``video/ogg`` or ``audio/ogg``.  In my case, uploading through the
Django admin interface using the ``FileField`` set the content types correctly.

DNS Delay
=========

`DNS lookup delay in Firefox`_

FireFox 1.5 - Red Caret
=======================

See:
http://forums.mozillazine.org/viewtopic.php?p=1950186&highlight=red+caret&sid=a772f54c67113fb0a6d1b55594e82a59#1950186

*Have just installed FF1.5 and now have a thick grey bar at the bottom of the
browser screen, with a red arrow (caret) on the far left hand side. I have
uninstalled all my extensions, and tried Safe Mode, but it's still there. Is
there any way round this, or should I uninstall and go back to the previous
version?*

If this file exists, you should delete it:

::

  C:\Program Files\Mozilla Firefox\chrome\m3ffxtbr.manifest

It's part of the MyWebSearch toolbar that is broken in 1.5, and is spyware.

FireFox 3 Beta
==============

Multiple Forward/Back Buttons on Toolbar
----------------------------------------

*View*, *Toolbars*, *Customize*... and then click *restore default set*.

Profile Location
================

::

  C:\Documents and Settings<Windows login/user name*\Application Data\Mozilla\Firefox\Profiles<Profile name*\


.. _`DNS lookup delay in Firefox`: http://jw.n--tree.net/blog/dev/dns-lookup-delay-in-firefox


Plugins
*******

Links
=====

**Note**: You should install plugins using plug-in link files:
:doc:`plugin-link-files`

- `Ten Tips for Installing Plugins in Eclipse Galileo`_
- `Top Eclipse Plugins I Wouldn't Go Without`_

AnyEdit
=======

AnyEdit plugin adds several new tools to the context menu of text- based
Eclipse editors, to Eclipse main menu and editor toolbar.

http://andrei.gmxhome.de/anyedit/index.html

CheckStyle
==========

http://eclipse-cs.sf.net/update/

The Eclipse update site is:

http://eclipse-cs.sourceforge.net/update

Install - Link Files
--------------------

Click here for more information on link files: :doc:`plugin-link-files`:

- Download ``com.atlassw.tools.eclipse.checkstyle_4.4.0-bin.zip`` from
  http://sourceforge.net/projects/eclipse-cs/
- Create a folder for the plugin in your repository.  On my workstation:

  ::

    \repository\eclipse\plugins\checkstyle_4.4.0\eclipse\

- Extract the archive.  On my workstation this creates two folders:

  ::

    C:\repository\eclipse\plugins\checkstyle_4.4.0\eclipse\features\
    C:\repository\eclipse\plugins\checkstyle_4.4.0\eclipse\plugins\

- Create a ``.link`` file in your Eclipse ``links`` folder.  On my workstation:

  ::

    \tools\eclipse-3.3.2\links\checkstyle_4.4.0.link

  ...containing:

  ::

    path=/repository/eclipse/plugins/checkstyle_4.4.0


  Start Eclipse with the ``-clean`` flag:

  ::

    eclipse -clean

Install - Update Site
---------------------

To install the Eclipse Checkstyle Plug-in via the update site.

- Within Eclipse go to *Help*, *Software Updates*, *Find and Install*.
- Choose Search for new features to install and press Next
- Create a New Remote Site...
- Input a name to your liking (for instance Checkstyle Plug-in) and input the
  following URL:

  http://eclipse-cs.sourceforge.net/update

- Click your way through the following pages to install the plug-in.

Color Editor
============

`A syntax color highlighting editor for Eclipse`_.

Maven
=====

- :doc:`../java/maven/plugin/eclipse`

Mylyn
=====

http://www.eclipse.org/mylar/

The Eclipse update site is (this is for Eclipse 3.2):

http://download.eclipse.org/technology/mylar/update-site/e3.2

Integration
-----------

`Mylar Extensions - including Trac and Mantis connectors`_

Redmine
-------

http://redmin-mylyncon.sourceforge.net/update-site/nightly

Trac
----

- Install the Trac ``xmlrpcplugin``: :doc:`../trac/plugins`.
- Add http://download.eclipse.org/tools/mylyn/update/extras to *Help*,
  *Software Updates*, *Add Site*.
- Click *Manage Sites*, look for
  http://download.eclipse.org/tools/mylyn/update/extras
  Check the box to add it to a list of "*Available software*".
- Click *Refresh*.
- You should now be able to find the Mylyn/Trac connector in *Mylyn Extras*,
  *Mylyn Integration*, *Mylyn Connector: Trac*.

  `Re: Ganymede no trac connector for mylyn?`_

- Mylyn Task Repository

  ::

    ../../images/howto/eclipse/mylyn-trac-repository-properties.gif

  (This plugin allows editing Wiki pages from inside Eclipse:
  http://trac-hacks.org/wiki/EclipseTracPlugin).

Saros
=====

`Saros - Distributed Collaborative Editing and Pair Programming`_

Subclipse
=========

**Note**: *The Subversive project (see below) appears to have become the
preferred Eclipse client*.

http://subclipse.tigris.org/

The Eclipse update site is:
http://subclipse.tigris.org/update_1.6.x

Issues
------

If you have problems with ``.svn`` folders, then just delete the project and
re-import...

Subversive
==========

**Note**: Even though this is the preferred client, I couldn't get it to
install... so, probably best to stick to Subclipse...

Subversive_ a brand new Eclipse Client for SVN

To install the update, *Help*, *Install New Software...*, select *Galileo*
(http://download.eclipse.org/releases/galileo), *Collaboration*

Tag
===

`Tags for Software Engineering Activities in Eclipse`_

tail
====

- http://www.certiv.net/products/ntail.html
- LogWatcher_
- `Blog - Running tail inside Eclipse`_

Testing
=======

`EclEmma is a free Java code coverage tool`_

XML
===

http://xmlbuddy.com/

::

  From:    Paul S
  Sent:    27 January 2006 11:49
  To:      Development
  Subject: Useful eclipse plug-in

  xmlbuddy looks pretty useful, quick and easy to use (saves using a separate
  app such as xmlspy)

  It allows you to:

  format the xml/xhtml into something that is easy to read, i.e., correctly
  tabulated, menu: [XML - Format], shortcut: [Ctrl+Shift+F]

  validate the xml/xhtml, menu: [XML - Validate], shortcut: [Ctrl+Shift+V]

Zip
===

`Eclipse Zip Editor`_

Files
=====

...a plugin that would let you enter partial filenames in a *quicksearch* box
and open the file directly:

http://www.muermann.org/gotofile/

Profiler
========

This is a plugin for the Eclipse platform which allows java code profiling:

http://eclipsecolorer.sourceforge.net/index_profiler.html



.. _`Ten Tips for Installing Plugins in Eclipse Galileo`: http://blog.zvikico.com/2009/07/ten-tips-for-installing-plugins-in-eclipse-galileo.html
.. _`Top Eclipse Plugins I Wouldn't Go Without`: http://eclipse.dzone.com/articles/top-eclipse-plugins-i-wouldn-t
.. _`A syntax color highlighting editor for Eclipse`: http://www.gstaff.org/colorEditor/
.. _`Mylar Extensions - including Trac and Mantis connectors`: http://wiki.eclipse.org/Mylyn/Extensions
.. _`Re: Ganymede no trac connector for mylyn?`: http://www.nabble.com/Ganymede-no-trac-connector-for-mylyn--td18347321.html#a18347321
.. _`Saros - Distributed Collaborative Editing and Pair Programming`: https://www.inf.fu-berlin.de/w/SE/DPP
.. _Subversive: http://www.eclipse.org/subversive/
.. _`Tags for Software Engineering Activities in Eclipse`: http://tagsea.sourceforge.net/
.. _LogWatcher: http://graysky.sourceforge.net/
.. _`Blog - Running tail inside Eclipse`: http://www.eclipsezone.com/eclipse/forums/t88892.rhtml
.. _`EclEmma is a free Java code coverage tool`: http://www.eclemma.org/
.. _`Eclipse Zip Editor`: http://sourceforge.net/projects/zipeditor/


Plugin - Link Files
*******************

`Managing Plugins and Features with Link Files and Extension Locations`_

*...you can have lots of* ``.link`` *files and lots of install locations...*

Check this out...  `Managing Installed Eclipse Plug-ins`_

Setup
=====

I have installed Eclipse to:

::

  C:\tools\eclipse

Plugin Folder
-------------

Create a folder which will contain your plugin:

::

  C:\repository\eclipse\plugins\checkstyle_4.3.2

Inside this folder create an ``eclipse`` subfolder:

::

  C:\repository\eclipse\plugins\checkstyle_4.3.2\eclipse\

Install any plugins you want to use into this ``eclipse`` sub-folder.  Your
folder structure should look like this:

::

  C:\repository\eclipse\plugins\checkstyle_4.3.2\eclipse\features\
  C:\repository\eclipse\plugins\checkstyle_4.3.2\eclipse\plugins\

Eclipse Configuration
---------------------

Create a ``links`` folder inside Eclipse:

::

  C:\tools\eclipse\links\

In this folder create a ``.link`` file which points to your plugin folder:

e.g.

::

  C:\tools\eclipse\links\checkstyle_4.3.2.link

In this file, create a ``path`` property pointing to your plugin folder e.g.

::

  path=/repository/eclipse/plugins/checkstyle_4.3.2


**Note**:

This file:

- Must end with a new line.
- Must **not** end with a trailing slash.
- Can be called anything ending in ``.link``.
- should only contain forward slashes in the path.

Start Eclipse with the ``-clean`` flag:

::

  eclipse -clean


.. _`Managing Plugins and Features with Link Files and Extension Locations`: http://divby0.blogspot.com/2007/06/managing-plugins-and-features-with-link.html
.. _`Managing Installed Eclipse Plug-ins`: http://caffeineinducedcoding.blogspot.com/2007/07/managing-installed-eclipse-plug-ins.html


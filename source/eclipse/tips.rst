Tips
****

Links
=====

`Top 10 Tips For New Eclipse Users`_

Console
=======

To limit console output:

*Window*, *Preferences*, *Run/Debug*, *Console*, *Limit console output*:

::

  ../../images/howto/eclipse/limit-console-output.gif

Editor
======

Format edited lines on save.
----------------------------

*Window*, *Preferences*, *Java*, *Editor*, *Save Action*,
*Perform the selected actions on save*, *Format source code*, tick
*Format edited lines*.

Occurence Highlighting
----------------------

`Eclipse Occurence Highlighting`_

Eclipse has this lovely feature where it highlights all occurrences of the
element (method, variable etc.) the cursor is currently on.  I love it. But
sometimes it goes away, and I can't figure out why.  Today I finally broke down
and looked for the preference to turn it back on:

*Java*, *Editor*, *Mark Occurrences*...

Launch
======

ini
---

`Eclipse goodie: your actual name instead of login in JavaDoc author tags`_

Options can be set in the ``eclipse.ini`` file e.g:

::

  -vm
  C:\tools\java\jdk1.6.0\bin\javaw
  -vmargs
  -Xms64m
  -Xmx1024m
  -Duser.name=Patrick Kimber

The path to the virtual machine must be in native format and end with the name
of the ``javaw`` exe.

On my workstation this file is in the Eclipse installation folder:

::

  C:\tools\eclipse-3.1.2\eclipse.ini

Shortcut
--------

This is supposed to set the jdk (*but I am not convinced it is working*):

::

  C:\tools\eclipse-3.1.2\eclipse.exe -vm C:\tools\j2sdk1.4.2_09\jre\bin\javaw

This article might be helpful:
`Eclipse - a tale of two VMs (and many classloaders)`_.

Workspace
---------

From `Tips for using Eclipse effectively`_
and `Top 10 Tips For New Eclipse Users, Blog`_

I always launch eclipse from the command-line using a script. Passing the
``-showlocation`` flag adds the workspace location to the windows title bar so
that you can easily see which window is for which workspace.  I normally start
Eclipse with a little extra memory too (I find it works a little snappier that
way).  A good default for launching Eclipse if you're working with sizeable
projects would be something like this:

::

  eclipse.exe -showlocation -vmargs -Xmx512m

These settings can be specified in the ``eclipse.ini`` file (see above).

(I use cygwin, and I find that Eclipse tends to dump nonsense to the console
that I don't want to see, hence the redirect).

::

  eclipse.exe -showlocation -vmargs -Xmx512m > /dev/null 2>&1

User Name
---------

`Eclipse goodie: your actual name instead of login in JavaDoc author tags`_

::

  -Duser.name=Patrick Kimber

Subversion
==========

If you are using Subversion but not an Eclipse client then you will want
Eclipse to ignore the ``.svn`` folders.  To do this:

Add an extension ``.svn`` in *Window*, *Preferences*, *Team*,
*Ignored resources*.

Typical error messages which you will solve by setting this property:

::

  The resource is a duplicate of src/main/java/.svn/entries and was not copied to the output folder

Update
======

Any time you get a chance, export your bookmark files from *Help*,
*Software Updates*, *Find and Install*, *Search for new features to install*,
*Export sites* dialog. Having them saved away in a safe place makes it much
easier to re-create another development environment.

WorkSpace
=========

Preferences
-----------

There is no need to configure each workspace individually every time you create
a new one!  Get one workspace set up exactly how you like it, and then select
*File*, *Export*, *Preferences*.  This will create a file that contains all of
your preferences settings that you can keep in (e.g.) your home directory.
Whenever you create a fresh workspace, use *File*, *Import*, *Preferences* and
you're good to go.

Launch
------

The easiest way to specify which workspace Eclipse uses is to use the ``-data``
and ``-showlocation`` parameters with the launcher:

::

  eclipse -data c:\myworkspace -showlocation

The ``-data`` parameter directs Eclipse to use the ``c:\myworkspace`` directory
on the local machine as the workspace directory.  The ``-showlocation``
parameter shows the workspace location in the Eclipse title bar - very helpful
when running multiple Eclipse instances at the same time.


.. _`Eclipse - a tale of two VMs (and many classloaders)`: http://www.eclipsezone.com/articles/eclipse-vms/
.. _`Eclipse Occurence Highlighting`: http://www.jroller.com/noah/entry/eclipse_occurence_highlighting
.. _`Eclipse goodie: your actual name instead of login in JavaDoc author tags`: http://jroller.com/page/dashorst?entry=eclipse_goodie_your_actual_name
.. _`Eclipse goodie: your actual name instead of login in JavaDoc author tags`: http://jroller.com/page/dashorst?entry=eclipse_goodie_your_actual_name
.. _`Tips for using Eclipse effectively`: http://www.aspectprogrammer.org/blogs/adrian/2006/02/tips_for_using.html
.. _`Top 10 Tips For New Eclipse Users, Blog`: http://www.benpryor.com/blog/index.php?/archives/4-Top-10-Tips-For-New-Eclipse-Users.html
.. _`Top 10 Tips For New Eclipse Users`: http://jroller.com/page/keremkosaner?entry=top_10_tips_for_new


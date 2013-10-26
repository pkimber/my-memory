RCP
***

Downloaded the *Eclipse RCP SDK*, ``eclipse-RCP-SDK-3.2-linux-gtk.tar.gz``.

I extracted this file to:

::

  ~/development/java/rcp/target-book/

This is the start of the application I am building.  It looks as if a separate
workspace is required for each target environment.  The *Target Platform*
setup is a setting for the workspace rather than the project.

To connect my project to this target:
*Window*, *Preferences*, *Plug-in Development*, *Target Platform*, set the
*Location* field to your target folder:

::

  /home/patrick/development/java/rcp/target-book/eclipse/

...and click *Reload*.  The *Environment* tab sets up the JRE etc...



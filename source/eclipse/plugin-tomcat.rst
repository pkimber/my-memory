Plugin - Tomcat
***************

Install
=======

- Download from http://www.eclipsetotale.com/tomcatPlugin.html

  Install using a *link file* or using the *standard* method:

Link File
---------

To use a plugin link file, :doc:`plugin-link-files`.

- Unzip ``tomcatPluginV321.zip`` into your external plugin repository (on my
  workstation):

  ::

    \repository\eclipse\plugins\tomcat-plugin-v321\eclipse\plugins

- Create a plugin link file:

  ::

    eclipse\links\tomcat-plugin-v321.link

  ...containing...

  ::

    path=/repository/eclipse/plugins/tomcat-plugin-v321

- Start Eclipse with the ``-clean`` flag:

  ::

    eclipse -clean

Standard
--------

- Unzip it in ``/plugins``

Setup
=====

- If the Tomcat icons are not shown in the toolbar, *Window*,
  *Customize Perspective...*, *Commands*, and check *Tomcat* in
  *Available command groups*
- Set Tomcat version and Tomcat home : *Window*, *Preferences*, select*Tomcat*
  and set Tomcat home and version.

  ::

    ../../images/howto/eclipse/tomcat-preferences.gif

- This plugin launches Tomcat using the default JRE checked in Eclipse
  preferences window.
- To set a JDK as default JRE for Eclipse open the preference window:

  *Window*, *Preferences*, *Java*, *Installed JREs*.

  **Note**: This JRE must be a JDK (This is a Tomcat prerequisite).

- The plugin sets up the Tomcat classpath and bootclasspath.

  Use *Preferences*, *Tomcat*, *JVM Settings*, only if you need specific
  settings.

Setup Project
=============

Right click on your project and select *Properties*, *Tomcat*:

- Tick "*Is a Tomcat Project*".
- Copy the project name to the "*Context name*".
- Tick the three boxes,

  - "*Can update context definition*",
  - "*Mark this context as reloadable*" and
  - "*Redirect context logger to Eclipse console*".

- Set the "*Subdirectory to set as web application root (optional)*" to the
  project folder within ``target`` e.g. ``/target/ad_server``:

  ::

    ../../images/howto/eclipse/tomcat-properties.gif

**Note**: Before starting, making sure there is no project with the same name
deployed to the ``webapps`` folder.

Usage
=====

- Build the ``war`` file as normal.
- Make sure the Tomcat plugin knows where the source is for all your modules;
  *Window*, *Preferences*, *Tomcat*, *Source Path*.
- Add break points to your code (as required).
- Start Tomcat (using the toolbar icon).
- Your application is running... (no need to "*Run As*").

**Note**: Tomcat should watch your code.  A ``mvn package`` will update the
files in the target folder - Tomcat should automatically use the updated files.


.. _`plugin link file`: plugin-link-files.html


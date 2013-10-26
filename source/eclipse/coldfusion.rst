ColdFusion
**********

CFEclipse
=========

http://cfeclipse.tigris.org/

Install
-------

- Select the "Help*, *Software Updates*, *Find and install* menu option
- On the screen that is displayed, select 'Search for new features to install'
  and click the 'Next' button.
- Now click the 'New Remote Site' button.
- Enter a name for the update site, for example "CFEclipse".
  In the URL box, enter http://cfeclipse.tigris.org and click the OK button
- You should now have a 'CFEclipse' node in the 'Sites to include in search'
  box.

  Expand the CFEclipse node and you will see two child nodes:

  - ``com.rohanclan.cfml.release.stable``
  - ``com.rohanclan.cfml.release.bleedingedge``

- Tick the ``com.rohanclan.cfml.release.stable`` box and click *Next*
- Eclipse will contact the CFEclipse site and retrieve the list of available
  plugins.

  Tick the plugin with the highest version number and click 'Next'

Project
=======

Creating A Cold Fusion Project

The Cold Fusion editor (CFML Editor) will only activate properly if within a
project.  Trying to simply open a cold fusion file will cause the editor to
fail.  This is an error in the plug-in and slated to be fixed.  To create a
Cold Fusion project select File then New followed by Project...; these steps
will launch the new project wizard.

In the new wizard dialog, select *Simple* then *Project*, and then click next.

On the next step you will need to give a name to the project, and specify the
directory where the local copy of the files should be stored.  If you have cold
fusion files that already exist on your system, you can specify the directory
to use by selecting the *Browse...* button and choosing the appropriate
directory.

Use
===

Probably better to use the *CFEclipse* Perspective.  *Window*,
*Open Perspective*, *Other*, *CFEclipse*...


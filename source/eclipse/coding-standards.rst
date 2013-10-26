Coding Standards
****************

Links
=====

To install and set-up the Checkstyle plugin see plugins.html.

Code Templates
==============

*Windows*, *Preferences*, *Java*, *Code Style*, *Code Templates*:

Here is a backup of my current code templates:

::

  ../../misc/howto/eclipse/codetemplates.xml

Comments
========

Checkstyle will be happy with single line comments if you format them like
this:

::

  /** The path to the repository. */
  private File repositoryFolder = null;

Tabs
====

http://eclipse-cs.sourceforge.net/

To convert tabs to spaces:

*Window*, *Preferences*, *Java*, *Code Style*, *Formatter*, *Edit*,
*Indentation*, *Tab Policy*, *Spaces Only*

Line Wrapping
=============

Maximum line width.  Should probably be set to match our Eclipse standards
(currently 120).

*Window*, *Preferences*, *Java*, *Code Style*, *Formatter*, *Edit*
*Line Wrapping*, *Maximum Line Width*, *120*

The *Default Indentation* settings on this page may also be useful.

Chiba
*****

CVS
===

Checkout using ``cygwin`` (look at http://chiba.cvs.sourceforge.net/chiba/ to
see the module names:

::

  mkdir chiba
  cd chiba
  cvs -d:pserver:anonymous@chiba.cvs.sourceforge.net:/cvsroot/chiba login
  cvs -z3 -d:pserver:anonymous@chiba.cvs.sourceforge.net:/cvsroot/chiba co -P chiba-web
  cvs -z3 -d:pserver:anonymous@chiba.cvs.sourceforge.net:/cvsroot/chiba co -P chiba-sandbox

Build
=====

(I think chiba core is the sandbox part of the build.  The
``install-from-local-core`` command creates the ``chiba-1.2.0.jar`` file).

::

  cd chiba-sandbox\
  ant build

  cd ..\chiba-web\
  ant install-from-local-core

Old
===

See email below:

::

  erase C:\src\chiba\chiba-web\src\org\chiba\adapter\servlet\ShowAttachmentServlet.java
  ant build

To create the WAR file:

::

  ant distribute

The war file can be found in:

::

  C:\src\chiba\chiba-web\dist\chiba-web-1.0.0.war

For now - you will need to copy all "xsl" files from:

::

  C:\src\chiba\chiba-web\web\forms\xslt\

to:

::

  C:\tools\Tomcat 5.5\

See email...

::

  From: Joern Turner <joern.turner@web.de>
  To: Patrick Kimber <me@mail.com>
  Cc: chiba-developer@lists.sourceforge.net
  Date: 07-Nov-2005 15:31
  Subject: Re: [Chiba-developer] Code in CVS will not compile.

  > Patrick Kimber wrote:
  > Hi
  > Can you please tell me the status of the code in the CVS repository?
  >
  > I checked out Chiba to "C:\src\chiba\" and ran the following commands
  > (which run without errors until the last command)::
  > cd C:\src\chiba\chiba-sandbox\
  > ant build
  > cd C:\src\chiba\chiba-web\
  > ant install-from-local-core
  > ant build
  >
  > I get a compile error:
  >     [javac] C:\src\chiba\chiba-web\src\org\chiba\adapter\servlet\ShowAttachmentServlet.java:213:
  > cannot resolve symbol
  >     [javac] symbol  : method getChibaBean ()
  >     [javac] location: class org.chiba.adapter.servlet.ServletAdapter
  >     [javac]         if (adapter == null || adapter.getChibaBean() == null) {
  >     [javac]                                       ^
  >
  > Looking at the code for ServletAdapter, the getChibaBean method has
  > been commented out.  The revision is dated 11th August.
  >
  > I have checked the mailing lists and cannot see any reference to the
  > above issue.

  we're currently reworking parts of the core and in chiba-web. During
  this it might give some compilation problems which will vanish as soon
  as both modules have been released again. Cause this will be in very
  near future i hope this doesn't pose too much problems for you.

  If you really need to work with it now and you can't wait a couple of
  weeks, it might help to simply remove ShowAttachmentServlet. We'll
  remove this class anyway with high eventuality. But be warned, there
  might be other still unsolved issues.

  But chiba-web in its current form should work with the older core that
  is distributed with the binaries.

  Joern


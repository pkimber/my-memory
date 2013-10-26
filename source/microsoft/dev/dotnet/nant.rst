NAnt
****

Links
=====

- NAnt, http://nant.sourceforge.net/
- Managing .NET Development with NAnt,
  http://www.theserverside.net/tt/articles/showarticle.tss?id=NAnt
- NAnt Start Series,
  http://www.jpboodhoo.com/blog/NAntStarterSeries.aspx

Tools
-----

- Nantpad, http://www.nantpad.com/

Old
---

- Using NAnt to Build .NET Projects
  http://www.ondotnet.com/pub/a/dotnet/2003/01/27/nant.html

Install
=======

Download ``nant-0.85-rc4-bin.zip`` from http://nant.sourceforge.net/.

Extracted to:

::

  C:\tools\nant-0.85-rc4

Create a batch file which is on the path.  The batch file should just pass any
parameters to the NAnt command (slightly strange I think):

::

  @echo off
  "C:\tools\nant-0.85-rc4\bin\NAnt.exe" %*

Run the SDK Command Prompt shortcut, :doc:`../dotnet/sdk`, and verify the
install by running:

::

  nant -help

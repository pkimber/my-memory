.NET - Errors
*************

Breakpoint
==========

Every time I try to set a breakpoint I get the message:

*No breakpoint will currently be hit.  No symbols have been loaded for this
document*.

I had a *rogue* DLL in another folder.

Copy the ``dll`` and the ``pdb`` file to the application folder.

Checking the Visual Studio, Modules Window,
:doc:`../microsoft/visual-studio-debug` might help you see what is going on.

Repair
======

I had .NET 2 installed on my workstation.  Then installed Visual Studio 2003.
When I run *Microsoft SQL Server Management Studio* I get an error:

::

  The file... mscorlib.tlb could not be loaded.  An attempt to repair this condition

To repair:

`How to troubleshoot Microsoft .NET Framework 2.0 installation issues`_
`SQL Server Management Studio - mscorlib.tlb could not be loaded`_


.. _`How to troubleshoot Microsoft .NET Framework 2.0 installation issues`: http://support.microsoft.com/kb/908077
.. _`SQL Server Management Studio - mscorlib.tlb could not be loaded`: http://www.devnewsgroups.net/group/microsoft.public.sqlserver.tools/topic34748.aspx

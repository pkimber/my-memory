Visual Studio - Dependencies
****************************

Links
=====

`Explained: Managing Source Control Dependencies in Visual Studio Team System`_

Guidelines for Referencing Projects and Assemblies
==================================================

- Use Project References Whenever Possible
- Use File References Only Where Necessary

Standard (23/10/2007)
=====================

- Create a ``references`` folder in the root of the solution folder.
- Copy any ``dll`` files which you want to use into this folder.
- Add references to ``dll`` files in this folder.  When the project is built
  the ``dll`` will be copied to the ``Debug`` (or ``Release``) folder.


.. _`Explained: Managing Source Control Dependencies in Visual Studio Team System`: http://www.codeplex.com/VSTSGuidance/Wiki/View.aspx?title=Explained%3a%20Managing%20Source%20Control%20Dependencies%20in%20Visual%20Studio%20Team%20System


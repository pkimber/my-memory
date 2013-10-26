Internet Explorer - BHO
***********************

Links
=====

- `Building Browser Helper Objects with Visual Studio 2005`_

Sample
======

::

  ../../../misc/howto/microsoft/formwhiz.zip

Links
=====

- `[C++] BHO Handle OnSubmit event`_

Debug
=====

- Internet Explorer, Debugging, :doc:`internet-explorer`.

Issues
======

Per-user Redirection
--------------------

Moving a project into Subversion and had to solve two issues before I could get
the BHO working:

- I think the old BHO was still being used.  At least I couldn't delete the
  ``dll`` file.

- Had to **disable** *Per-user Redirection* in *Linker*, *General* and rebuild
  the project before it started working (don't forget to start Visual Studio as
  an administrator).


.. _`Building Browser Helper Objects with Visual Studio 2005`: http://msdn.microsoft.com/en-us/library/bb250489(VS.85).aspx
.. _`[C++] BHO Handle OnSubmit event`: http://stackoverflow.com/questions/1418476/c-bho-handle-onsubmit-event


emerge
******

Standard Commands
=================

::

  emerge --sync
  emerge -NuDav world
  dispatch-conf

Parameters
==========

::

  man emerge

===========  ===  =============================================================
--noreplace  -n   Skips  the  packages  specified  on  the  command-line that
                  have already been installed.
===========  ===  =============================================================

Search
======

::

  emerge --search <package name>

Status
======

emerge -av: What do the letters in square brackets indicate?

::

  [ebuild   R   ]

::

  N = new, (not yet installed)
  S = new, Slot installation (side-by-side versions)
  U = updating, (changing versions)
  D = downgrade, (Best version seems lower)
  R = replacing, (Remerging same version))
  F = fetch restricted, (Manual download)
  f = fetch restricted, (Already downloaded)
  B = blocked by an already installed package

Update
======

To update your system:

::

  emerge --update world

To update every package on your system:

::

  emerge --update --deep world

User Flags
==========

To see an explanation for the user flags on a package:

First make sure you have installed gentoolkit:

::

  emerge gentoolkit

Then use equery to find the use flags:

::

  equery uses <package name>

Remove
======

To remove an application (In this example, remove sylpheed):

::

  emerge -Cav sylpheed


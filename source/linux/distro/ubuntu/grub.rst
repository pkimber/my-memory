Grub
****

Tidy
====

(see note below ref earlier versions of Ubuntu)...

To tidy the boot menu:

- Check the version of the kernel you are currently running:

  ::

    uname -r

- Run *Synaptic Package Manager*.
- Click *Status* in the bottom left hand corner.
- Select *Installed (local or obsolete)*.
- Select the packages that start with ``linux-``
  i.e. ``linux-headers-*`` and ``linux-image-*``.

  Double check you haven't selected the current kernel!

- Right click on the selected packages and choose
  *Mark for Complete Removal*.
- Click *Apply*.

Earlier Versions
----------------

Earlier version of Ubuntu don't appear to have the option,
*Installed (local or obsolete)*.

To create the same effect, I installed
startupmanager_ using *Synaptic*.

In the *Advanced* tab:

- Tick the box to *Limit the number of kernels in the boot menu*.
- Set the *Number of kernels to keep* to 2.

  `Click here for a screenshot...`_


.. _startupmanager: https://launchpad.net/startup-manager
.. _`Click here for a screenshot...`: http://web.telia.com/~u88005282/sum/screenshots.html


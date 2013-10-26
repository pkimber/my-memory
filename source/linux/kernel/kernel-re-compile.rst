Re-Compile
**********

Every time you re-compile the kernel you need to re-emerge the ALSA sound
drivers.

See the following document for more information:

::

  /home/patrick/documents/howto/sound/linux_sound

The ``.config`` file appears to be in the src folder for the kernel version e.g.

::

  gvim /usr/src/linux-2.6.10-gentoo-r6/.config

27/03/2005
==========

Need to prepare to use Steve (from C2's) new kernel config:

Downloaded to

::

  ~/download/linux/1-st4vs-2_6_10-r6.config

Need to remember:

- Backup my "howto" folder
- To backup my existing kernel configuration
- Make sure I add in the changes required for the graphics hardware:
  http://www.gentoo.org/doc/en/dri-howto.xml
- Check the module required for my network card.
- Make sure I change the processor to Pentium 4

After:

- Re-emerge ALSA sound driver (see above)

28/03/2005
==========

Replaced my ``.config`` file with Steve's (see above)

Could not get genkernel to run:

::

  ERROR: Failed to compile the "menuconfig" target...

...had to remove the ``--no-clean`` option

::

  genkernel --no-mrproper --menuconfig all

(so will probably take a long time to compile)

Ran:

::

  modules-update

Re-booted and checked in new /config file to subversion.

Tried to re-emerge the ALSA sound drivers - got the same error as before.
But everything is working - so not to worry!

Just checking the kernel - and the ``.config`` file did not change.

Did a ``gvimdiff`` and it should be very different!



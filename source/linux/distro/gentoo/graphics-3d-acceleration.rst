Hardware 3D Accceleration
*************************

See: http://www.gentoo.org/doc/en/dri-howto.xml

::

  emerge pciutils
  lspci | grep AGP

On my computer I get:

::

  0000:00:01.0 PCI bridge: Intel Corporation 82845 845 (Brookdale) Chipset AGP Bridge (rev 03)
  0000:01:00.0 VGA compatible controller: Matrox Graphics, Inc. MGA G400 AGP (rev 82)

Made sure appropriate options were switched on in Steve's kernel config.
(They probably were)

Followed option in the gentoo document to update ``xorg.conf``.  Now to re-boot
- will we ever get back again!!

We did - no problem - the tests in the gentoo how to document indicate that the
update is working


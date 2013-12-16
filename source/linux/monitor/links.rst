Links
*****

- https://github.com/nicolargo/glances
  Glances an Eye on your system
- smartctl - provide advanced warning of disk degradation and failure.
- http://smartmontools.sourceforge.net/
- The easiest way to check the health of the hard disk (using a GUI on a
  Debian based distribution) is to use GSmartControl,
  http://gsmartcontrol.berlios.de/.
- I downloaded and installed a ``deb`` file from
  http://www.getdeb.net/app/GSmartControl.

  The application is automatically installed to
  *Applications*, *System Tools*, *GSmartControl* (or to start from the
  command prompt, ``sudo gsmartcontrol``.

  I made some progress with the command line version, but didn't work out how
  to view the report:

  ::

    sudo apt-get install smartmontools
    sudo smartctl -i /dev/sda6
    sudo smartctl -t short /dev/sda6
    sudo smartctl -X /dev/sda6

  Here is the :doc:`../../misc/howto/linux/smartctl-sample-output.txt`.
- htop
  http://www.yourownlinux.com/2013/07/monitor-system-processes-with-htop.html

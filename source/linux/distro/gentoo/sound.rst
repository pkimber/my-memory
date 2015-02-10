Sound
*****

Using: http://www.gentoo.org/doc/en/alsa-guide.xml

The document says:
First of all, before continuing, make sure your kernel has Sound Card Support
enabled.
If you used genkernel to build your kernel, then this is automatically true.

Add alsa USE flag to /etc/make.conf:

::

  USE="apache2 alsa -gnome -berkdb -kde"

Run the following command:

::

  lspci | grep -i audio

::

  0000:00:1f.5 Multimedia audio controller: Intel Corporation 82801BA/BAM AC'97 Audio (rev 12)

Checking the following web site:
http://www.alsa-project.org/alsa-doc/index.php?vendor=vendor-Intel#matrix

Says I need to install the driver:

Details (intel8x0)

Add the following line to /etc/make.conf:

::

  ALSA_CARDS="intel8x0"

Add oss to USE flag to /etc/make.conf:

::

  USE="apache2 alsa oss -gnome -berkdb -kde"

::

  emerge -av alsa-driver

The document says:

Important: Whenever you (re)compile your kernel sources, chances are that the
ALSA drivers will be deleted. It is therefore adviseable to rerun emerge
alsa-driver every time you (re)compile your kernel.  Note that this will
compile the drivers for the kernel in /usr/src/linux, NOT the running kernel.

::

  Error on "emerge (2 of 2) media-sound/alsa-driver-1.0.8 to /"
   *   ALSA is already compiled into the kernel.
   * Please check to make sure these options are set correctly.
   * Once you have satisfied these options, please try merging
   * this package again

Ignoring the error for now.  Proceed to the next step...

::

  emerge -av alsa-oss

Ran the following command (which failed):

::

  aoss mpg123 music.mp3

::

  /usr/bin/aoss: line 9: exec: mpg123: not found

::

  emerge -av alsa-utils

Edit /etc/modules.d/alsa - add:

::

  alias snd-card-0 snd-intel8x0
  alias sound-slot-0 snd-intel8x0

Run:

::

  modules-update
  rc-update add alsasound boot
  /etc/init.d/alsasound start
  amixer
  amixer set Master 100% unmute
  amixer set PCM 100% unmute
  amixer set Headphone 100% unmute

Mixer
=====

To control the settings use:

::

  alsamixer

The controls are left/right to choose the control, Up/Down to increase/decrease
the volume and M to mute/unmute

ALSA Sound Mixer aka dmix
=========================

http://gentoo-wiki.com/HOWTO_ALSA_sound_mixer_aka_dmix


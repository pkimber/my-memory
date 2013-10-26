Compiz
******

Links
=====

- `Howto Ubuntu: Compiz Fusion on Your Desktop`_
- `Using Compiz As A Window Management Tool`_
- `Ubuntu 11.04 And ATI Proprietary Drivers`_

Diagnostics
===========

To see if Compiz is running::

  ps ax | grep compiz

Plugins
=======

Expo
----

Default key *Super*, *e*.

Scale
-----

*Scale*, *Initiate Window Picker* (screen), select the window edge from the
pop-up dialog.

Snap
----

On a large monitor it can be useful to snap windows to the left-half or
right-half of the screen like Windows 7.  To do this:

- Install *CompizConfig Settings Manager*.
- Install ``wmctrl``:

  ::

    sudo apt-get install wmctrl

- Go to *General/Commands*, then add the following commands:

  ::

    Command line 0: wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz && WIDTH=`xdpyinfo | grep 'dimensions:' | cut -f 2 -d ':' | cut -f 1 -d 'x'` && HALF=$(($WIDTH/2)) && wmctrl -r :ACTIVE: -b add,maximized_vert && wmctrl -r :ACTIVE: -e 0,0,0,$HALF,-1
    Command line 1: wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz && WIDTH=`xdpyinfo | grep 'dimensions:' | cut -f 2 -d ':' | cut -f 1 -d 'x'` && HALF=$(($WIDTH/2)) && wmctrl -r :ACTIVE: -b add,maximized_vert && wmctrl -r :ACTIVE: -e 0,$HALF,0,$HALF,-1
    Command line 2: wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
    Command line 3: wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz

  You can then bind these commnds to keys so that (for example) when you press
  <Ctrl><Super>Left the window takes up the left half of the screen etc.


.. _`Howto Ubuntu: Compiz Fusion on Your Desktop`: http://www.linuxhaxor.net/?p=1803
.. _`Ubuntu 11.04 And ATI Proprietary Drivers`: http://www.ubunturoot.com/2011/05/ubuntu-1104-and-ati-proprietary-drivers.html
.. _`Using Compiz As A Window Management Tool`: http://maketecheasier.com/compiz-windows-management-tool/2010/07/15

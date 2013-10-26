XBMC
****

Overview
========

IRC chat in irc/freenode ``#xbmc-dev`` 16/04/2013:

::

  12:37:48  pkimber | I am writing a python addon with <extension point="xbmc.service"                     │
                    | library="default.py" start="startup">                                                │
  12:38:33  pkimber | How do I get the handle of the plugin?  The standard code appears to be 'handle =    │
                    | sys.argv[1]'                                                                         │
  12:42:32  pkimber | But 'sys.argv' just contains a single empty string i.e. ['']                         │
  13:07:05 cptspiff | no handles for services.                                                             │
  13:07:12 cptspiff | it's not a plugin.                                                                   │
  13:12:33  pkimber | OK                                                                                   │
  13:13:16  pkimber | Sounds like I don't understand what a service is.  I will do some reading.  Thank    │
                    | you for your help.                                                                   │
  13:13:35 cptspiff | more likely you don't understand what a plugin is :)                                 │
  13:20:28  pkimber | OK.  You are probably correct.  The Wiki appears to talk about plugins and addons as │
                    | if they are the same thing.                                                          │
  13:21:23 cptspiff | they are not. plugins are a particular type of addon                                 │
  13:21:31 cptspiff | they are script that integrates with our virtual file system                         │
  13:21:34 cptspiff | *scripts                                                                             │
  13:22:07 cptspiff | to handle this, we need a handle to identify the vfs context                         │
  13:22:13 cptspiff | so handles are only relevant for plugins                                             │
  13:22:20 cptspiff | services are just scripts that are autostarted                                       │
  13:25:19  pkimber | So can I setup a service to auto-start, and then run a standard plugin from that     │
                    | service?                                                                             │
  13:29:31 cptspiff | why do you want to run a plugin from a service?                                      │
  13:29:57 cptspiff | it only makes sense to run a plugin when we want to list a directory in some media   │
                    | window                                                                               │
  13:30:43 cptspiff | a service is just a script. if you just want to do some one-off stuff do that and    │
                    | you are done. if you want to actually write a service type script, you have to take  │
                    | care of looping yourself                                                             │
  13:30:51  pkimber | I want XBMC to start-up and then download some short videos (adverts) and then play  │
                    | them.                                                                                │
  13:31:06 cptspiff | nothing there that require a plugin                                                  │
  13:32:19  pkimber | So is that a script/service?                                                         │
  13:32:46 cptspiff | well, it's a script you want launched on startup. so it falls in the service add-on  │
                    | category yes                                                                         │
  13:33:40  pkimber | Thank you.  You have been very helpful indeed.  I will give it a go...               |

Development
===========

Standard install of XBMC on Ubuntu, I find the ``addons`` folder in:

::

  /usr/share/xbmc

Running XBMC as myself and installing an add-on, installs it into this folder:

::

  /home/patrick/.xbmc/addons

Logging
-------

Switch on debugging... *System*, *Debugging*, *Enable debug logging*...

The home screen will now show the location of the log file e.g.
``~/.xbmc/temp/xbmc.log``

xbmcswift2
----------

To develop add-ons, check out ``xbmcswift2``

http://www.xbmcswift.com/

::

  pip install xbmcswift2
  workon xbmcswift2

  xbmcswift2 create

  cd plugin.your.addon.folder
  xbmcswift2 run once

To run your add-on in XBMC, link the dev folder to your local add-on folder:

::

  cd ~/.xbmc/addons/
  ln -s /home/patrick/repo/csw/xbmc/plugin.video.advert

Getting issues with ``sys.argv`` on startup.

This description might help:
http://forum.xbmc.org/showthread.php?tid=161524&pid=1387749#pid1387749

::

  import xbmcaddon
  setting1 = xbmcaddon.Addon().getSetting("your_setting1") 

rather than:

::

  setting = xbmcplugin.getSetting(int(sys.argv[1]), 'somesetting')

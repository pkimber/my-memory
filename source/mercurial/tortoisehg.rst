TortoiseHG
**********

Install
=======

Linux
-----

Note: Don't think the following worked for me...

`TortoiseHg PPA Packagers: Releases`_:

Add the following to your system's Software Sources:

- If using Ubuntu 9.10 (karmic), add

  ::

    ppa:tortoisehg-ppa/releases

- If using Ubuntu 9.04 (jaunty), add

  ::


    deb http://ppa.launchpad.net/tortoisehg-ppa/releases/ubuntu jaunty main

WinMerge
========

`How can I use WinMerge as my visual diff tool?`_

- Edit the Mercurial configuration file in your home folder:

  ::

    C:\Users\patrick\Mercurial.ini

- Add the following:

  ::

    [extdiff]
    cmd.winmerge = C:\Program Files\WinMerge\WinMergeU.exe
    opts.winmerge = /e /x /ub /wl

- In the TortoiseHG *commit* window, select *Tools*, *Settings*.
- In the *TortoiseHG* tab, select ``winmerge`` as the *Visual Diff Command*.



.. _`TortoiseHg PPA Packagers: Releases`: https://launchpad.net/~tortoisehg-ppa/+archive/releases
.. _`How can I use WinMerge as my visual diff tool?`: http://bitbucket.org/tortoisehg/stable/wiki/FAQ#how-can-i-use-winmerge-as-my-visual-diff-tool


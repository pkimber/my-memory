Folders
*******

Delete a folder:
================

::

  rm -r <folder name>

Copy a folder
=============

http://www.tuxfiles.org/linuxhelp/dirman.html

If you've already tried to copy a directory with cp, you've probably noticed
that cp just complains at you. Probably it says something like
``cp: omitting directory``.

You see, the cp command wants you to use the -r option if you want to copy a
directory with its contents. The -r means "copy recursively":

::

  cp -r dir1 dir2

The above creates a directory named dir2 whose contents will be identical to
dir1.  However, if dir2 already exists, nothing will be overwritten, the
directory dir1 will be copied into the dir2 directory under the name dir2/dir1.

Install
=======

http://www.tuxfiles.org/linuxhelp/linuxdir.html

Shared Data
-----------

::

  /usr/

This directory contains user applications and a variety of other things for
them, like their source codes, and pictures, docs, or config files they use.
/usr is the largest directory on a Linux system, and some people like to have
it on a separate partition. Some interesting stuff in /usr:

::

  /usr/share/

Config files and graphics for many user apps.

Local Applications
------------------

::

  /usr/local/

This is where you install apps and other files for use on the local machine.
If your machine is a part of a network, the /usr directory may physically be
on another machine and can be shared by many networked Linux workstations.
On this kind of a network, the /usr/local directory contains only stuff that
is not supposed to be used on many machines and is intended for use at the
local machine only.

Most likely your machine isn't a part of a network like this, but it doesn't
mean that /usr/local is useless. If you find interesting apps that aren't
officially a part of your distro, you should install them in /usr/local.
For example, if the app would normally go to /usr/bin but it isn't a part of
your distro, you should install it in /usr/local/bin instead. When you keep
your own programs away from the programs that are included in your distro,
you'll avoid confusion and keep things nice and clean.

::

  From: Paul B
  Sent: 12 April 2007 13:17
  To: Patrick Kimber
  Subject: RE: Java folder...

  I normally go with /usr/share or /opt but you can install it wherever you
  like tbh.  The standard unix directory structure does suggest specific places
  for things, such as /opt is for optional software, /var is for variable data,
  /usr/local is for things that have been added locally.  Some distributions
  install some things into /usr/local where another distribution might have
  installed that same application into /usr/share.

  I just dug these out from google;

  /usr/local is for programs and data files that have been added locally to the
  system, independently of the particular GNU/Linux distribution. These are
  intended to be kept separate from the main system directories that are
  managed by the distribution.

  /usr/share is typically for architecture independent files.

  Paul.

Size
====

`How to find - Size of a directory and Free disk space`_

- Display a summary of the directory size:

  ::

    du -sh
    du -sh ./dovecot/mail/*

- This would display the size of the current directory excluding the size of
  the subdirectories that exist within that directory:

  ::

    du -Sh


.. _`How to find - Size of a directory and Free disk space`: http://www.codecoffee.com/tipsforlinux/articles/22.html

FTP and SFTP
************

Links
=====

- `Linux / Unix Command: ftp`_

Commands
========

===============================  ===============================================================
bye                              quit session.
ls                               list contents of remote folder (prefix with ``!`` for local).
cd *folder name*                 change into the folder.
cdup                             change into the parent folder.
get *remote file* [local file]   download a remote file.
lcd                              change (or display) the local folder.
mput \*.jpg                      upload all files ending with ``.jpg``.
pwd                              print current directory.
put *local file* [remote file]   store a file on a remote machine.
===============================  ===============================================================

Sample
======

::

  $ ftp files.honey.com
  ftp> ls
  drwxr-xr-x   3 matt     (?)          4096 Jun 24 15:55 tutorials
  drwxr-xr-x   3 matt     (?)          4096 Mar 18 07:47 dave
  ftp> cd "tutorials"
  ftp> ls
  -rw-r--r--   1 matt     (?)      37093620 Oct 15  2009 ProductDemo.mp4
  ftp> get ProductDemo.mp4
  local: ProductDemo.mp4 remote: ProductDemo.mp4
  106354807 bytes received in 9.04 secs (11487.1 kB/s)
  ftp> bye


.. _`Linux / Unix Command: ftp`: http://linux.about.com/od/commands/l/blcmdl1_ftp.htm

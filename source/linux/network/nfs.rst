NFS
***

Links
=====

- http://www.troubleshooters.com/linux/nfs.htm
- `Export a directory to all clients via NFSv4, read/write`_
- http://brunogirin.blogspot.com/2010/03/shared-folders-in-ubuntu-with-setgid.html
  `Shared Folders in Ubuntu with setgid and ACL`_

Note
====

- For NFS to work correctly on a small network, the user and group ID's must
  match the ID's on the server.  See the :doc:`../security/users` notes for
  details on how to change user and group ID's.

Configuration
=============

- Edit the NFS configuration in:

  ::

    /etc/exports


  Here is a sample configuration:

  ::

    /export/srv            192.168.1.0/24(sync,secure,subtree_check,rw,hide)

  Here are some of the options:

  ::

    sync                 reply after changes have been committed to storage.
    secure               requests must originate on a port less than 1024.
    subtree_check        verify requested file is in exported tree.
    rw                   allow both read and write requests on this volume.
    hide                 do not reveal nested directories.

- After changing the configuration, export the directories:

  ::

    exportfs -a

Sample
======

- On the server, create the folder you want to share:

  ::

    /tmp/nfstest

- On the server, add the share to ``/etc/exports`` :

  ::

    /tmp/nfstest    *(rw,no_root_squash,sync)

- From the client, mount the share:

  ::

    cd /tmp
    mkdir nfstest
    mount saasjspdev1:/tmp/nfstest /tmp/nfstest

- To auto mount the share on restart, add the mount point to ``/etc/fstab`` on
  the client:

  ::

    saasjspdev1:/tmp/nfstest    /tmp/nfstest    nfs     defaults    0    0


.. _`Export a directory to all clients via NFSv4, read/write`: http://www.commandlinefu.com/commands/view/7089/export-a-directory-to-all-clients-via-nfsv4-readwrite
.. _`Shared Folders in Ubuntu with setgid and ACL`: http://brunogirin.blogspot.com/2010/03/shared-folders-in-ubuntu-with-setgid.html


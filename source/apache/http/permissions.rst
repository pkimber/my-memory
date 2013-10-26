Permissions
***********

Links
=====

- `How can I give write-access of a folder to all users in linux?`_

Sample
======

To allow Apache to read and write to the ``myfolder`` folder:

- Add the user to the ``www-data`` group:

  ::

    sudo usermod -a -G www-data patrick

- For the folder, change the group and set the correct file permissions:

  ::

    sudo chgrp -R www-data myfolder/
    sudo chmod -R g+w myfolder/

- Set *GID*, so that all new files and directories created are owned by the
  ``www-data`` group:

  ::

    sudo find myfolder/ -type d -exec chmod 2775 {} \;

- Add read and write permission for owner and group:

  ::

    sudo find myfolder/ -type f -exec chmod ug+rw {} \;


.. _`How can I give write-access of a folder to all users in linux?`: http://superuser.com/questions/19318/how-can-i-give-write-access-of-a-folder-to-all-users-in-linux


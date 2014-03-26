Fix Permissions
***************

From `Need to fix file permissions in a users home directory`_

::

  find /home/user -type f -exec chmod 0664 {} \;
  find /home/user -type d -exec chmod 0755 {} \;


.. _`Need to fix file permissions in a users home directory`: http://serverfault.com/questions/35076/need-to-fix-file-permissions-in-a-users-home-directory

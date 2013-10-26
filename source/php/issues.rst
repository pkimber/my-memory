PHP - Issues
************

Blank Page
==========

`Apache 2.0.x on Microsoft Windows`_

Had a blank page when browsing to a PHP test page which contained:

::

  <? phpinfo(); ?>

...to solve the problem, don't use *short open tags* (whatever they are):

::

  <?php
      phpinfo();
  ?>

Download
========

`Apache MySQL and PHP`_

Does your browser ask if you want to download the php file instead of
displaying it?  If Apache is not actually parsing the php after you restarted
it, install ``libapache2-mod-php5``.  It is installed when you install the
``php5`` package, but may have been removed inadvertently by packages which
need to run a different version of php.

You may also need to actually enable it, by doing ``sudo a2enmod php5``
followed by ``sudo /etc/init.d/apache2 restart``.  If ``sudo a2enmod php5``
returns ``"$ This module does not exist!"``, you should purge (not just
remove) the ``libapache2-mod-php5`` package and reinstall it.

Be sure to clear your browser's cache before testing your site again.


.. _`Apache 2.0.x on Microsoft Windows`: http://us.php.net/manual/en/install.windows.apache2.php
.. _`Apache MySQL and PHP`: https://help.ubuntu.com/community/ApacheMySQLPHP


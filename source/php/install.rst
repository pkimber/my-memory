PHP - Install (Apache 2)
************************

Test
====

http://localhost/test.php

Download
========

Download the PHP ZIP file, ``php-5.3.0-Win32-VC6-x86.zip``
from http://windows.php.net/download/.

**Note**:

- Don't download the installer...
- Make sure you download the ``VC6`` version of the files
  **if using PHP with Apache**.

Install
=======

- Extract the archive.  I extracted to:

  ::

    e:\php\

- In the ``php`` folder, rename ``php.ini-production`` to ``php.ini``.

Configuration
=============

- In the ``php.ini`` file, set the ``timezone``:

  ::

    [Date]
    ; Defines the default timezone used by the date functions
    ; http://php.net/date.timezone
    date.timezone = 'Europe/London'

- In Apache ``httpd.conf``, add the following (adjust path if you need to):

  ::

    LoadModule php5_module "e:/php/php5apache2.dll"
    AddType application/x-httpd-php .php

    # configure the path to php.ini
    PHPIniDir "e:/php"

  **Note**: For Apache 2.2, you will need ``php5apache2_2.dll`` rather than
  ``php5apache2.dll``.

- The `WordPress Apache notes`_ contain some useful
  bits and pieces...

Test
====

- Create an Apache directory in ``httpd.conf``:

  ::

    Alias /interblog "E:/interblog"
    <Directory "E:/interblog">
      AllowOverride None
      Options None
      Order allow,deny
      Allow from all
    </Directory>

  **Note**:

  - For Apache 2.2 remove the ``Order`` and ``Allow`` directives.
  - The ``Alias`` directive requires the ``mod_alias.so`` module:

    ::

      LoadModule alias_module modules/mod_alias.so

- Create a ``test.php`` file containing the following:

  ::

    <html>
        <head>
            <title>PHP Test Page</title>
        </head>
        <body>
            <h1>PHP Test Page</h1>
            <?php
                 phpinfo();
            ?>
        </body>
    </html>

- Browse to the file (will be a URL like
  http://localhost/interblog/test.php):


.. _`WordPress Apache notes`: ../wordpress/apache.html


Backup
******

From `Backing up a site`_

Backup the MySQL database using standard MySQL commands.

It is recommended to have a backup of *ALL* the files in case any have been
modified.

If you don't backup everything:

``/sites/all/modules/``

  Failure to do this may leave you with no clear example of which modules you
  had, and what versions they were.

*Administer*, *Site Configuration*, *File System*

  The folder where (uploaded) files are stored.  On my site:
  ``sites/default/files``

``/sites/``

  Contains themes, logos and embedded images.


.. _`Backing up a site`: https://drupal.org/node/22281

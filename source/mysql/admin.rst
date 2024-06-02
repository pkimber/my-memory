Admin
*****

Move Data Directory
===================

- Stop the MySQL database service.
- Open the ``my.ini`` file in a text editor::

  ::

    C:\Program Files\MySQL\MySQL Server 5.1\my.ini

- Make a note of the value of the ``datadir`` property.

  ::

    datadir="C:/Documents and Settings/All Users/Application Data/MySQL/MySQL Server 5.1/Data/"

- Create a new folder to hold the MySQL data and update the ``datadir``
  property in ``my.ini``:

  ::

    datadir="R:/mysql/data/"

- **Copy the contents of the old data folder to the new data folder**.
- Re-start the MySQL database service.


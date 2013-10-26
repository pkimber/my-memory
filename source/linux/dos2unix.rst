dos2unix
********

Note: For a cross platform solution, try `python EOL fixer`_

Install
=======

::

  apt-get install tofrodos

Usage
=====

::

  fromdos wip.rst
  todos README.txt

To convert a Mac file to Linux format:

::

  dos2unix -c mac detail.html

Note: the ``fromdos`` command used to be:

::

  dos2unix tools.txt

`To run dos2unix recursively`_

::

  find . -type f -exec dos2unix {} \;


.. _`python EOL fixer`: http://pypi.python.org/pypi/eolfixer
.. _`To run dos2unix recursively`: http://www.commandlinefu.com/commands/view/3227/dos2unix-recursively

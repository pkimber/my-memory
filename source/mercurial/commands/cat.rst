cat
***

To view the contents of a particular revision of a file:

::

  hg cat -r5 trac.ini
  hg cat -r0 -o c:\temp\trac.ini trac.ini

Note:

- The second example writes revision 0 to the file in the ``temp`` folder.
- To view a very early revision of a file which has been moved:

  ::

    hg log -v -f src/collection/complete.py
    cat -r 51 src/collection_complete.py

  In this example, the log command has the ``-v`` parameter which will show
  the name and path of the file as it was at the time.  The ``cat`` command
  must use the original name of the file.

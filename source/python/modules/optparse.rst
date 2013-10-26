optparse
********

Links
=====

- http://docs.python.org/library/optparse.html
- `Python's optparse for human beings`_
- `Writing Command Line Utilities with Python and Optparse`_

Alternatives
------------

- http://micheles.googlecode.com/hg/plac/doc/plac.html
  Plac: Parsing the Command Line the Easy Way.
- http://pypi.python.org/pypi/CLIArgs
  Absolutely trivial command line arguments...
  (Didn't work for me)...

Sample
======

::

  def main():
      from optparse import OptionParser
      usage = "usage: %prog [options] FILENAME"
      description = """Split a test file into chunks."""
      parser = OptionParser(usage)
      parser.description = description
      parser.add_option("-v", "--verbose",
          action="store_true",
          default=True)
      parser.add_option("-c", "--count",
          type="long",
          help="Split file every COUNT number of lines.")
      # Set defaults.
      parser.set_defaults(count=1000000)
      (options, args) = parser.parse_args()
      if not options.count:
          parser.print_help()
          parser.error("The count parameter is missing.")
      if len(args) != 1:
          parser.error("incorrect number of arguments")
      file_name = args[0]
      if options.verbose:
          print 'Split %s every %s lines.' % (file_name, options.count,)
      file_splitter = FileSplitterLineCount()
      file_splitter.do_work()

  if __name__ == "__main__":
      main()


.. _`Python's optparse for human beings`: http://www.alexonlinux.com/pythons-optparse-for-human-beings
.. _`Writing Command Line Utilities with Python and Optparse`: http://www.wdvl.com/Authoring/python/optparse/ralph_heimburger10152009.html

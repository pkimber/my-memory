argparse
********

.. highlight:: python

::

  import argparse

  if __name__ == '__main__':
      parser = argparse.ArgumentParser(
          description='Release project ready for offline deploy'
      )
      parser.add_argument(
          dest='package',
          help="package name e.g. 'kbsoftware_couk'"
      )
      parser.add_argument(
          dest='version',
          help="version number e.g. '0.0.02'"
      )
      args = parser.parse_args()
      run(args.package, args.version)

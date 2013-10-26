Setup in Eclipse
****************

See ``readme.txt`` in jackrabbit folder:

Says to:

::

  cd api
  maven jar:install
  cd ../commons
  maven jar:install
  cd ../core
  maven jar:install

I did this first to make sure jackrabbit compiled under maven

I then did the same but did ``maven eclipse``

I then imported the three projects (api, commons and core) into Eclipse

See ``setup.txt`` ref the ``VM arguments`` for security.


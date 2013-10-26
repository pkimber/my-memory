Bootstrap
*********

Links
=====

- http://jetstrap.com/
  Interface-building tool

Build
*****

- Install :doc:`../../javascript/node/packages/less`
- Install :doc:`../../javascript/node/packages/uglify`
- Check out the Bootstrap source code:

  ::

    cd ~/repo/src
    git clone git://github.com/twitter/bootstrap.git

- Activate a virtual environment using ``nave``:

  ::

    nave use 0.4.9

- Build:

  ::

    cd bootstrap
    make

- I think the ``css`` and ``js`` files are in the ``docs/assets`` folder.

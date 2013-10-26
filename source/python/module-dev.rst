Module Development
******************

Links
=====

- **Start by checking out my notes** in :doc:`distutils/getting-started`.
- `Filesystem structure of a Python project`_
  (Note: This isn't the article related to the instructions below).
- http://guide.python-distribute.org/
  The Hitchhiker's Guide to Packaging...

Setup
=====

::

  virtualenv --no-site-packages ~/repo/env/env-my-project
  . ~/repo/env/env-my-project/bin/activate
  pip install PasteScript
  paster create -t basic_package my-project
  cd my-project
  hg init
  hg add --exclude *egg-info
  hg ci -m "Start of my project."
  pip install nose
  pip install coverage

Development
===========

::

  nosetests --with-coverage --nocapture

Distribute
==========

::

  python setup.py sdist


.. _`Filesystem structure of a Python project`: http://jcalderone.livejournal.com/39794.html


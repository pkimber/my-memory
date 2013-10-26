Getting Started
***************

jython
======

If testing Java/jython projects, then use ``jython`` rather than ``python``.

Install jython
--------------

- :doc:`../../jython/getting-started`
- :doc:`../../jython/easy_install`
- :doc:`../../jython/virtualenv`

Create a test project
---------------------

In this example, ``test_swing_app`` is the name of the folder (and virtual
environment) for the test project:

::

  cd ~/a/suitable/folder/
  ~/bin/jython2.5.2/jython ~/bin/jython2.5.2/bin/virtualenv test_swing_app
  cd test_swing_app

Activate the virtual environment and install the robot framework:

::

  source bin/activate
  pip install robotframework
  jybot --version

python
======

::

  pip install robotframework
  pybot --version

Quick Start
===========

http://robotframework.googlecode.com/hg/doc/quickstart/quickstart.html

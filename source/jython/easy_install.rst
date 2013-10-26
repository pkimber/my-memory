easy_install
************

Install
=======

`Easy_install on jython 2.5`_:

Download http://peak.telecommunity.com/dist/ez_setup.py

::

  wget http://peak.telecommunity.com/dist/ez_setup.py

Run:

::

  ~/bin/jython2.5.3/jython ez_setup.py

An ``easy_install`` script should show up in your jython ``bin`` directory:

::

  ls -l ~/bin/jython2.5.3/bin/

Run ``easy_install`` as normal e.g:

::

  # linux
  ~/bin/jython2.5.3/bin/easy_install pip

  # Windows
  jython \tools\jython2.5rc4\bin\easy_install

You probably want to use :doc:`virtualenv`...


.. _`Easy_install on jython 2.5`: http://www.nabble.com/Easy_install-on-jython-2.5-td23525500.html

Macro - python
**************

Links
=====

- `Small hack on Python and OpenOffice.org`_.

Getting Started
===============

- On linux, the sample files can be found in:

  ::

    /usr/lib/openoffice/basis3.1/share/Scripts/python/

- OpenOffice will have created a ``~/.openoffice.org`` folder for you.  This
  folder will contains a ``Scripts`` folder.  We need to create a ``python``
  folder inside it for our scripts:

  ::

    cd ~/.openoffice.org/3/user/Scripts/
    mkdir python

- To get started, make a copy of one of the sample scripts e.g:

  ::

    cd ~/.openoffice.org/3/user/Scripts/python/
    cp /usr/lib/openoffice/basis3.1/share/Scripts/python/HelloWorld.py .

- To check the script is working, re-start OpenOffice and select *Tools*,
  *Macros*, *Organise Macros*, *Python*, *My Macros*.

  Inside the *My Macros* section you should see the ``HelloWorld`` script
  containing the ``HelloWorldPython`` class.

  Select ``HelloWorldPython`` and click *Run*.


.. _`Small hack on Python and OpenOffice.org`: http://my.opera.com/Jzarecta/blog/small-hack-on-python-and-openoffice-org


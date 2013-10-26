font
****

To Do
=====

- Try fonts, *Profont* and *Sheldon*.

Links
=====

- http://www.tobias-jung.de/seekingprofont/
  ProFont for Windows, Mac, Linux.
- `HOWTO: Ubuntu, ProFont, Emacs`_
- https://fedorahosted.org/liberation-fonts/
  - `Installing RedHat’s Free 'Liberation' Fonts`_

Install
=======

Microsoft
---------

::

  sudo apt-get install ttf-mscorefonts-installer

Custom
------

Note: This doesn't work...

Following these instructions:
`How to get ProFont working in Ubuntu`_:

- Download ``profont-x11.tar.gz`` from
  http://www.tobias-jung.de/seekingprofont/
- Change into your fonts folder:

  ::

    cd ~/.fonts/

- Extract the ProFont files:

  ::

    tar xzf ~/Downloads/font/profont-x11.tar.gz

- Make sure the ``~/.fonts.conf`` file contains the following:

  ::

    <?xml version="1.0"?><!DOCTYPE fontconfig SYSTEM "fonts.dtd">
    <fontconfig>
        <selectfont>
            <acceptfont>
                <pattern>
                    <patelt name="family"><string>ProFont</string></patelt>
                </pattern>
            </acceptfont>
        </selectfont>
    </fontconfig>

- Update the font cache:

  ::

    fc-cache -fv

- Re-start your applications... and you will be able to use the font...
  ref https://wiki.ubuntu.com/Fonts... you might need to log in and out...


.. _`HOWTO: Ubuntu, ProFont, Emacs`: http://www.fluidscape.co.nz/?q=node/92
.. _`Installing RedHat’s Free 'Liberation' Fonts`: http://ubuntu-tutorials.com/2007/10/30/installing-redhats-free-liberation-fonts/
.. _`How to get ProFont working in Ubuntu`: http://chrisacheson.net/blog/2009/03/21/how-to-get-profont-working-in-ubuntu

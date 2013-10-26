XPCOM - Getting Started
***********************

Links
=====

- `Geekout: How to make a C++ XPCOM Component`_
- `Mozilla Platform - XPCOM in C++`_
- `Problem in C++ Xpcom component Interface on firefox 3.0`_

Sample
------

The sample code for this project is in my repository:
http://toybox/hg/sample/file/tip/mozilla/xpcom/xpcom-test/

Setup
=====

Following the above blog:

- Download and install Visual C++ Express Edition.
- Download ``xulrunner-1.9.1.3.en-US.win32.sdk.zip`` from
  http://releases.mozilla.org/pub/mozilla.org/xulrunner/releases/1.9.1.3/sdk/
- Extract to a folder.  I extracted to:

  ::

    C:\src\xulrunner-1.9.1.3\

- Download ``wintools.zip`` from
  http://ftp.mozilla.org/pub/mozilla.org/mozilla/source/
- Open ``wintools.zip`` and copy:

  - ``buildtools/windows/bin/x86/glib-1.2.dll``
  - ``buildtools/windows/bin/x86/libIDL-0.6.dll``

  ...to the ``sdk/bin/`` folder of your ``xulrunner`` project e.g:

  ::

    C:\src\xulrunner-1.9.1.3\sdk\bin\

- Download ``xpcom-test.zip`` from
  http://starkravingfinkle.org/blog/wp-content/uploads/2006/10/

- Extract ``xpcom-test.zip`` into your ``xulrunner`` project folder e.g:

  ::

    C:\development\sample\mozilla\xpcom\xpcom-test\

Build
=====

- We need to regenerate the ``comp.h`` and ``comp.xpt`` files in the root of
  the ``xpcom-test`` project:

  - Change into the ``xpcom-test`` project folder:

    ::

      cd C:\development\sample\mozilla\xpcom\xpcom-test\

  - Edit the ``xpidl-build.bat`` file and update the ``sdk`` paths:

    ::

      C:\src\xulrunner-1.9.1.3\sdk\bin\xpidl.exe -m header -IC:\src\xulrunner-1.9.1.3\sdk\idl %1
      C:\src\xulrunner-1.9.1.3\sdk\bin\xpidl.exe -m typelib -IC:\src\xulrunner-1.9.1.3\sdk\idl %1

  - Regenerate the ``comp.h`` and ``comp.xpt`` files:

    ::

      xpidl-build.bat comp.idl

- Start Visual C++ Express Edition and open the solution file:

  ::

    C:\development\sample\mozilla\xpcom\xpcom-test\test.sln

- Edit the project properties changing the location of the header and library
  files from ``..\gecko-sdk\`` to ``..\\sdk\``.

  ::

    C:\src\xulrunner-1.9.1.3\sdk\include
    C:\src\xulrunner-1.9.1.3\sdk\lib

- Build the project.  The build will create a ``dll`` file:

  ::

    C:\development\sample\mozilla\xpcom\xpcom-test\Debug\test.dll

Deploy
======

Note: You might need to open a command prompt with Administrator permissions
before performing the next few steps.

- Create a Firefox development profile, :doc:`dev-profile`...
- Create a folder inside your Firefox profile for your component.  I created
  the ``component__xpcom-test`` folder:

  ::

    C:\Users\Patrick\AppData\Roaming\Mozilla\Firefox\Profiles\h33vgw96.dev-xpcom-test\component__xpcom-test\

- Copy the ``comp.xpt`` and ``Debug/test.dll`` files to your component folder:

  ::

    cd c:\development\sample\mozilla\xpcom\xpcom-test\
    copy comp.xpt C:\Users\Patrick\AppData\Roaming\Mozilla\Firefox\Profiles\h33vgw96.dev-xpcom-test\component__xpcom-test\
    copy Debug\test.dll C:\Users\Patrick\AppData\Roaming\Mozilla\Firefox\Profiles\h33vgw96.dev-xpcom-test\component__xpcom-test\

- To register the component, run ``regxpcom``:

  ::

    cd C:\src\xulrunner-1.9.1.3\bin\
    ..\sdk\bin\regxpcom.exe -x "C:\Users\Patrick\AppData\Roaming\Mozilla\Firefox\Profiles\h33vgw96.dev-xpcom-test\component__xpcom-test\"

  **Note**: It is important to run ``regxpcom.exe** from the ``bin`` folder
  (not ``sdk/bin``) because the command needs some of the ``dll`` files in the
  ``bin`` folder.

Test
====

- Re-start Firefox:

  ::

    "%ProgramFiles%\Mozilla Firefox\firefox.exe" -no-remote -P dev-xpcom-test

- Download this test page:
  http://wanderingstan.com/files/xpcom/xpcom-test.html.
  A copy of this page is in the root of the sample project: `xpcom-test.html`_

  Note: Copy this page to your workstation before opening it.  If you don't,
  Firefox will throw an exception:

  ::

    ``Error: A script from "http://toybox" was denied UniversalXPConnect privileges``.

  `This page from forums.mozillazine.org might be helpful...`_

- Load the test page in Firefox and click the test button.  With any luck,
  you'll see that 3+4=7.

  You can now start modifying the component.

  Be sure to go back and read the pages from `Alex Sirota`_ and `Mark Finkle`_
  for more details.


.. _`Geekout: How to make a C++ XPCOM Component`: http://wanderingstan.com/2007-11-16/geekout_how_to_make_a_c_xpcom_component
.. _`Mozilla Platform - XPCOM in C++`: http://starkravingfinkle.org/blog/2006/10/mozilla-platform-xpcom-in-c/
.. _`Problem in C++ Xpcom component Interface on firefox 3.0`: http://forums.mozillazine.org/viewtopic.php?f=19&t=1096635
.. _`xpcom-test.html`: http://toybox/hg/sample/file/tip/mozilla/xpcom/xpcom-test/xpcom-test.html
.. _`This page from forums.mozillazine.org might be helpful...`: http://forums.mozillazine.org/viewtopic.php?f=19&t=991425&p=5225365
.. _`Alex Sirota`: http://www.iosart.com/firefox/xpcom/
.. _`Mark Finkle`: http://starkravingfinkle.org/blog/2006/10/mozilla-platform-xpcom-in-c/


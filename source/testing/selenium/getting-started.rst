Getting Started
***************

**NOTE: For Selenium 2.0 (and above), I think we just need to
``pip install selenium``.  No need to install the stuff below...**

Links
=====

- http://seleniumhq.org/
- :doc:`links`

FireFox extension
=================

**Note**: I think the FireFox extension is mainly useful for building the XPath
selectors.  I don't think the FireFox extension will build python scripts for
use with version 2 of Selenium.  Currently the version 2 scripts for python
will need to be hand-coded.  For a sample script see :doc:`python`.

Install
-------

Install the FireFox extension from the `Selenium IDE: Downloads page`_.

Usage
-----

- Open the *Selenium IDE* by selecting *Tools*, *Selenium IDE*.  Note: The
  record button will already be selected.
- Record your actions in the browser.
- To add a test, select some text and right click...  The IDE will present a
  list of test outlines...
- To finish the test, click the *record* button.
- To replay the test, click the *play* button.
- To save the *File*, *Export Test Case As...*, *Python 2 (Remote Control)* or
  (for WebDriver, *JUnit 4 WebDriver Backed*).


.. _`Selenium IDE: Downloads page`: http://www.openqa.org/selenium-ide/download.action

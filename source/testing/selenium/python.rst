python
******

.. highlight:: python

Install
=======

::

  pip install selenium

Usage
=====

- Follow the instructions in :doc:`getting-started`.

*Note*: For setting up the test driver for the class, see
:doc:`../../python/testing/unittest/setup`

Sample
------

From http://pypi.python.org/pypi/selenium:

::

  from selenium import webdriver
  from selenium.common.exceptions import NoSuchElementException
  from selenium.webdriver.common.keys import Keys
  import time

  browser = webdriver.Firefox() # Get local session of firefox
  browser.get("http://www.yahoo.com") # Load page
  assert "Yahoo!" in browser.title
  elem = browser.find_element_by_name("p") # Find the query box
  elem.send_keys("seleniumhq" + Keys.RETURN)
  time.sleep(0.2) # Let the page load, will be added to the API
  try:
      browser.find_element_by_xpath("//a[contains(@href,'http://seleniumhq.org')]")
  except NoSuchElementException:
      assert 0, "can't find seleniumhq"
  browser.close()

Chrome
======

To use the ``webdriver`` for Chrome:

- Change the code from ``webdriver.Firefox()`` to ``webdriver.Chrome()``.
- Download *ChromeDriver server for linux* from
  http://code.google.com/p/selenium/downloads/list
  (I downloaded ``chromedriver_linux64_13.0.775.0.zip``).
- Extract the contents of the archive to a folder on your ``PATH``.  I copied
  ``chromedriver`` to ``~/bin/``
- Run your tests.

Issues
======

If you get the following error, it is probably because you are using remote
control (RC) and the Selenium Server is not installed and running:

::

  error: [Errno 111] Connection refused

To solve this issue, use Selenium 2 i.e. ``webdriver.Firefox`` (see sample
above).  You don't need Selenium Server when using version 2.

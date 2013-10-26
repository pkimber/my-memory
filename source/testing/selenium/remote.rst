Remote
******

Links
=====

- `Remote WebDriver`_
- `Remote WebDriver Server`_

Remote
======

On the remote workstation, download ``selenium-server-standalone-2.14.0.jar``
from http://code.google.com/p/selenium/downloads/list

Start the server:

::

  java -jar selenium-server-standalone-2.14.0.jar

Client
======

For the client software in python, just do the normal install
(``pip install selenium``).

Cannect to a ``Remote`` server.  In this example, ``192.168.1.100`` is the IP
address of the remote machine:

::

  self.browser = webdriver.Remote(
      command_executor='http://192.168.1.100:4444/wd/hub',
      desired_capabilities=DesiredCapabilities.INTERNETEXPLORER,
  )


.. _`Remote WebDriver`: http://code.google.com/p/selenium/wiki/RemoteWebDriver
.. _`Remote WebDriver Server`: http://code.google.com/p/selenium/wiki/RemoteWebDriverServer

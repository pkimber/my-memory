Requests
********

.. highlight:: python

.. code-block:: bash

  pip install requests==2.4.3

Download
========

::

  import os
  import requests
  import shutil

  def download_image(url):
      response = requests.get(url, stream=True)
      file_name = os.path.join('image', 'img.png')
      with open(file_name, 'wb') as out_file:
          shutil.copyfileobj(response.raw, out_file)
      print(file_name)

Issues
======

Error::

  InsecurePlatformWarning: A true SSLContext object is not available.
  This prevents urllib3 from configuring SSL appropriately and may cause
  certain SSL connections to fail.

From InsecurePlatformWarning_::

  pip install requests[security]

.. note:: this is not required for python-2.7.9+

.. _InsecurePlatformWarning: http://stackoverflow.com/questions/29099404/ssl-insecureplatform-error-when-using-requests-package

JSON
====

To check if the response contains ``json``, I tried this::

  if response.content:
      self._json(f, response.json(), 'Response')

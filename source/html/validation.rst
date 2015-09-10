Validation
**********

.. highlight:: bash

Links
=====

- http://validator.w3.org/
  W3C Markup Validation Service.
- `CSE HTML Validator`_.  The *Lite* version of this product immediately found
  the error I was looking for.
- `HTML Tidy Library Project`_

W3C Markup Validation Service.
==============================

Use the online service https://validator.w3.org/

Or download the ``jar`` file from
https://github.com/validator/validator/releases/

I downloaded::

  wget https://github.com/validator/validator/releases/download/15.6.29/vnu.jar_15.6.29.zip
  unzip vnu.jar_15.6.29.zip

Run the validator::

  java -jar ./dist/vnu.jar http://localhost:8000/links/

HTML Tidy
=========

::

  sudo apt-get install tidy

I downloaded an HTML page from our site using :doc:`../python/modules/httpie`::

  http GET http://localhost:8000/links/ > out.html

Run ``tidy``::

  tidy --indent auto --indent-spaces 2 source.html > out.html 2> tidy.out


.. _`CSE HTML Validator`: http://www.htmlvalidator.com/
.. _`HTML Tidy Library Project`: http://tidy.sourceforge.net/

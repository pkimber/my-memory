Beautiful Soup
**************

.. highlight:: python

A python HTML/XML parser designed for quick turnaround of projects like
screen-scraping.

Links
=====

- Documentation_
- http://www.crummy.com/software/BeautifulSoup/
- `html5lib is the new, better BeautifulSoup`_,
  http://code.google.com/p/html5lib/

Install
=======

::

  pip install beautifulsoup

Note: For earlier versions of python, it might be best to install:

::

  pip install beautifulsoup==3.0.8

... for more information see `Having problems with Beautiful Soup 3.1.0?`_

Sample
======

For more details, see Documentation_:

::

  html = '...

  from BeautifulSoup import BeautifulSoup
  soup = BeautifulSoup(html)

  soup.find('label')
  >>> <label for="id_name">Place name</label>

  soup.findAll('label')
  >>> [<label for="id_name">Place name</label>, <label>Place name</label>]

  soup.findAll(id='id_name')
  >>> [<input name="name" value="East Anstey" class="textInput" maxlength="45" type="text" id="id_name" />]

Attributes
----------

::

   soup = BeautifulSoup(html)
   # get the first element
   element = soup.contents[0]
   # copy the elements to a dict
   dict(element.attrs)

Text
----

::

  soup.findAll(text='ABC')


.. _`Beautiful Soup`: http://www.crummy.com/software/BeautifulSoup/
.. _`Having problems with Beautiful Soup 3.1.0?`: http://www.crummy.com/software/BeautifulSoup/3.1-problems.html
.. _`html5lib is the new, better BeautifulSoup`: http://twitter.com/#!/raymondh/status/1746646673129472
.. _Documentation: http://www.crummy.com/software/BeautifulSoup/documentation.html

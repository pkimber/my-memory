Selectors
*********

Links
=====

- `Selenium 2 Examples`_

CSS
===

Find a link, and then find the image within the link, and then click on the
image e.g:

.. code-block:: python

  link = self.browser.find_element_by_css_selector('a[href*="llorenna"]')
  image_link = links[0].find_element_by_tag_name('img')
  image_link.click()

This will work with HTML like this:

.. code-block:: html

  <a href="/feature/news/kelly-llorenna/">
    <img align="left" alt="Read more" src="http://cloud.com/img/button.png">
  </a>


.. _`Selenium 2 Examples`: http://seleniumexamples.com/blog/examples/selenium-2-examples/

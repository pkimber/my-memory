Project Management - Web Site
*****************************

Checklist
=========

Business
--------

- `Add the business details to Google places`_...

Django
------

- Django_

DNS
---

- Make sure the web server is set-up to display something which makes sense
  e.g. an under construction page or the actual site.  We don't want Google to
  index something it shouldn't (perhaps another site hosted on the same Apache
  server).

HTML
----

- Make sure the site is accessible_.

Search
------

- `Ask Google to index the site`_...
- `Submit a site map to Google`_...
- `Set-up a cron job for updating the site map`_...
- `Submit the page to Yahoo search`_...
- `Submit the page to DMOZ`_...

Static HTML
-----------

- Create and deploy a robots.txt_ file.


.. _`Add the business details to Google places`: http://www.google.com/local/add/businessCenter
.. _`Ask Google to index the site`: ../google/search.html
.. _`Set-up a cron job for updating the site map`: ../google/search.html
.. _`Submit a site map to Google`: ../google/search.html
.. _`Submit the page to DMOZ`: ../seo/tips.html
.. _`Submit the page to Yahoo search`: ../seo/tips.html
.. _accessible: ../design/accessibility.html
.. _Django: ../django/checklist.html
.. _robots.txt: ../http/robots.html

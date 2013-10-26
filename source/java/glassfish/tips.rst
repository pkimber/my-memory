Tips
****

Running a batch of commands
===========================

::

  asadmin multimode --file filename ...

...where filename contains the commands one per line...

Hosting static web pages in GlassFish
=====================================

`Hosting static web pages in GlassFish`_

- Navigate to the ``docroot`` folder

  ::

    domains/domain1/docroot/

- Create a folder to contain your pages e.g.

  ::

    domains/domain1/docroot/myworld/

- Copy your web pages into the folder:

  e.g. copy ``index.htm`` to the ``myworld`` folder:

  ::

    cp index.htm domains/domain1/docroot/myworld/

- Access your web pages...

  http://localhost:8080/myworld/index.htm


.. _`Hosting static web pages in GlassFish`: http://blogs.sun.com/bharath/entry/hosting_static_web_html_pages


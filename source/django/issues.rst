Issues
******

AttributeError
==============

SettingNotSet instance has no attribute 'args'
----------------------------------------------

Check the exception traceback; if you can see ``CacheNotRespondingError``
then this error is probably caused by errors reading from the cache.  To
solve the problem, start the ``memcached`` service.

str object has no attribute resolve
-----------------------------------

::

  urlresolvers.py in resolve, line 218
  'str' object has no attribute 'resolve'
  # Also (at a later date), the following error message:
  AttributeError: 'list' object has no attribute 'handler500'

This blog entry was helpful,
`Django: AttributeError: 'str' object has no attribute 'resolve'`_

...but, the problem turned out to be with my ``ROOT_URLCONF`` where I had
a list:

::

  ROOT_URLCONF = ['django_satchmo_site_shop.urls']

...where it should have been a simple string i.e:

::

  ROOT_URLCONF = 'django_satchmo_site_shop.urls'

Values instance has no attribute 'default_reference_context'
------------------------------------------------------------

`Problem with restructuredtext in markup module`_.

After installing ``docutils`` (``pip install docutils``), had the
following exception:

::

  Values instance has no attribute 'default_reference_context'

To solve the problem, comment out:

::

  docutils.parsers.rst.roles.DEFAULT_INTERPRETED_ROLE = 'cmsreference'

...in...

::

  django/contrib/admindocs/utils.py

Error
=====

Error: No module named
----------------------

I was running the following command from within a virtual environment:

::

  # django-admin shell --settings=settings_test
  Error: No module named messages

Turns out I was using the ``django-admin`` from:

::

  /usr/lib/python2.4/site-packages/django/bin/django-admin.py

...when I should have been using ``django-admin`` from the virtual environment.
To diagnose this, run the following:

::

  which django-admin
  which python
  find / -name django-admin.py

To solve the problem, I ran the following (from within my virtual
environment):

::

  python /path/to/my/virtual/env/bin/django-admin.py  shell --settings=settings_test

ImproperlyConfigured
====================

When running tests, I had the following error:

::

  django.core.exceptions.ImproperlyConfigured:
  App with label item_request could not be found

Turns out my ``PYTHONPATH`` setting didn't include the current folder.  To
solve the problem, add the current folder to the ``PYTHONPATH`` e.g:

::

  PYTHONPATH=.:../my_other_app; export PYTHONPATH


add2virtualenv
--------------

Note: If using ``add2virtualenv`` make sure to add the current folder
**before** other folders i.e: edit ``virtualenv_path_extensions.pth`` and make
sure the current folder is first in the list:

::

  add2virtualenv .
  cdsitepackages
  vim virtualenv_path_extensions.pth

django-debug-toolbar
--------------------

I also had the same error message after installing :doc:`./debug/toolbar`.  To
solve the issue, just remove the toolbar!

runserver
=========

Error: That port is already in use.
-----------------------------------

Open up the process viewer (on Ubuntu, *System Monitor*), and kill the
``python`` processes.

::

  ps faux | grep runserver

Slow
----

`django is very slow on my machine`_

``runserver`` using ``localhost`` on Windows can be very slow.  To solve
this issue, remove the following line from your hosts file:

::

  # ::1             localhost

On Vista, the file can be found here:

::

  C:\Windows\System32\drivers\etc\hosts

Note:  I don't know what this line is for, so it could be bad to remove it.
For more information see `Windows hosts file`_

Templates
=========

Kept getting a ``TemplateDoesNotExist`` exception, when the exception
reported ``File exists``:

::

  TemplateDoesNotExist at /wiki/edit/NewArticle/
  wiki/edit-markitup.html

  Django tried loading these templates, in this order:

  Using loader django.template.loaders.filesystem.load_template_source:
  /srv/django/mycompany/templates/wiki/edit-markitup.html (File exists)

... this was a file permissions issue.  I changed the permissions as follows
and the problem is solved:

::

  chown apache:apache templates/wiki/*
  chmod 664 templates/wiki/*

Template Tags
=============

The template tag couldn't be loaded...  I checked the following:

- The application was included in ``INSTALLED_APPS`` in ``settings.py``.
- I could import the class using the shell:

  ::

    python manage.py shell
    > from django.templatetags import el_markdown

To solve the problem, I had to set the correct permissions on the
``templatetags`` folder:

::

  chown apache:apache mywiki/templatetags
  chmod 775 mywiki/templatetags
  chmod g+s mywiki/templatetags


.. _`Django: AttributeError: 'str' object has no attribute 'resolve'`: http://ai.redsymbol.net/2009/04/django-attributeerror-str-object-has-no.html
.. _`Problem with restructuredtext in markup module`: http://code.djangoproject.com/ticket/6681
.. _`django is very slow on my machine`: http://stackoverflow.com/questions/362808/django-is-very-slow-on-my-machine
.. _`Windows hosts file`: http://stackoverflow.com/questions/705915/windows-hosts-file


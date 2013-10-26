Media
*****

Development (python HTTP)
=========================

To use a simple python HTTP server:

- Open a new terminal and change into your project media folder:

  ::

    python -m SimpleHTTPServer 8080 &

- In your ``settings.py`` file, change the media URL:

  ::

    MEDIA_URL = 'http://localhost:8080/'

Development (Apache)
====================

To serve media files using Apache (rather than ``django.views.static.serve``):

Apache
------

- Create a folder for your media files (e.g. for my ``sample_wikiapp``
  project):

  ::

    ~/repo/apache/sites/sample_wikiapp/

- Create a test document called ``test.html``:

  ::

    <html>
      <body>
        <p>
          Testing Apache site for sample_wikiapp
        </p>
      </body>
    </html>

- Create a folder for your media:

  ::

    cd ~/repo/apache/sites/sample_wikiapp/
    mkdir media

- Put any media files in there that you need e.g:

  ::

    cd ~/repo/apache/sites/sample_wikiapp/media/
    unzip ~/download/tinymce/tinymce_3_3rc1.zip tinymce/jscripts/tiny_mce/*
    mv tinymce/jscripts/tiny_mce/ .
    rm -r tinymce/

- Edit the Apache configuration file:

  ::

    sudo vim /etc/apache2/sites-available/default

- Create a new virtual host for your site:

  ::

        Alias /sample_wikiapp/ "/home/patrick/repo/apache/sites/sample_wikiapp/"
        <Directory "/home/patrick/repo/apache/sites/sample_wikiapp/">
            Options Indexes MultiViews FollowSymLinks
            AllowOverride None
            Order deny,allow
            Deny from all
            Allow from 127.0.0.0/255.0.0.0 ::1/128
        </Directory>

- Re-start the Apache server:

  ::

    sudo /etc/init.d/apache2 restart

- Check the test file is being served correctly:
  http://localhost/sample_wikiapp/test.html

Django
------

- In your ``settings.py`` file, add the

  ::

    MEDIA_URL = 'http://localhost/sample_wikiapp/media'

- In your templates, add the ``MEDIA_URL`` to any media links e.g:

  ::

    <script type="text/javascript" src=" MEDIA_URL /tiny_mce/tiny_mce.js"></script>

- For this to work, you will need the ``media`` and ``request`` context
  processors:

  ::

    TEMPLATE_CONTEXT_PROCESSORS = (
        'django.contrib.auth.context_processors.auth',
        'django.core.context_processors.debug',
        'django.core.context_processors.i18n',
        'django.core.context_processors.media',
        'django.core.context_processors.request',
        'django.contrib.messages.context_processors.messages',
        )

Development (static.serve)
==========================

To serve media in a development environment (only):

`How to serve static files`_

- Create a folder within your application for the static files e.g:

  ::

    mkdir ./myapp/static/

- Check the ``settings.py`` file:

  - ``STATIC_URL`` should be set to:

    ::

      STATIC_URL = '/static/'

  - Make sure that ``django.contrib.staticfiles`` is in your
    ``INSTALLED_APPS``.

- In your templates, use ``STATIC_URL`` for resources:

  ::

    <img src="{{ STATIC_URL }}images/hi.jpg />

Note: Check the web page, `How to serve static files`_, for details on how to
deploy a project using media in this folder structure.

Page
====

To include jQuery on a page (this example is used on a page which extends
the admin base template):

::

  {% extends "admin/base_site.html" %}

  {% block extrahead %}
      <script type="text/javascript" src="/site_media/jquery.js"></script>
  {% endblock %}


.. _`How to serve static files`: http://docs.djangoproject.com/en/1.3/howto/static-files/


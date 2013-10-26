Getting Started
***************

Admin - Look and Feel
=====================

`Using Django admin look and feel in my own application`_

- Make a copy of ``base_site.html`` or extend the built in version:

  ::

    {% extends "admin/base_site.html" %}

  **Note**: This will not work unless admin is enabled on your application.
  Try adding ``django.contrib.admin`` to ``INSTALLED_APPS``:

  ::

    INSTALLED_APPS = (
        'django.contrib.admin',
        ...

- Put your content into the ``block content``:

  ::

    {% block content %}
        <p>No tickets are available.</p>
    {% endblock %}

Configuration
=============

Create a folder in your application directory e.g. for the ``cake``
application:

::

  mkdir cake/templates/cake/

Put your templates into this folder.  Here is a sample ``render_to_response``
which renders the ``cake/templates/cake/home.html`` template:

::

  return render_to_response(
      'cake/home.html',
      context_dict,
      context_instance=RequestContext(request))

*Note*:

- I think this configuration uses
  ``django.template.loaders.app_directories.Loader`` so there is no need to set
  ``TEMPLATE_DIRS``.
- You might need to **re-start the server** before it can find the template.
- If the server cannot find the template, then make sure you have included the
   application in the ``settings.py`` file.


.. _`Using Django admin look and feel in my own application`: http://stackoverflow.com/questions/624535/using-django-admin-look-and-feel-in-my-own-application

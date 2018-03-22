Attachments
***********

Links
=====

- http://github.com/bartTC/django-attachments
- http://pypi.python.org/pypi/django-attachments/

Install
=======

- Install the library:

  ::

    pip install django-attachments

- Add ``'django.core.context_processors.request',`` to
  ``TEMPLATE_CONTEXT_PROCESSORS`` in ``settings.py``.

  If ``TEMPLATE_CONTEXT_PROCESSORS`` does not exist, add the following:

  ::

    TEMPLATE_CONTEXT_PROCESSORS = (
        'django.core.context_processors.auth',
        'django.core.context_processors.i18n',
        'django.core.context_processors.media',
        'django.core.context_processors.request',
    )

- Add ``attachments`` to ``INSTALLED_APPS`` in ``settings.py``:

  ::

    INSTALLED_APPS = (
        ...
        'attachments',
    )

- Add the following to your ``urls.py``:

  ::

    (r'^attachments/', include('attachments.urls')),

- Synchronise the database:

  ::

    ./manage.py syncdb

Sample
======

Sample template code:

::

  {% load attachments_tags %}

  {% get_attachments_for article %}
  {% if attachments %}
      <h3>Attachments</h3>
      <ul>
      {% for attachment in attachments %}
          <li>
              <a href=" attachment.attachment_file.url "> attachment.filename </a>
              {% attachment_delete_link attachment %}
          </li>
      {% endfor %}
      </ul>
  {% endif %}

  {% attachment_form article %}

Note: The user will need the following permissions to gain full access:

============================================  ================================
``attachments.add_attachments``               add attachments.
``attachments.delete_attachments``            delete your own attachments.
``attachments.delete_foreign_attachments``    delete other users attachments.
============================================  ================================


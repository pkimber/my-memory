Messages Framework
******************

Links
=====

- `The messages framework`_

Usage
=====

Setup
-----

To enable message functionality, do the following:

- Edit the ``MIDDLEWARE_CLASSES`` setting and make sure it contains:
  
  ::
  
    'django.contrib.messages.middleware.MessageMiddleware',

  If you are using a storage backend that relies on sessions (the default),
  
  ::
  
    'django.contrib.sessions.middleware.SessionMiddleware',

  ...must be enabled and appear before ``MessageMiddleware`` in your
  ``MIDDLEWARE_CLASSES```.

- Edit the ``TEMPLATE_CONTEXT_PROCESSORS`` setting and make sure it contains:
  
  ::
  
    'django.contrib.messages.context_processors.messages',

- Add
  
  ::
  
    'django.contrib.messages',
    
  ...to your ``INSTALLED_APPS`` setting.

View
----

To use messages in your view code:

- Add the following import:

  ::

    from django.contrib import messages

- Add messages to the list:

  ::

    messages.debug(request, '%s SQL statements were executed.' % count)
    messages.info(request, 'Three credits remain in your account.')
    messages.success(request, 'Profile details updated.')
    messages.warning(request, 'Your account expires in three days.')
    messages.error(request, 'Document deleted.')

Template
--------

- In your template:

  ::

    {% if messages %}
        <ul class="messages">
            {% for message in messages %}
                <li{% if message.tags %} class="{{ message.tags }}"{% endif %}>
                    {{ message }}
                </li>
            {% endfor %}
        </ul>
    {% endif %}


.. _`The messages framework`: http://docs.djangoproject.com/en/1.2/ref/contrib/messages/


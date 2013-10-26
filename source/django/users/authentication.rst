User Authentication
*******************

Links
=====

- `User authentication in Django`_
- http://bitbucket.org/pkimber/sample_django_authentication/
- Sample code in my repository at:

  ::

    sample/python/django/sample_login_logout/

Login
=====

To use the built in login facility:

- Add ``'django.contrib.admin',`` to ``INSTALLED_APPS``.
- Create a ``registration/login.html`` template (here is a sample)

.. code-block:: html

  {% extends "base.html" %}

  {% block content %}

    {% if form.errors %}
      <p>Your username and password didn't match. Please try again.</p>
    {% endif %}

    <form method="post" action="{% url django.contrib.auth.views.login %}">
      {% csrf_token %}
      <table>
        <tr>
          <td>{{ form.username.label_tag }}</td>
          <td>{{ form.username }}</td>
        </tr>
        <tr>
          <td>{{ form.password.label_tag }}</td>
          <td>{{ form.password }}</td>
        </tr>
      </table>
      <input type="submit" value="login" />
      <input type="hidden" name="next" value="{{ next }}" />
    </form>

  {% endblock %}

- Add the following to ``urls.py``

.. code-block:: python

  url(regex=r'^accounts/login/$',
      view='django.contrib.auth.views.login',
      name='sample_login'
  ),
  url(regex=r'^accounts/logout/$',
      view='django.contrib.auth.views.logout',
      name='sample_logout'
  ),

- Sample template code for login and logout

.. code-block:: html

  {% if user.is_authenticated %}
    <a href="{% url sample_logout %}">logout</a>
  {% else %}
    <a href="{% url sample_login %}">login</a>
  {% endif %}

- If login is successful, the view redirects to the URL specified in ``next``.
  If ``next`` isn't provided, it redirects to ``settings.LOGIN_REDIRECT_URL``
  (which defaults to ``/accounts/profile/``).

Subdomain
=========

See :doc:`../cookies` for details on logging into sub-domains.


.. _`User authentication in Django`: http://docs.djangoproject.com/en/dev/topics/auth/

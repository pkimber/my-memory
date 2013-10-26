Jinja
*****

Jinja2 is a full featured template engine for Python
http://jinja.pocoo.org/

Template
========

Conditional

::

  {% if listen_address == 'localhost' -%}
  {% else -%}
  {% endif -%}

Equals

::

  {% if listen_address == 'localhost' -%}

Variables

::

  {% set listen_address = postgres_settings.get('listen_address') -%}

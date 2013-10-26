Template
********

Authenticated
=============

::

  {% if user.is_authenticated %}

Sample
======

::

  {% extends "admin/base_site.html" %}

  {% block content %}
      <table>
          <tr>
              <td>username</td>
              <td>{{ user.username }}</td>
          </tr>
          <tr>
              <td>is_active</td>
              <td>{{ user.is_active }}</td>
          </tr>
          <tr>
              <td>is_anonymous</td>
              <td>{{ user.is_anonymous }}</td>
          <tr>
          <tr>
              <td>is_authenticated</td>
              <td>{{ user.is_authenticated }}</td>
          </tr>
          <tr>
              <td>is_staff</td>
              <td>{{ user.is_staff }}</td>
          </tr>
          <tr>
              <td>is_superuser</td>
              <td>{{ user.is_superuser }}</td>
          </tr>
          <tr>
              <td>first_name</td>
              <td>{{ user.user.first_name }}</td>
          </tr>
          <tr>
              <td>last_name</td>
              <td>{{ user.last_name }}</td>
          </tr>
          <tr>
              <td>email</td>
              <td>{{ user.email }}</td>
          </tr>
          <tr>
              <td>last_login</td>
              <td>{{ user.last_login }}</td>
          </tr>
          <tr>
              <td>date_joined</td>
              <td>{{ user.date_joined }}</td>
          </tr>
      </table>
  {% endblock %}

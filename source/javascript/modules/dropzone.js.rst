dropzone.js
***********

http://www.dropzonejs.com/

dropzone.js + Django: How to build a file upload form:
http://amatellanes.wordpress.com/2013/11/05/dropzonejs-django-how-to-build-a-file-upload-form/

WIP
===

30/01/2014
----------

Lovely looking library, but I couldn't get it integrated with Django (not yet
anyways).  Here are my notes, in case I want to try again in future...

In the following code:

- The form ID is ``my_form`` (see below), this matches with the ``myForm`` in the
  ``options`` section
- The ``name`` of the file upload field is ``picture``.
- The submit button has an ID of ``my_submit``.

.. code-block:: javascript

  {% block stylesheets %}
    {{ block.super }}
    <link rel="stylesheet" href="{% static 'base/css/dropzone/dropzone.css' %}">
  {% endblock stylesheets %}

  {% block script %}
    {{ block.super }}
    <script src="{% static 'base/js/dropzone/dropzone.js' %}" type="text/javascript"></script>
    <script type="text/javascript">
      Dropzone.options.myForm = {
        // Prevents Dropzone from uploading dropped files immediately
        autoProcessQueue : false,
        maxFiles: 1,
        paramName: "picture",
        init : function() {
          var submitButton = document.querySelector("#my_submit")
          myForm = this;
          submitButton.addEventListener("click", function() {
            myForm.processQueue();
            // Tell Dropzone to process all queued files.
          });
          // You might want to show the submit button only when
          // files are dropped here:
          this.on("addedfile", function() {
              // Show submit button here and/or inform user to click it.
          });
        }
      };
    </script>
  {% endblock script %}

Add the ``fallback`` attribute to the widget:

.. code-block:: python

  class StoryForm(RequiredFieldForm):

      class Meta:
          model = Story
          fields = ('area', 'title', 'description', 'picture')
          widgets = {
              'picture': forms.FileInput(attrs=dict(fallback=True)),
          }

For this section, check out ``dropzone``, ``fallback``, ``my_form`` and
``my_submit``:

.. code-block:: html

  <form action="." id="my_form" method="post" {% if multipart %}enctype="multipart/form-data"{% endif %} class="pure-form pure-form-stacked {% if multipart %}dropzone{% endif %}">
    {% csrf_token %}
    {{ form.non_field_errors }}
    <fieldset>
      <legend>{{ legend }}</legend>
      {% for field in form %}
        <div class="pure-control-group {% if field.field.widget.attrs.fallback %}fallback{% endif %}">
    ...
    <input type="submit" id="my_submit" value="{% if submit %}{{ submit }}{% else %}Submit{% endif %}" class="pure-button pure-button-primary" />

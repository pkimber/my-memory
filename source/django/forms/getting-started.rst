Getting Started
***************

.. highlight:: python

Sample
======

``forms.py``::

  from django import forms

  TOPIC_CHOICES = (
      ('general', 'General enquiry'),
      ('bug', 'Bug report'),
      ('suggestion', 'Suggestion'),
  )

  class ContactForm(forms.Form):
      topic = forms.ChoiceField(choices=TOPIC_CHOICES)
      message = forms.CharField(widget=forms.Textarea())
      sender = forms.EmailField(required=False)

**Note**: See *Forms from Models*, :doc:`models`...

``contact.html`` (normally in ``mysite/templates/app-name/``)::

  <!doctype html>
  <html lang="en">
    <head>
      <title>Contact us</title>
    </head>
    <body>
      <h1>Contact us</h1>
      <form action="." method="POST">
        {% csrf_token %}
        <table>
          {{ form.as_table }}
        </table>
        <p><input type="submit" value="Submit"></p>
      </form>
    </body>
  </html>

**Note**: See *Custom Look and Feel* below for details on how to construct a
custom template rather than using ``form.as_table``

``app-name/views.py``::

  from forms import ContactForm

  def contact(request):
      if request.method == 'POST':
          form = ContactForm(request.POST)
      else:
          form = ContactForm()

Initial Data
============

Initial data can be set in the form class::

  class ContactForm(forms.Form):
      message = forms.CharField(
          widget = forms.Textarea(),
          initial = "Replace with your feedback.")

...or... when the form is created (in ``app-name/views.py``)::

  def contact(request):
      if request.method == 'POST':
          form = ContactForm(request.POST)
      else:
          initial = {
              'sender': 'user@example.com'
              }
          form = ContactForm(initial = initial)

Processing
==========

``app-name/views.py``::

  from django.core.mail import send_mail
  from django.http import HttpResponseRedirect
  from django.shortcuts import render_to_response

  def contact(request):
      if request.method == 'POST':
          form = ContactForm(request.POST)
          if form.is_valid():
              topic = form.cleaned_data['topic']
              message = form.cleaned_data['message']
              sender = form.cleaned_data.get('sender', 'noreply@example.com')
              send_mail(
                  'Feedback from your site, topic: %s' % topic,
                  message, sender,
                  ['admin@example.com'],
                  fail_silently = True
              )
              return HttpResponseRedirect('contact/thanks/')
      else:
          form = ContactForm(initial = {'sender': 'user@example.com'})
      return render_to_response('books/contact.html', {'form': form})

**Note**:

- The forms framework does more than just validate the data, it also converts
  it into Python types.
- To tell whether a form is bound to valid data, call the ``is_valid()``
  method.
- In the example above, when using :doc:`../email`, the ``sender`` is not
  required, so we provide a default.
- We have set the Django ``send_mail`` method to ``fail_silently`` because we
  have not set-up our mail server.
- Having sent the feedback email, we'll redirect our user to a static
  confirmation page.
- Redirect After POST: If a user selects *Refresh* on a page that was
  displayed by a ``POST`` request, that request will be repeated.  This can
  often lead to undesired behavior, such as a duplicate record being added to
  the database.

  *Redirect after POST* is a useful pattern that can help avoid this scenario:
  after a successful ``POST`` has been processed, redirect the user to another
  page rather than returning HTML directly.

Save
----

To update a model before saving, you can follow one of the following patterns::

  author = Author(title='Mr')
  form = PartialAuthorForm(request.POST, instance=author)
  form.save()

  form = PartialAuthorForm(request.POST)
  author = form.save(commit=False)
  author.title = 'Mr'
  author.save()

Note: See `the save method`_ for further details...

Custom Look and Feel
====================

Rather than using ``form.as_table`` (see above) we can build our own
custom template::

  <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN">
  <html lang="en">
      <head>
          <title>Contact us</title>
      </head>
      <body>
          <h1>Contact us</h1>
          <form action="." method="POST">
              <div class="fieldWrapper">
                  {{ form.topic.errors }}
                  <label for="id_topic">Kind of feedback:</label>
                  {{ form.topic }}
              </div>
              <div class="fieldWrapper">
                  {{ form.message.errors }}
                  <label for="id_message">Your message:</label>
                  {{ form.message }}
              </div>
              <div class="fieldWrapper">
                  {{ form.sender.errors }}
                  <label for="id_sender">Your email (optional):</label>
                  {{ form.sender }}
              </div>
              <p><input type="submit" value="Submit"></p>
          </form>
      </body>
  </html>

- To construct the control, we just use ``form.`` followed by the name of
  the field e.g. ``{{ form.topic }}``.
- ``{{ form.message.errors }}`` will display as a ``<ul class="errorlist">``
  if errors are present and a blank string if the field is valid (or the form
  is unbound).

We can also treat ``form.message.errors`` as a ``Boolean`` or even iterate
over it as a list, for example::

  <div class="fieldWrapper{% if form.message.errors %} errors{% endif %}">
      {% if form.message.errors %}
          <ol>
          {% for error in form.message.errors %}
          <li><strong>{{ error|escape }}</strong></li>
          {% endfor %}
          </ol>
      {% endif %}
      {{ form.message }}
  </div>

In the case of validation errors, this will add an ``errors`` class to the
containing ``<div>`` and display the list of errors in an ordered list.

Don't forget to include hidden fields in the form.  These can be included
as follows::

  {% for hidden in form.hidden_fields %}
      {{ hidden }}
  {% endfor %}

Testing
=======

For testing of forms, see :doc:`../snippets/testing`.

Validation
==========

:doc:`validation`


.. _`the save method`: http://docs.djangoproject.com/en/1.3/topics/forms/modelforms/#the-save-method

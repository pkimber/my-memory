Models
******

.. highlight:: python

Links
=====

- `Django Form Snippets`_

Customise
=========

Attribute
---------

To add an attribute to a form field:

::

  class ItemViewForm(forms.ModelForm):
      def __init__(self, *args, **kwargs):
          super(ItemViewForm, self).__init__(*args, **kwargs)
          count = 0
          for name in self.fields:
              count = count + 10
              self.fields[name].pk_count = count

To use the ``pk_count`` attribute in the template:

::

  {{ field.field.pk_count }}

Field
-----

To add a field to a model form:

::

  from django.forms.fields import ChoiceField
  from django.forms.widgets import RadioSelect

  ACCEPT_REJECT = [
      ['Accept', 'Accept'],
      ['Reject', 'Reject']
  ]

  class ReviewForm(forms.ModelForm):

      def __init__(self, *args, **kwargs):
          super(ReviewForm, self).__init__(*args, **kwargs)
          self.fields.update({
              'accept_or_reject': ChoiceField(
                  widget=RadioSelect(),
                  choices=ACCEPT_REJECT
              ),
          })

Note: Don't forget to add this field to the template (if you are not looping
through all the fields already).

Read Only
---------

Two options - just display the field on the template:

::

  {{ form.instance.village.county.name }}


... or... To make a form read only:

::

  class ItemViewForm(forms.ModelForm):
      def __init__(self, *args, **kwargs):
          super(ItemViewForm, self).__init__(*args, **kwargs)
          for name in self.fields:
              widget = self.fields[name].widget
              # If a select widget, change to a TextInput widget.
              if type(widget) == forms.Select:
                  self.fields[name].widget = forms.TextInput()
              # Set the readonly attribute of the widget to true.
              self.fields[name].widget.attrs['readonly'] = True

Widget
------

To change the widget and set attributes for a form field::

  from django.forms.widgets import Select

  class ItemForm(forms.ModelForm):

      class Meta:
          model = ItemModel
          widgets = {
              'description': Select(
                  attrs={
                      'range': '12.50, 13.75, 14.01',
                  }
              ),
          }

Forms from Models
=================

- ``app-name/forms.py``:

  `Creating forms from models`_

  ::

    from django.forms import ModelForm
    from models import Publisher

    class PublisherForm(ModelForm):
        class Meta:
            model = Publisher
            fields = ('message',)

  **Note**: If you don't want to have a field appearing on the form, set
  ``editable=False`` on the model field... or... use the ``fields`` attribute
  to list fields to include... (or ``exclude``).

- ``app-name/views.py``:

  ::

    from django.http import HttpResponseRedirect
    from django.shortcuts import render_to_response
    from forms import PublisherForm

    def add_publisher(request):
        if request.method == 'POST':
            form = PublisherForm(request.POST)
            if form.is_valid():
                form.save()
                return HttpResponseRedirect('/add_publisher/thanks/')
        else:
            form = PublisherForm()
        return render_to_response('books/add_publisher.html', {'form': form})

  Note: To initialise a form with a model instance (object):

  - Initialise the form with an existing object:

      ::

        feature_object = Feature.objects.get(slug=feature)
        form = FeatureForm(instance=feature_object)

  - When saving the object, initialise the form with the original object:

      ::

        feature_object = Feature.objects.get(slug=feature)
        if request.method == 'POST':
            form = FeatureForm(request.POST, instance=feature_object)
            if form.is_valid():

- To display the form, use this (minimal) html:

  ::

    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN">
    <html lang="en">
        <head>
            <title>New Task</title>
        </head>
        <body>
            <h1>New Task</h1>
            <form action="." method="POST">
                {% csrf_token %}
                <table>
                    {{ form.as_table }}
                </table>
                <p><input type="submit" value="Submit"></p>
            </form>
        </body>
    </html>

Save
----

To override the form ``save`` method:

::

    def save(self, force_insert=False, force_update=False, commit=True):
        instance = super(MyForm, self).save(commit=False)
        # do some custom stuff
        instance.flag1 = 'flag1' in self.cleaned_data['multi_choice'] # etc
        if commit:
            instance.save()
        return instance

See `stackoverflow, Overriding the save method in Django ModelForm`_ and
`stackoverflow, Django: How to override form.save()`_


.. _`Creating forms from models`: http://docs.djangoproject.com/en/1.0/topics/forms/modelforms/
.. _`Django Form Snippets`: http://www.chicagodjango.com/blog/django-form-snippets/
.. _`stackoverflow, Overriding the save method in Django ModelForm`: http://stackoverflow.com/questions/817284/overriding-the-save-method-in-django-modelform
.. _`stackoverflow, Django: How to override form.save()`: http://stackoverflow.com/questions/3927305/django-how-to-override-form-save

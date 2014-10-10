Fields
******

.. highlight:: python

BooleanField
============

::

  from django import forms

  sell_on_site = forms.BooleanField(
      required=False
      )
  sell_on_site_before = forms.BooleanField(
      required=False,
      widget=forms.HiddenInput()
      )

Note: To allow the user to un-tick the box, you must have ``required=False``.

DecimalField
============

::

  from django import forms
  price = forms.DecimalField()

ForeignKey
==========

Also see ``ModelChoiceField`` example below::

  def __init__(self, *args, **kwargs):
      # ...
      super(MarketingForm, self).__init__(*args, **kwargs)
      self.fields['contact'].queryset = Contact.objects.filter(
          company=self.instance
      )

From `Overriding ModelChoiceField`_ and ModelChoiceField_, to set the content
of the drop down list::

  class ContactModelChoiceField(ModelChoiceField):

      def label_from_instance(self, obj):
          return '{} {}'.format(obj.firstname, obj.surname)


  class MarketingForm(forms.ModelForm):

      def __init__(self, *args, **kwargs):
          super(MarketingForm, self).__init__(*args, **kwargs)
          self.fields['contact'] = ContactModelChoiceField(
              queryset=Contact.objects.filter(
                  company=self.instance
              ).order_by(
                  'firstname'
              )
          )

.. note::

  To change the contents of a ``ManyToManyField``, just replace
  ``ModelChoiceField`` with ``ModelMultipleChoiceField``.

ModelChoiceField
----------------

`Changing the ModelChoiceField QuerySet`_ (also see next and previous
examples)::

  from django import forms
  from django.contrib.auth.models import User

  class ComplaintForm(forms.Form):

      user = forms.ModelChoiceField(queryset=User.objects.none())
      message = forms.CharField(widget=forms.Textarea())

      def __init__(self, *args, **kwargs):
          super(ComplaintForm, self).__init__(*args, **kwargs)
          self.fields["user"].queryset = User.objects.filter(is_staff=False)


The queryset can simple be defined within the field::

  product_category = forms.ModelChoiceField(
      queryset=ProductCategory.objects.product_type(COURSE),
      empty_label='all courses',
      required=False,
  )

RadioSelect
-----------

To use a ``RadioSelect`` widget on a model form::

    class Meta:
        # ...
        widgets = {
            'level': forms.RadioSelect
        }

To remove the empty value::

  def __init__(self, *args, **kwargs):
      super(MyForm, self).__init__(*args, **kwargs)
      self.fields['level'].empty_label = None


.. _`Changing the ModelChoiceField QuerySet`: http://oebfare.com/blog/2008/feb/23/changing-modelchoicefield-queryset/
.. _`Overriding ModelChoiceField`: https://github.com/maraujop/django-crispy-forms/issues/82
.. _ModelChoiceField: https://docs.djangoproject.com/en/dev/ref/forms/fields/#modelchoicefield

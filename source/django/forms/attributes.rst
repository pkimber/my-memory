Attributes
**********

.. highlight:: python

Custom form attributes::

  class VillageModelForm(ModelForm):

      class Meta:
          model = VillageModel

      def __init__(self, *args, **kwargs):
          super(VillageModelForm, self).__init__(*args, **kwargs)
          self.fields['name'].widget.attrs['my_attr'] = 'chocolate'

.. tip:: Also see the example below to update the ``class``.

Label or name
=============

::

  from django.forms.forms import pretty_name

  # in the '__init__' method
  for name in ('address_1', 'email'):
      field = self.fields[name]
      field.widget.attrs.update({
          'class': 'pure-input-2-3',
          'placeholder': field.label or pretty_name(name),
      })

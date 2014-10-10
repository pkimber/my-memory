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

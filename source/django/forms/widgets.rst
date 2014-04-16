Widgets
*******

.. highlight:: python

Attributes
==========

To change the widget for a model form, see :doc:`model`.

To change the widget for a standard form::

  class ProductForm(forms.Form):
      sku = forms.CharField(
          widget=forms.TextInput(attrs={
              'readonly': 'readonly',
              'size': 50,
              })
          )

The HTML source code created by this widget looks like this::

  <input name="sku" value="teapot" readonly="readonly" type="text" id="sku" size="50" />

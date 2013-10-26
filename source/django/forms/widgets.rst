Widgets
*******

Attributes
==========

::

  class ProductForm(forms.Form):
      sku = forms.CharField(
          widget=forms.TextInput(attrs={
              'readonly': 'readonly',
              'size': 50,
              })
          )

The HTML source code created by this widget looks like this:

::

  <input name="sku" value="teapot" readonly="readonly" type="text" id="sku" size="50" />

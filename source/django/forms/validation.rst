Validation
**********

Field
=====

.. code-block:: python

  from django import forms

  class ContactForm(forms.Form):
      message = forms.CharField(
              widget = forms.Textarea(),
              initial = "Replace with your feedback.")

      def clean_message(self):
          message = self.cleaned_data.get('message', '')
          num_words = len(message.split())
          if num_words < 4:
              raise forms.ValidationError("Not enough words!")
          return message

**Note**:

- Also see :doc:`../model/validation`
- The ``clean_message`` method will be called after the default field
  validator.
- Because the field data has already been partially processed, we need to pull
  it out of the form's clean_data dictionary.
- If the user has entered too few words, we raise a ``ValidationError``.  The
  string attached to this exception will be displayed to the user as an item
  in the error list.
- It is important that we explicitly return the value for the field at the end
  of the method.  This allows us to modify the value (or convert it to a
  different Python type) within our custom validation method.

  If we forget the ``return`` statement, then ``None`` will be returned,
  and the original value will be lost.

Form
====

.. code-block:: python

    def clean(self):
        data = self.cleaned_data
        if there_is_a_non_field_specific_error:
            raise forms.ValidationError("I am not happy with this form.")
        return data

.. code-block:: python

  class ContactForm(forms.Form):
      ...

      def clean(self):
          cleaned_data = self.cleaned_data
          cc_myself = cleaned_data.get("cc_myself")
          subject = cleaned_data.get("subject")

          if cc_myself and subject and "help" not in subject:
              # (see link below for discussion)
              msg = u"Must put 'help' in subject when cc'ing yourself."
              self._errors["cc_myself"] = self.error_class([msg])
              self._errors["subject"] = self.error_class([msg])

              # These fields are no longer valid. Remove them from the
              # cleaned data.
              del cleaned_data["cc_myself"]
              del cleaned_data["subject"]

          # Always return the full collection of cleaned data.
          return cleaned_data

For details, see `Cleaning and validating fields that depend on each other`_.

CSS
===

The ``<ul>`` has a class attribute of ``errorlist``.  The following
CSS makes our errors stand out:

.. code-block:: css

  <style type="text/css">
      ul.errorlist {
          margin: 0;
          padding: 0;
      }
      .errorlist li {
          background-color: red;
          color: white;
          display: block;
          font-size: 10px;
          margin: 0 0 3px;
          padding: 4px 5px;
      }
  </style>


.. _`Cleaning and validating fields that depend on each other`: https://docs.djangoproject.com/en/dev/ref/forms/validation/#cleaning-and-validating-fields-that-depend-on-each-other

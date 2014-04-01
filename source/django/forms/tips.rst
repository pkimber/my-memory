Tips
****

.. highlight:: python

For dynamic forms, check out modelform_factory_::

  from django.forms.models import modelform_factory

  MyUserForm = modelform_factory(MyUser, fields=['username', 'email'])

  def CustomLogicValidationForm(models.ModelForm):

      def clean_username(self):
          username = self.cleaned_data['username']
          if "aldaran" == username:
              raise forms.ValidationError("aldaran is a super username!")
          return username

  MyUserForm2 = modelform_factory(
      MyUser,
      form=CustomLogicValidationForm,
      fields=['username', 'email']
  )

For more infomation, see:

- `Creating a ModelForm dynamically`_
- `Django Model Form Factory Explained`_
- django-productivity-tips-and-tricks_

And perhaps... `Nicer dynamic forms in django`_


.. _`Creating a ModelForm dynamically`: http://www.agmweb.ca/2010-03-24-creating-a-modelform-dynamically/
.. _`Django Model Form Factory Explained`: http://django.springmerchant.com/content/django-modelform-factory-explained/
.. _`Nicer dynamic forms in django`: http://dougalmatthews.com/2009/Dec/16/nicer-dynamic-forms-in-django/
.. _django-productivity-tips-and-tricks: https://ep2013.europython.eu/media/conference/slides/django-productivity-tips-and-tricks.pdf
.. _modelform_factory: https://docs.djangoproject.com/en/1.5/topics/forms/modelforms/#modelform-factory-function

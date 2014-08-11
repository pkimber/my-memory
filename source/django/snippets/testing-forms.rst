Testing Forms
*************

.. highlight:: python

`Tests for the django-registration application`_.

For unit testing forms::

  data = {
      'email': 'user@net.com',
      'name': 'Sam',
      'password': 'pass',
  }
  form = RegistrationForm(data=data)
  self.assertTrue(form.is_valid(), form.errors)
  self.assertEquals(form.cleaned_data['name'], 'Sam')

Sample
======

::

  self.assertEquals(form.errors['email'], [u'This field is required.',])
  self.assertEquals(len(form.errors), 1,
      'expecting the form to have only one error %s' % form.errors)

::


  form = ArticleForm(data=data)
  self.assertFalse(form.is_valid(), form.errors)
  self.assertIn('PJK', form.errors[NON_FIELD_ERRORS][0])

Attributes
----------

::

  def _attributes_for_widget(self, form, widget_name):
      """
      Return the HTML attributes for the widget as a dictionary.

      :param form:
          Django form containing the widget.
      :param widget_name:
          Name of the widget.
      :returns:
          (dict) HTML attributes for the widget.
      """
      widgets = {}
      for i in form:
          widgets[i.name] = i.as_widget()
      html = widgets[widget_name]
      soup = BeautifulSoup(html)
      # html will contain a single widget.
      element = soup.contents[0]
      attributes = {}
      for i in element.attrs:
          attributes[i[0]] = i[1]
      return attributes

View
----

To test a form within a view::

  response = self.client.get(url)
  form = response.context_data['form']
  self.assertEqual('test@pkimber.net', form.initial['email'])


.. _`Tests for the django-registration application`: http://bitbucket.org/ubernostrum/django-registration/src/tip/registration/tests/forms.py

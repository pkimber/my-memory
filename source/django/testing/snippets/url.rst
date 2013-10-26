URL
***

Reverse
=======

To avoid hard-coding the URL, we can use ``reverse``::

  from django.core.urlresolvers import reverse

  def my_test(self):
      url = self._get_url()
      response = self.client.get(url)

  def _get_url(self):
      return reverse('village', args=('uk', 'devon'))

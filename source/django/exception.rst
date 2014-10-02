Exceptions
**********

.. highlight:: python

Custom
======

Sample
------

::

  class DefaultShopDoesNotExist(Exception):
      # silent_variable_failure = True
      pass

  def _get_default_shop():
      result = None
      try:
          result = Shop.objects.get(default=True)
      except Shop.DoesNotExist:
          raise DefaultShopDoesNotExist(
              'Use the admin site to set one of the shops to be the default.')
      return result

Note: Not really sure what ``silent_variable_failure`` does.  I think it just
controls the response to an exception when rendering a template.  If
``silent_variable_failure`` is set to ``True``, then the template will display
an empty string.

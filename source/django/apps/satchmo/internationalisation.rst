Internationalisation
********************

Links
=====

- `Changing the L10N Settings`_

Issues
======

DjangoUnicodeDecodeError
------------------------

::

  Exception Type:
      DjangoUnicodeDecodeError
  Exception Value:
      'ascii' codec can't decode byte 0xe2 in position 23:
      ordinal not in range(128).
      You passed in <django.forms.forms.BoundField object at 0x9e5e04c> (<class 'django.forms.forms.BoundField'>)

To solve this issue, I added the ``unicode`` indicator (``u``) to each of
the currency formats e.g.

::

  L10N_SETTINGS = {
      'currency_formats' : {
          'EUR' : {'symbol': u'€', 'positive' : u"€%(val)0.2f", 'negative': u"-€%(val)0.2f", 'decimal' : '.'},
          'GBP' : {'symbol': u'£', 'positive' : u"£%(val)0.2f", 'negative': u"-£%(val)0.2f", 'decimal' : '.'},


..  _`Changing the L10N Settings`: http://www.satchmoproject.com/docs/dev/configuration.html#changing-the-l10n-settings


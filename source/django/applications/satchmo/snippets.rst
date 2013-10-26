Snippets
********

Cart
====

::

  from satchmo_store.shop.models import Cart
  try:
      cart = Cart.objects.from_request(request)
      import ipdb
      ipdb.set_trace()
      # ipdb> cart
      # <Cart: Shopping Cart (2010-10-19 08:30:06.925066)>
      # ipdb> cart.cartitem_set.all()
      # [<CartItem: 2 - Stilton (EU) £0.00>]
      # ipdb> cart.site
      # <Site: testserver>
  except Cart.DoesNotExist:
      pass

Products
========

::

  from product.models import Product
  l = Product.objects.all()
  for i in l:
      print i

Configurable
------------

::

  from product.modules.configurable.models import ConfigurableProduct

Group
-----

::

  from product.models import OptionGroup

Price
-----

::

  from product.models import Product
  from product.models import ProductPriceLookup
  p = Product.objects.get(sku='pico_black')
  prices = ProductPriceLookup.objects.filter(productslug=p.slug)

  prices[0].dynamic_price
  >>> Decimal("339.574400")
  prices[0].quantity
  1L

Settings
========

Here is an extract from the ``settings.py`` file for the Japanese shop:

::

  # ref:
  # http://bitbucket.org/chris1610/satchmo/wiki/BackwardsIncompatibleChangesAfter0.9
  L10N_SETTINGS = {
      'currency_formats' : {
          'GBP' : {'symbol': u'£', 'positive' : u"£%(val)0.2f", 'negative': u"-£%(val)0.2f", 'decimal' : '.'},
          'USD' : {'symbol': u'$', 'positive' : u"$%(val)0.2f", 'negative': u"-$%(val)0.2f", 'decimal' : '.'},
          'JPY' : {'symbol': u'¥', 'positive' : u"¥%(val)0.2f", 'negative': u"-¥%(val)0.2f", 'decimal' : '.'},
      },
      'default_currency' : 'GBP'
  }

Store
=====

Config
------

::

  from satchmo_store.shop.models import Config
  Config.objects.get(shipping_countries__iso2_code='gb')


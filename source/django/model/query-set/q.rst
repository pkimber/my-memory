QuerySet - Q
************

.. highlight:: python

Links
=====

- `Complex lookups with Q objects`_

Sample
======

::

  from django.db import models

  q = models.Q()
  if user_to_forget.email:
      q |= models.Q(email__icontains=user_to_forget.email)
  if user_to_forget.username:
      q |= models.Q(email__icontains=user_to_forget.username)
  return self.model.objects.filter(q).order_by("email")

.. note:: ``q`` can be initialised using ``models.Q()`` or by using a filter:
          ``models.Q(pk__in=selection)``.

Using the Satchmo product database::

  from django.db.models import Q

  def _get_configurable_product_slugs(site):
      configurable_products = ConfigurableProduct.objects.filter(
          product__site=site)
      return [item.product.slug for item in configurable_products]

  def _get_product_variation_slugs(site):
      product_variations = ProductVariation.objects.filter(
          product__site=site)
      return [item.product.slug for item in product_variations]

  def products_with_standard_pricing(site):
      config_exclude = _get_configurable_product_slugs(site)
      variation_exclude = _get_product_variation_slugs(site)
      return Product.objects.filter(
          Q(site=site) &
          ~Q(slug__in=config_exclude) &
          ~Q(slug__in=variation_exclude)
          )

Note:

- In this sample, we are excluding configurable products and product
  variations.
- You can use the *OR* operator, ``|`` as well...


.. _`Complex lookups with Q objects`: http://docs.djangoproject.com/en/1.1/topics/db/queries/#complex-lookups-with-q-objects

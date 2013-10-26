Contact
*******

``update_form.html``
====================

Issues
------

*Note*: The automatic state lookup code depends on jQuery.  Use FireBug to
check it is being loaded before investigating other issues...

Country
-------

In the contact update form, ``templates/contact/update_form.html``, the country
fields will be hidden in two cases:
  
- If the *Store Configuration*, *Only sell to in-country customers?* is ticked
  (the configuration can be edited in the admin interface here:
  ``admin/shop/config/``).
- If the shop only has a single country.

The code for these options can be found in this module:
``satchmo_store/contact/views.py``:

.. code-block:: python
        
  if shop.in_country_only:
      init_data['country'] = shop.sales_country
  else:
      countries = shop.countries()
      if countries and countries.count() == 1:
          init_data['country'] = countries[0]
  
State
-----

In the contact update form, ``templates/contact/update_form.html``, the state
field will be hidden unless you tick *State required?* in *Site settings*,
*Satchmo Shop Settings*.  (The URL for this setting is ``settings/``).

The template code which makes this decision is
``satchmo_store/contact/templates/contact/_state_js.html``:

::

  {% if shop.options.SHOP.ENFORCE_STATE.value %}


Custom Payment Modules
**********************

Links
=====

- http://www.satchmoproject.com/docs/dev/custom-payment.html

Configuration
=============

- ``config.py`` in the custom payment application is used to register
  configuration data e.g. authentication...
- Site settings are edited at this URL http://localhost/settings.
- Data for the custom payment module is stored in the ``livesettings_setting``
  table e.g:

  ::

    mysql> SELECT * FROM livesettings_setting;
    +----+---------+---------------+-----------------------------+------------------------------------------+
    | id | site_id | group         | key                         | value                                    |
    +----+---------+---------------+-----------------------------+------------------------------------------+
    |  1 |       1 | PRODUCT       | PRODUCT_TYPES               | ["product::ConfigurableProduct"]         |
    |  2 |       1 | PAYMENT_DUMMY | CREDITCHOICES               | ["Visa", "Mastercard", "Discover"...]    |
    |  3 |       1 | SHOP          | REQUIRED_BILLING_DATA       | ["email", "first_name", "last_name"...]  |
    |  4 |       1 | LANGUAGE      | CURRENCY                    | �                                        |
    |  5 |       1 | SHOP          | AUTHENTICATION_REQUIRED     | True                                     |
    |  6 |       1 | TAX           | PRODUCTS_TAXABLE_BY_DEFAULT | True                                     |
    |  7 |       1 | TAX           | TAX_CLASS                   | Default                                  |
    |  8 |       1 | SHIPPING      | MODULES                     | ["satchmo_site_shipping"]                |
    |  9 |       1 | PAYMENT       | MODULES                     | ["PAYMENT_MY"]                           |
    | 17 |       1 | SHIPPING      | SELECT_CHEAPEST             | False                                    |
    | 12 |       1 | PAYMENT_MY    | MERCHANT_ID                 | 12345                                    |
    | 13 |       1 | PAYMENT_MY    | CREDITCHOICES               | ["Visa", "Mastercard"]                   |
    | 14 |       1 | PAYMENT_MY    | CONNECTION                  | https://www.mybank.com/payments          |
    +----+---------+---------------+-----------------------------+------------------------------------------+


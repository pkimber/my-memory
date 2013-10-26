Formsets
********

.. highlight:: python

Links
=====

- `Django documentation, Formsets`_

Sample
======

- ``forms.py``:

  ::

    from django import forms
    from django.forms.formsets import formset_factory

    class AdminProductShopForm(forms.Form):
        sku = forms.CharField(
            widget=forms.TextInput(attrs={
                'readonly': 'readonly',
                'size': 50,
                })
            )
        price = forms.DecimalField()
        sell_in_shop = forms.BooleanField()

    AdminProductShopFormSet = formset_factory(AdminProductShopForm, extra=0)

  Note:

  - In this example, we have requested that the form set doesn't display any
    ``extra`` forms i.e. 0.
  - We have made the ``sku`` field read only.

- ``views.py``:

  ::

    def admin_shop_products_view(request, shop_slug):
        products = Product.objects.order_by('sku').values('sku')
        product_forms = AdminProductShopFormSet(initial=products)
        return render_to_response(
            'shop/admin_shop_products.html',
            {
                'formset': product_forms,
            },
            context_instance=RequestContext(request)
            )

  Note:

  - In this example, the result from the query set is converted to a list of
    dictionaries by the ``values`` method.  This is used to initialise the
    form set.
  - The form is initialised with the ``initial`` parameter.

- Template:

  ::

    {% if formset %}
        {{ formset.management_form }}
        <table>
            <tr>
                <th>
                    Product
                </th>
                <th>
                    Price
                </th>
                <th>
                    Sell in Shop
                </th>
            </tr>
            {% for form in formset.forms %}
                <tr>
                    <td>
                        <div class="fieldWrapper">
                            {{ form.sku.errors }}
                            {{ form.sku }}
                        </div>
                    </td>
                    <td>
                        <div class="fieldWrapper">
                            {{ form.price.errors }}
                            {{ form.price }}
                        </div>
                    </td>
                    <td>
                        <div class="fieldWrapper">
                            {{ form.sell_in_shop.errors }}
                            {{ form.sell_in_shop }}
                        </div>
                    </td>
                </tr>
            {% endfor %}
        </table>
    {% endif %}

  Note:

  - Don't miss the ``management_form`` (see above).
  - The simplest method for displaying a form set is as follows:

    ::

      <form method="post" action="">
          {{ formset.management_form }}
          <table>
              {% for form in formset.forms %}
                  {{ form }}
              {% endfor %}
          </table>
      </form>

    ... or even ...

    ::

      <form method="post" action="">
          <table>
              {{ formset }}
          </table>
      </form>

Multiple Formsets
-----------------

`Using more than one formset in a view`_

Use the ``prefix`` on both the ``POST`` and non-``POST`` cases:

::

  def manage_articles(request):
      ArticleFormSet = formset_factory(ArticleForm)
      BookFormSet = formset_factory(BookForm)
      if request.method == 'POST':
          article_formset = ArticleFormSet(request.POST, request.FILES, prefix='articles')
          book_formset = BookFormSet(request.POST, request.FILES, prefix='books')
          if article_formset.is_valid() and book_formset.is_valid():
              # do something with the cleaned_data on the formsets.
      else:
          article_formset = ArticleFormSet(prefix='articles')
          book_formset = BookFormSet(prefix='books')
      return render_to_response('manage_articles.html', {
          'article_formset': article_formset,
          'book_formset': book_formset,
      })

Model
=====

Sample
------

`Django: Initializing a FormSet of custom forms with instances`_

::

  def edit(request):
      PointFormSet = modelformset_factory(Point, form = PointForm)
      qset = Point.objects.all() #or however your getting your Points to modify
      formset = PointFormset(queryset = qset)
      if request.method == 'POST':
          #deal with posting the data
          formset = PointFormset(request.POST)
          if formset.is_valid():
              #if it is not valid then the "errors" will fall through and be returned
              formset.save()
          return #to your redirect

      context_dict = {'formset':formset,
                      #other context info
                      }

      return render_to_response('your_template.html', context_dict)


.. _`Django documentation, Formsets`: http://docs.djangoproject.com/en/1.1/topics/forms/formsets/
.. _`Django: Initializing a FormSet of custom forms with instances`: http://stackoverflow.com/questions/1992152/django-initializing-a-formset-of-custom-forms-with-instances
.. _`Using more than one formset in a view`: http://docs.djangoproject.com/en/1.1/topics/forms/formsets/#using-more-than-one-formset-in-a-view

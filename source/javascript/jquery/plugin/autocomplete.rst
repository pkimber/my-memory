Ajax AutoComplete for jQuery
****************************

.. highlight:: python

https://github.com/devbridge/jQuery-Autocomplete

Documentation:
https://www.devbridge.com/sourcery/components/jquery-autocomplete/

Download ``jquery.autocomplete.min.js`` from the ``dist`` folder.

It works as documented.  The *Style sample* on the documentation page works
nicely for me.

I created the JSON response using the Django braces ``JSONResponseMixin`` and
``AjaxResponseMixin`` e.g::

  class LocationAjaxView(JSONResponseMixin, AjaxResponseMixin, View):

The response is formatted like this:

.. code-block:: javascript

  {
      // Query is not required as of version 1.2.5
      "query": "Unit",
      "suggestions": [
          { "value": "United Arab Emirates", "data": "AE" },
          { "value": "United Kingdom",       "data": "UK" },
          { "value": "United States",        "data": "US" }
      ]
  }

Issues
======

I had some issues with speed of response.  To resolve this, I changed the
trigger count to two characters::

  $('#autocomplete').autocomplete({
      minChars: 2,
      serviceUrl: '{% url 'location.search' %}',
      onSelect: function (suggestion) {
          console.log('You selected: ' + suggestion.value);
          console.log(suggestion.data);
      }
  });

.. note:: ``{% url 'location.search' %}`` is a Django tag.

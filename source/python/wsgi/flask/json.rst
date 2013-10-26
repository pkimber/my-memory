JSON
****

Request
=======

If we ``POST`` JSON to a Flask handler, then the data will be available in the
``request.json`` variable:

.. code-block:: python

  if 'id' in request.json:
      user = session.query(User).get(request.json['id'])

For details, see ``json`` in the `request.json`_ documentation.

jQuery
------

To ``POST`` JSON using jQuery, use the ``ajax`` method e.g:

.. code-block:: js

  return jQuery.ajax({
      type: 'POST',
      url: '/api/village/add/',
      data: ko.toJSON(data),
      success: callback,
      dataType: 'json',
      contentType: 'application/json'
  });

Note: This will set the ``mimetype`` to ``application/json``.

*Form Encoded*

The standard jQuery ``post`` will set the mimetype to
``application/x-www-form-urlencoded`` e.g:

.. code-block:: js

  $.post('/api/village/add/', {name: 'Folly Gate'}, function (data) {
  });

This data can be handled by Flask using ``request.form``.  For details, see
``form`` in the `request.json`_ documentation.

Response
========

jsonify
-------

For security reasons only objects are supported at the top level.  In this
example, we want to return a list of ``users``:

.. code-block:: python

  @app.route('/api/')
  def api():
      result = {
          'users': [
              { 'name': 'Sam', 'age': 41, },
              { 'name': 'Tim', 'age': 47, },
          ],
      }
      return jsonify(result)


For details, see `Returning JSON`_, `JSON Security`_ and
`JSON CSRF vulnerability with top-level arrays`_


.. _`JSON CSRF vulnerability with top-level arrays`: http://blog.frontend.fi/json-xss-vulnerability-with-top-level-arrays/
.. _`JSON Security`: http://flask.pocoo.org/docs/security/#json-security
.. _`request.json`: http://flask.pocoo.org/docs/api/#incoming-request-data
.. _`Returning JSON`: http://flask.pocoo.org/docs/api/#returning-json

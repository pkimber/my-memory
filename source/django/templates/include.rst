Include
*******

Links
=====

- `include documentation`_:

Usage
=====

To include a template within another template:

- Create a sub-folder in your templates folder called ``include`` (this is
  just my convention - not a requirement).
- Create your template in the sub-folder.
- Include the new template in your existing template using the ``include``
  tag e.g:

  ::

    {% include "court/include/court_images.html" %}


.. _`include documentation`: http://docs.djangoproject.com/en/1.1/ref/templates/builtins/#include

Wizard
******

.. highlight:: python

Links
=====

- session.py_
- tests.py_
- http://www.tivix.com/blog/django-form-wizard/
- http://brack3t.com/not-exactly-tim-the-enchanter.html

Tips
====

When writing tests:

Use Developer tools to see the form data.

To see the session data, add the following ``print`` statements to
``formtools/wizard/storage/session.py`` (session.py_)::

  def _get_data(self):
      self.request.session.modified = True
      print(self.prefix)
      print(self.request.session[self.prefix])
      return self.request.session[self.prefix]

Example Django tests for the wizard: tests.py_.  These tests don't set any
session data - but that didn't work for me:
https://github.com/pkimber/block/commit/b4c822370de7dd2421fe55b03a263f9efa028310


.. _session.py: https://github.com/django/django-formtools/blob/master/formtools/wizard/storage/session.py
.. _tests.py: https://github.com/django/django-formtools/blob/master/tests/wizard/wizardtests/tests.py

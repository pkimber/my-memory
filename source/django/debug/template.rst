Templates
*********

django-template-repl
====================

- http://github.com/codysoyland/django-template-repl

- Install:

  ::

    pip install django-template-repl

- Add to ``INSTALLED_APPS`` in ``settings.py``:

  ::

    INSTALLED_APPS = (
        ...
        'template_repl',

- Use the template tag:

  ::

    {% load repl %}{% repl pdb %}

- The python debugger will activate when the template is rendered.  Here is
  a sample session:

  ::

    for k, v in request.REQUEST.items(): print k, v
    form.fields

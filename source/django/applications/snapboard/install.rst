Install
*******

Links
=====

- http://snapboard.deadpuck.net/docs/
- http://code.google.com/p/snapboard/
- http://groups.google.com/group/snapboard-discuss

Install - Dependencies
======================

- In this example, using ``virtualenv``, force install of python imaging
  library into the current environment:

  ::

    virtualenv --no-site-packages env
    source ./env/bin/activate
    pip -E ./env/ install http://effbot.org/downloads/Imaging-1.1.6.tar.gz
    pip -E ./env/ install django-pagination

Install
=======

::

  cd ~/src/
  svn checkout http://snapboard.googlecode.com/svn/trunk/ snapboard

Patch
=====

If using snapboard with Django 1.1, you might need to patch line 107 of
``snapboard/models.py``:

::

  -    accepted = models.BooleanField(_('accepted'), blank=True, null=True)
  +    accepted = models.NullBooleanField(_('accepted'), blank=True, null=True)

Verify
======

- snapboard includes an example site.  To run it:

  ::

    cd snapboard/examplesite/
    python manage.py syncdb
    python manage.py runserver

- Browse to http://localhost:8000/snapboard/


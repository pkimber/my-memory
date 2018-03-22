PikiWiki
********

Links
=====

- Pikiwiki_
- `README, Install Instructions...`_

Install
=======

- Install :doc:`install`...
- Activate the ``pinax-env`` virtual environment.
- Create a folder for the sample project.

  ::

    mkdir pinax-pikiwiki-demo-site
    cd pinax-pikiwiki-demo-site

- Check-out the source code for the wiki:

  ::

    hg clone http://bitbucket.org/barttc/pinax-pikiwiki/

- Install the dependencies:

  ::

    pip install -U -r ./pinax-pikiwiki/pikiwiki/requirements.txt

- Change into the ``pikiwiki`` demonstration project folder:

  ::

    cd pinax-pikiwiki/pikiwiki/

- Sync the database:

  ::

    python manage.py syncdb

- Create a folder for your static root (don't know what this is yet):

  ::

    mkdir my-static-root

- Update ``settings.py`` and set the location of ``STATIC_ROOT``:

  ::

    STATIC_ROOT = 'my-static-root'

  For more information see `settings.py`_

- Build the media (don't know what this is yet):

  ::

    python manage.py build_media -all



.. _Pikiwiki: http://bitbucket.org/barttc/pinax-pikiwiki
.. _`README, Install Instructions...`: http://bitbucket.org/barttc/pinax-pikiwiki/src/
.. _`settings.py`: http://bitbucket.org/smileychris/django-staticfiles/src/482ed085c5d9/staticfiles/settings.py


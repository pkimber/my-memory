Install
*******

Links
=====

- `Satchmo - Quick Start`_.

Not sure if we should be using the following instructions instead:

- `Satchmo Installation`_!!
- `Improved Installation Process`_
- `Satchmo development with virtualenv`_

Install
=======

- Create a virtual environment.
- Install PIL, :doc:`../../../python/imaging`.
- Install the Satchmo dependencies:

  ::

    pip -E ~/repo/ve/satchmo-quick-start/ install -r http://bitbucket.org/chris1610/satchmo/raw/tip/scripts/requirements.txt

  Note: The ``-E`` parameter will tell PIL to respect the virtual
  environment.

- Install Satchmo:

  ::

    pip -E ~/repo/ve/satchmo-quick-start/ install -e hg+http://bitbucket.org/chris1610/satchmo/@v0.9#egg=satchmo

Validate
========

::

  $ python
  >>> import django
  >>> django.VERSION
  (1, 1, 1, 'final', 0)
  >>> import satchmo_store
  >>> satchmo_store.get_version()
  '0.9'

Verify
------

::

  python manage.py satchmo_check

Demo Store
==========

To create a demo store:

- ref `Issue #796, comment #10`_, edit ``clonesatchmo.py``:

  ::

    ~/repo/ve/satchmo-quick-start/src/satchmo/scripts/clonesatchmo.py

  ...and revert the changes in this changeset:
  http://bitbucket.org/chris1610/satchmo/changeset/a0e07cff2526/

  ...it will look like this:

  ::

    def create_satchmo_site(site_name):
        import satchmo_store
        base_dir = satchmo_store.__path__[0]
        src_dir = os.path.abspath(os.path.join(base_dir, '../../projects/skeleton'))
        #import satchmo_skeleton
        #src_dir = os.path.abspath(satchmo_skeleton.__path__[0])
        dest_dir = os.path.join('./',site_name)
        shutil.copytree(src_dir, dest_dir)

- Create the demo store (this command will create a ``store`` folder in
  the current directory:

  ::

    python ~/repo/ve/satchmo-quick-start/src/satchmo/scripts/clonesatchmo.py

- Run the demo store:

  ::

    cd store/
    python manage.py runserver


.. _`Satchmo - Quick Start`: http://www.satchmoproject.com/docs/svn/quickstart.html
.. _`Satchmo Installation`: http://www.satchmoproject.com/docs/svn/new_installation.html
.. _`Improved Installation Process`: http://bitbucket.org/chris1610/satchmo/wiki/ImprovedInstallationProcess
.. _`Satchmo development with virtualenv`: http://www.satchmoproject.com/blog/2010/aug/01/satchmo-virtualenv/
.. _`Issue #796, comment #10`: http://bitbucket.org/chris1610/satchmo/issue/796/use-pip-instead-of-easy_install-to-simplify-installation-of#comment-70475


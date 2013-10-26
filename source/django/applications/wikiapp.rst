WikiApp
*******

Links
=====

- https://launchpad.net/django-wikiapp
- http://toybox/hg/sample/file/tip/python/django/sample_wikiapp

Dependencies
============

- Checkout *Diff, Match and Patch libraries for Plain Text*:

  ::

    cd ~/src
    svn checkout http://google-diff-match-patch.googlecode.com/svn/trunk/ google-diff-match-patch

- This is a nasty dependency:

  ::

    cd ~/src
    svn checkout http://django-atompub.googlecode.com/svn/trunk/ django-atompub

  ...we need to copy and re-name the ``atom.py`` file, so the WikiApp can
  import it:

  ::

    cd /path/to/my/project/folder/
    mkdir ./src
    cp ~/src/django-atompub/atompub/atom.py ./src/atomformat.py
    touch src/__init__.py

Install
=======

- Check out the source code:

  ::

    cd ~/src/
    bzr branch lp:django-wikiapp django-wikiapp

- Set the ``PYTHONPATH`` to include the source code for the Wiki and the
  dependencies:

  ::

    PYTHONPATH=~/src/django-wikiapp:~/src/google-diff-match-patch/python:./src;export PYTHONPATH

- Set-up the media server using Apache; :doc:`../static/media`.
  Note: Worth checking the ``MEDIA_URL`` if you have any problems.

Sample
======

- Checkout the sample project above...
- Install the markItUp editor: :doc:`../../javascript/jquery/plugin/markitup`.
  editor to your media server.
- Install the *Basic Markdown set*:

  - Download the *Basic Markdown set* (``markdown.zip``) from
    http://markitup.jaysalvat.com/downloads/.
  - Install to your media server:

      ::

        unzip ~/download/markitup/markdown.zip

    Note: The file ``site_media/markdown/set.js`` in the sample project
    enables the markItUp! preview option.

- Run as you would a normal Django project...
- Browse to http://localhost:8000/wiki/

Note:

- The sample includes a url configuration for using html markup.  See
  ``urls-html.py`` for details:

  - Also... install the TinyMCE editor to your media server:
    :doc:`../../javascript/tinymce/getting-started`

- The source code in the sample project refers to other options (including
  the preview option for the markItUp! editor.  You might want to install the
  following to use them:

  - Copy the files in the ``site_media`` folder to your media server.
    (the media should be available at the path, ``sample/sets/wiki/``).


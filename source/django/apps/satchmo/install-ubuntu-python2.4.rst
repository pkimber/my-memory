Ubuntu and python 2.4
*********************

Install
=======

- Install python 2.4 dev packages using apt-get...
- Install ``virtualenv`` from the Debian repository (this version allows
  us to specify the version of python.

  ::

    sudo apt-get install python-virtualenv

- Create the virtual environment:

  ::

    cd ~/.virtualenvs/
    virtualenv --python=python2.4 --no-site-packages test-python2.4
    source test-python2.4/bin/activate

- Download, extract and install ReportLab:

  ::

    wget http://www.reportlab.org/ftp/ReportLab_2_3.tar.gz
    tar xf ReportLab_2_3.tar.gz
    cd ReportLab_2_3/
    python setup.py install

  Note: Earlier versions of ReportLab do not install into the correct
  ``virtualenv`` folder...

- Install ``pycrypto``:

  ::

    easy_install pycrypto

- Install Django and other dependencies:

  ::

    easy_install pip
    pip install django==1.1.1
    pip install django-tagging
    pip install django-pagination
    easy_install http://www.satchmoproject.com/snapshots/trml2pdf-1.2.tar.gz
    easy_install django-registration
    easy_install PyYAML
    easy_install elementtree
    easy_install --find-links=http://download.zope.org/distribution PILwoTk
    easy_install python-memcached

- The following dependencies are installed manually:

  ::

    cd ~/src
    hg clone https://bkroeze@bitbucket.org/bkroeze/django-threaded-multihost/
    cd django-threaded-multihost/
    python setup.py install

    cd ~/src
    hg clone http://bitbucket.org/bkroeze/django-caching-app-plugins/
    cd ~/.virtualenvs/test-python2.4/lib/python2.4/site-packages/
    ln -s /home/patrick/src/django-caching-app-plugins/app_plugins .

    cd ~/src
    hg clone https://sorl-thumbnail.googlecode.com/hg/ sorl-thumbnail
    cd ~/.virtualenvs/test-python2.4/lib/python2.4/site-packages/
    ln -s /home/patrick/src/sorl-thumbnail/sorl/ .

    cd ~/src
    hg clone http://bitbucket.org/bkroeze/django-signals-ahoy/
    cd ~/.virtualenvs/test-python2.4/lib/python2.4/site-packages/
    ln -s /home/patrick/src/django-signals-ahoy/signals_ahoy .

- Install database driver e.g. :doc:`../../../python/database/mysql`.
- Install Satchmo:

  ::

    wget http://bitbucket.org/chris1610/satchmo/get/v0.9-rc1.tar.gz
    tar xf v0.9-rc1.tar.gz
    cd satchmo
    python setup.py install

  Note: This will install ``Satchmo-0.9_pre`` into site packages...

- To test:

  ::

    (test-python2.4)patrick@buzz:~/temp/satchmo$ python
    Python 2.4.6 (#2, Mar 19 2009, 10:02:47)
    [GCC 4.3.3] on linux2
    Type "help", "copyright", "credits" or "license" for more information.
    >>> import django
    >>> import satchmo_store
    >>> satchmo_store.get_version()
    '0.9-pre hg-unknown'


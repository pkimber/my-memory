Links
*****

Top
===

- `Django in the Real World`_
  PyCon 2009 - James Bennett and Jacob Kaplan-Moss

Admin
=====

- `Customizing the Django Admin - Branding`_
- django-jumptoadmin_
  Django templatetag for admins to easily change/delete objects from the
  public-facing site.
- `Introducing Django JumpToAdmin`_

AJAX
====

- `Tutorial - Ajax and Django`_
- `Intro to Unintrusive JavaScript with Django`_
- django-apibuilder_
  Provides a data interface (API) for external applications outside of Django.

Dojo
----

- http://code.google.com/p/dojango/
  dojo and django - the perfect couple.

jQuery
------

- `Orderable inlines using drag and drop with jQuery UI`_
  This one works very nicely.  I had to change the ``Media`` for the form:

  ::

    class Media:
        js = (
            'js/jquery-1.3.2.min.js',
            'js/jquery-ui-1.7.3.custom.min.js',
            'js/menu-sort.js',
        )

  This is a new snippet (which needs checking out):
  http://djangosnippets.org/snippets/2057/

  Also check out http://github.com/jpwatts/django-positions.

  - `Dynamic tabular inlines with optional drag-n-drop sorting`_
  - http://github.com/simonw/django_cropper
    integrates the excellent Jcrop jQuery plugin with the Django admin...

YUI
---

- `Django layout templates using the Yahoo UI library`_
- `DjangoSnippets: YUI Loader as Django Middleware`_
- `DjangoSnippets: YUI Autocomplete`_

API
===

- See *REST* below...

Applications
============

- :doc:`applications/links`.

Books
=====

- `Slashdot Review: Practical Django Projects`_

Blog
====

- http://byteflow.su/

Build
=====

Application
-----------

- `James Bennett, Django tips: laying out an application`_

  - `Slides`_

  `HOWTO: Layout Django Apps`_

buildout
--------

- `Jacob Kaplan-Moss, Developing Django apps with zc.buildout`_

  - `More buildout notes`_

Charting
========

- http://toys.jacobian.org/hg/googlecharts/

CMS - Content Management System
===============================

- http://django-cms.org/

Contribution
============

- `Preparing For The Next Django Sprint`_

Database
========

- :doc:`database/links`

Debugging
=========

- :doc:`debug/toolbar`
- :doc:`debug/devserver`
- `Debugging Django`_
- `Debugging Django Errors - WSGI`_
- http://github.com/darwin/firepython
  FirePython is a sexy Python logger console integrated into Firebug.
- https://launchpad.net/django-viewtools
  django-viewtools provides a management command to help in debugging and
  profiling views.

Deploy
======

- `round-robin django setup with nginx`_
- `How To Run Sandboxed Django Sites in Production`_

Development
===========

- `Django 1.0 now with its own branch`_
- https://github.com/goinnn/django-detect-cyclic
  Application to detect cyclic imports

Documentation
=============

- `Django cheat sheet`_

eCommerce
=========

- http://oscarcommerce.com/
- http://www.satchmoproject.com/
- http://www.getlfs.com/
  A lightning fast shop for django.

  - http://code.google.com/p/django-lfs/

- http://code.google.com/p/django-cart/

Debugging
=========

- :doc:`../python/pdb`
- `Debugging Django`_: Simon Willison's Weblog.
- `Using pdb`_ by Eric Holscher.
- :doc:`debug/toolbar`

Deploy
======

- `Seamlessly switch off (and on) a Django (or other WSGI) site for upgrades`_
- `Setting up Django using Apache/mod_wsgi on Ubuntu 8.10`_
- :doc:`../python/apps/fabric/index`

email
=====

- `Gmail and Django`_

Events
======

- http://www.djangocon.org/

File Upload
===========

- http://code.google.com/p/django-admin-uploads/
  django-admin-uploads,
  File uploader, browser, and link generator for the Django admin interface.
- `resizing image on upload in django`_
- `Using Amazon's S3 service with Django`_
- `Django File Upload Handling Examples`_

Forms
=====

- http://code.google.com/p/django-contact-form/
  An extensible contact-form application for Django.
- `Django Forms Quick Reference`_
- `The "correct" way to do forms in Django?`_
- `Doing things with Django forms`_.

Forum
=====

- http://code.google.com/p/django-forum/
  Simple Django Forum Component
- http://uswaretech.com/forum/

GIS
===

- http://code.djangoproject.com/wiki/GeoDjango

Graphs
======

- http://labs.sixpixelsapart.com/projects/django-graphs

Hosting
=======

- http://djangofriendly.com/
  Djangofriendly is a community resource for finding the friendliest Django
  hosting environments.
- http://hosting.djangofoo.com/

IDE
===

- `Setting up Django Development in Eclipse with Code Complete and Graphical Debugging`_
- `Django Trip: Django with Eclipse, Pydev, Aptana and virtualenv`_.

Image
=====

- http://code.google.com/p/sorl-thumbnail/
- django-imagekit_
  Automates image processing for Django models.  Resize, process and cache
  multiple versions of your image files.
- django-photologue_
  A customizable plug-in photo management application for the Django web framework.

Import
======

- http://code.google.com/p/django-batchimport/
  Allows for batch import of django model data via uploaded Microsoft Excel
  (or Open Office or CSV files saved as Excel) file.
- http://djangosnippets.org/snippets/2233/
  How to generate a (real) Excel file as an HTTP response with xlwt.

Jobs (cron)
===========

- See *Celery* in the *Queue* section above.
- `django snippets, Cron Jobs Daemon`_
- `Asteroid - simple app for running scripts and recording the results`_

Jobs (employment)
=================

- http://djangogigs.com/

jython
======

- :doc:`jython`

Learning
========

- Top Tips:

  - `Top 10 tips to a new django dev`_.
  - `Top 10 tips to a new django developer`_
  - `Big list of Django tips (and some python tips too)`_
  - `Favorite Django Tips & Features`_

- http://djangokitchen.com/
- `A (fast-paced) introduction to Django`_.
- `DjangoCon 2008, James Bennett: Reusable Apps`_
- `Django gotchas`_
- `django-design-patterns`_
- `ShowMeDo, Django From the Ground Up`_.
- `A Roundup of 10 Django Tutorials`_

Mailing List
============

- http://groups.google.com/group/django-users/

Management
==========

- http://www.caktusgroup.com/blog/2009/01/13/why-caktus-uses-django/
  Why Caktus Uses Django
- http://code.google.com/p/django-command-extensions/
  (Also has a jobs module)...

  - `GraphModels`_
    Renders a graphical overview of your project or specified apps.

Media
=====

- http://opensource.washingtontimes.com/projects/django-massmedia/

Migration
=========

- :doc:`database/links`

Miscellaneous
=============

- http://code.google.com/u/ubernostrum/

Model
=====

- :doc:`model/links`

Ordering
--------

- `Ordering related objects in Django`_

People
======

- http://djangopeople.net/
- Jacob Kaplan-Moss:

  - http://www.jacobian.org/
  - http://toys.jacobian.org/presentations/

- http://simonwillison.net/

Project Management
==================

- http://opensource.washingtontimes.com/projects/django-projectmgr/

Queue
=====

- http://celeryproject.org/
  Celery - The Django Task Queue

  - http://ask.github.com/celery/introduction.html
    celery - Distributed Task Queue for Django.
  - `Background task processing and deferred execution in Django`_

- http://code.google.com/p/pyactivemq/
  Python module for communicating with the ActiveMQ message broker
- `Introducing RQ`_

REST
====

- http://github.com/toastdriven/django-tastypie
  Creating delicious APIs for Django apps...
- `Building a website API with Django. Part 1: API functions`_
- RestView_
- A class for creating a view that dispatches based on ``request.method``.
- `Piston`_: A mini-framework for Django for creating RESTful APIs.

  - `RESTful Web apps with Django, Piston and Ext JS`_
  - `Add a web api to your app with django-piston`_

Search
======

- djangosearch_
  A search app for Django.
- http://sphinxsearch.com
- http://haystacksearch.org/
  Haystack provides modular search for Django.

Security (Users)
================

- :doc:`security/links`

Snippets
========

- http://www.djangosnippets.org/
- `Active / Inactive model manager`_

Social
======

- `Set up Facebook Connect`_
- Django-Socialauth_
  Allows logging in via Facebook, Yahoo, Gmail, Twitter and Openid.

Support
=======

``#django`` on ``irc.freenode.net``

Paste
-----

- http://dpaste.com/

Tagging
=======

- http://code.google.com/p/django-tagging/
  A generic tagging application for Django projects.
- http://opensource.washingtontimes.com/projects/django-supertagging/

Testing
=======

- :doc:`testing/links`

Templates
=========

:doc:`../python/apps/jinja`

Tips
====

- `Surfing in Kansas Django Tips`_
- `Favorite Django Tips & Features`_
- `Tools of Pro Django developer`_

URL
===

- http://code.google.com/p/django-ittybitty/
  Shortened URLs for your Django-powered site!

Version Control
===============

- django-vcs_
  An application for working with a VCS, analagous to some of Trac's features.

Visualisation
=============

- `Graphite - Enterprise Scalable Realtime Graphing`_
- http://gephi.org/
  Gephi is an interactive visualization and exploration platform for all kinds
  of networks and complex systems, dynamic and hierarchical graphs.

Voting
======

- django-voting_
  A generic voting application for Django.

Widget
======

- `TinyMCE Widget`_


.. _`A (fast-paced) introduction to Django`: http://toys.jacobian.org/presentations/2007/pycon/tutorials/beginning/
.. _`A Roundup of 10 Django Tutorials`: http://blogfreakz.com/django/django-tutorials/
.. _`Active / Inactive model manager`: http://www.djangosnippets.org/snippets/1533/
.. _`Add a web api to your app with django-piston`: http://yml-blog.blogspot.com/2009/09/add-web-api-to-your-app-with-django.html
.. _`Asteroid - simple app for running scripts and recording the results`: http://morethanseven.net/2009/07/15/simple-app-running-scripts-and-recording-results/
.. _`Background task processing and deferred execution in Django`: http://www.turnkeylinux.org/blog/django-celery-rabbitmq
.. _`Big list of Django tips (and some python tips too)`: http://ericholscher.com/blog/2008/oct/5/django-tips/
.. _`Building a website API with Django. Part 1: API functions`: http://fi.am/entry/building-a-website-api-with-django-part-1-api-func/
.. _`Customizing the Django Admin - Branding`: http://blog.montylounge.com/2009/jul/5/customizing-django-admin-branding/
.. _`Debugging Django Errors - WSGI`: http://www.davidcramer.net/code/502/debugging-django-errors.html
.. _`Debugging Django`: http://simonwillison.net/2008/May/22/debugging/
.. _`Debugging Django`: http://simonwillison.net/2008/May/22/debugging/
.. _`Django 1.0 now with its own branch`: http://zerokspot.com/weblog/2008/09/29/django-10-now-with-its-own-branch/
.. _`Django cheat sheet`: http://www.mercurytide.co.uk/whitepapers/django-cheat-sheet/
.. _`Django File Upload Handling Examples`: http://abing.gotdns.com/posts/2009/django-file-upload-handling-examples/
.. _`Django Forms Quick Reference`: http://excess.org/article/2009/07/django-forms-quick-reference/
.. _`Django gotchas`: http://djangogotchas.uswaretech.net/
.. _`Django in the Real World`: ../../misc/howto/django/real-world.pdf
.. _`Django layout templates using the Yahoo UI library`: http://code.google.com/p/django-yui-layout-templates/
.. _`django snippets, Cron Jobs Daemon`: http://www.djangosnippets.org/snippets/1348/
.. _`Django Trip: Django with Eclipse, Pydev, Aptana and virtualenv`: http://codebee.me/blog/2010/01/05/django-trip-django-with-eclipse-pydev-aptana-and-virtualenv/
.. _`django-design-patterns`: http://github.com/uswaretech/django-design-patterns
.. _`DjangoCon 2008, James Bennett: Reusable Apps`: http://www.youtube.com/watch%3Fv=A-S0tqpPga4
.. _`DjangoSnippets: YUI Autocomplete`: http://www.djangosnippets.org/snippets/392/
.. _`DjangoSnippets: YUI Loader as Django Middleware`: http://yuiblog.com/blog/2008/04/25/django-yui-loader/
.. _`Doing things with Django forms`: http://uswaretech.com/blog/2010/01/doing-things-with-django-forms/
.. _`Dynamic tabular inlines with optional drag-n-drop sorting`: http://www.djangosnippets.org/snippets/1489/
.. _`Favorite Django Tips & Features`: http://stackoverflow.com/questions/550632/favorite-django-tips-features
.. _`Favorite Django Tips & Features`: http://stackoverflow.com/questions/550632/favorite-django-tips-features
.. _`Gmail and Django`: http://nathanostgard.com/archives/2007/7/2/gmail_and_django/
.. _`Graphite - Enterprise Scalable Realtime Graphing`: http://graphite.wikidot.com/start
.. _`GraphModels`: http://code.google.com/p/django-command-extensions/wiki/GraphModels
.. _`How To Run Sandboxed Django Sites in Production`: http://coderseye.com/2010/how-to-run-sandboxed-django-sites-in-production.html
.. _`HOWTO: Layout Django Apps`: http://scott.phillips.name/2009/07/howto-package-django-apps/
.. _`Intro to Unintrusive JavaScript with Django`: http://lethain.com/entry/2008/sep/21/intro-to-unintrusive-javascript-with-django/
.. _`Introducing Django JumpToAdmin`: http://ryanberg.net/blog/2009/sep/10/introducing-django-jumptoadmin/
.. _`Introducing RQ`: http://nvie.com/posts/introducing-rq/
.. _`Jacob Kaplan-Moss, Developing Django apps with zc.buildout`: http://jacobian.org/writing/django-apps-with-buildout/
.. _`James Bennett, Django tips: laying out an application`: http://www.b-list.org/weblog/2006/sep/10/django-tips-laying-out-application/
.. _`More buildout notes`: http://jacobian.org/writing/more-buildout-notes/
.. _`Orderable inlines using drag and drop with jQuery UI`: http://www.djangosnippets.org/snippets/1053/
.. _`Ordering related objects in Django`: http://james.wheare.org/notes/2007/11/ordering-related-objects-in-django.php
.. _`Preparing For The Next Django Sprint`: http://www.pointy-stick.com/blog/2008/02/15/preparing-next-django-sprint/
.. _`resizing image on upload in django`: http://spindrop.us/2009/02/21/resizing-image-on-upload-in-django/
.. _`RESTful Web apps with Django, Piston and Ext JS`: http://www.mattdorn.com/content/restful-web-apps-with-django-piston-and-ext-js/
.. _`round-robin django setup with nginx`: http://smallpy.posterous.com/round-robin-django-setup-with-nginx
.. _`Seamlessly switch off (and on) a Django (or other WSGI) site for upgrades`: http://www.caktusgroup.com/blog/2009/05/25/seamlessly-switch-off-and-on-a-django-or-other-wsgi-site-for-upgrades/
.. _`Set up Facebook Connect`: http://nyquistrate.com/django/facebook-connect/
.. _`Setting up Django Development in Eclipse with Code Complete and Graphical Debugging`: http://vimeo.com/5027645
.. _`Setting up Django using Apache/mod_wsgi on Ubuntu 8.10`: http://gist.github.com/106077
.. _`ShowMeDo, Django From the Ground Up`: http://showmedo.com/videos/video?name=3360030&fromSeriesID=336
.. _`Slashdot Review: Practical Django Projects`: http://books.slashdot.org/article.pl?sid=08/07/23/1339226
.. _`Slides`: http://www.b-list.org/weblog/2008/sep/07/slides/
.. _`Surfing in Kansas Django Tips`: http://ericholscher.com/blog/2008/oct/5/django-tips/
.. _`The "correct" way to do forms in Django?`: http://www.reddit.com/r/django/comments/abdez/the_correct_way_to_do_forms_in_django/
.. _`TinyMCE Widget`: http://www.djangosnippets.org/snippets/1705/
.. _`Tools of Pro Django developer`: http://uswaretech.com/blog/2010/01/tools-of-pro-django-developer/
.. _`Top 10 tips to a new django dev`: http://zeroandone.posterous.com/top-10-tips-to-a-new-django-developer
.. _`Top 10 tips to a new django developer`: http://blog.dpeepul.com/2009/08/31/top-10-tips-to-a-new-django-developer/
.. _`Tutorial - Ajax and Django`: http://www.willarson.com/blog/?p=36
.. _`Using Amazon's S3 service with Django`: http://showmedo.com/videotutorials/video?name=2680000&fromSeriesID=268
.. _`Using pdb`: http://ericholscher.com/blog/2008/aug/31/using-pdb-python-debugger-django-debugging-series-/
.. _django-apibuilder: http://opensource.washingtontimes.com/projects/django-apibuilder/
.. _django-imagekit: http://bitbucket.org/jdriscoll/django-imagekit/
.. _django-jumptoadmin: http://github.com/ryanberg/django-jumptoadmin/
.. _django-photologue: http://code.google.com/p/django-photologue/
.. _Django-Socialauth: http://github.com/cyrildoussin/Django-Socialauth
.. _django-vcs: http://wiki.github.com/alex/django-vcs
.. _django-voting: http://code.google.com/p/django-voting/
.. _djangosearch: http://code.google.com/p/djangosearch/
.. _Piston: http://bitbucket.org/jespern/django-piston/wiki/Home
.. _RestView: http://www.djangosnippets.org/snippets/1071/

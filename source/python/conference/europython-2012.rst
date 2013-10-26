EuroPython 2012
***************

.. highlight:: python

Guido van Rossum
================

Write unit tests - write integration tests.

Keep being clever.  Don't think your tools will solve all the problems.  If you
want to be naive, then delegate software development to someone else, and go
and make money or something!

Almost all functionality on YouTube is written in python (apart from the
codecs).  python clearly is fast enough for real work.

Functional programming - interesting computer science stuff - not useful very
often when integrating third party packages in the real world.

Questions and Answers
---------------------

``assert``, why isn't it used?

  It is used by many people.  Test your code with ``-o`` (what is that)?  Even
  if ``-o`` did not exist, then GVM would still say that ``assert`` is a valid
  part of the language.  Clever because the code following is not evaluated
  unless the assertion is ``True``.

  Misguided to use the ``assert`` statement for unit tests, because ``-o``
  would disable all your tests.

Alex Martelli
=============

Permission or Forgiveness
-------------------------

Slides_ (``europ12_fop.pdf``)

Sometimes the best answer, is neither!

The only way Grace Hopper could innovate so much in a bureaucratic US Navy was
by doing it first and asking for forgiveness later.  See *Why does it tend to
work* in the slides (funny, but true).

::

  if isinstance(x, numbers.Number):

... is an idiomatic, well-supported way to perform typeclass checking, but
don't forget, not ALL problems are nails.

Even better, when applicable, use defaults:

::

  d.get(key, 'default')

Concurrency - perform desired operations within a transaction.  Databases have
been doing this for a while.

Favourite example, is source code control.  Change local copy, commit, detect
conflicts, forces reconciliation.

Also see, *Launching a Product*, very interesting to compare and think about
the different strategies.

Mandate a code review.  Pair programming is not a good alternative.  People who
were not actively involved in writing the code will spot bits of code which are
unclear.  Unpopular with *young hot heads*.  Privacy and security cannot be an
afterthought!  Architectural, privacy and security reviews.

The benefits of paranoia: skills that make good programmers *aren't suitable
for human interaction*.

Febo Cincotti
=============

Let your brain talk to computers
--------------------------------

Brain, computer interfaces (BCIs).

http://www.bcistandards.org/

http://www.brindisys.it/

PyPy - Current status and GIL-less future
=========================================

You don't want to program using threads.

Lightning Talks
===============

Transifex

  Translate into many different languages.

How I became a bitterman

  Joined Canonical
  UbuntuOne - Port it to Windows - based on Twisted.
  Or, why I hate Windows paths (some funny examples).
  ``os.normpath`` doesn't work, ``os.path.split`` doesn't work, ``os.listdir``
  doesn't work!  ``ShFileOperation``, ``ShellLink`` (from Microsoft) doesn't
  work!!

eGenix, PyRun

  One file python runtime environment in a single, very tiny file.  Install
  without any side-effects.  No installer, just copy the file.  Independant of
  the system python installation, 12MB, etc, etc...

  Can be used for commercial projects.  linux, Mac (Windows support *might*
  follow).

ScraperWiki

  A tool for analysing data online and making collaborations.

  Tell us how you would do it.

SQLAlchemy and Testing

  ``github.com/riffm/testalchemy``

  Most reliable way is to recreate the database schema for every test, but this
  is very slow.  Wrapping each test in a transaction and rolling back after
  every test is fast.

  See ``Restorable`` context manager in the source code.

  *My guess would be that this module is not very useful*.

PSF Members Meeting

  All invited to the meeting at 6:30pm.  You can become a member...

OpenTaste.eu

  Even python developers must eat.  The site is made from Flask :)

RedEddy

  Technical computing in the cloud

http://kivy.org/#gallery

  Not WIMP, but mobile, tablets, OpenGL, touch, etc, etc.

  Cross platform, Windows, Android, Linux, iOS.  Applications have been
  accepted in the Apple App Store.  All written using the GPU, OpenGL.

  **Check out the gallery**, search on Google Play for ``kivy``.

  Talk on Friday, to share experiences, *OpenGL and python on Android/iOS*.

http://brochure.getpython.info/

  python software foundation, printed brochure is ready!

  Sponsorship options (including education).

Psycopg

  Wrapper, old fashioned C extension.  PyPy has tried to do something
  different.  Alex Gaynor tried to write a subset of Psycopg.  Another person
  tried to port using ``ctypes``.  Now written in pure python using a
  ``ctypes`` wrapper.  People started using it - now we have some problems.
  Not yet working on python 3.  Need somebody to take charge of pypy
  integration.  Could end up dropping the original Psycopg.

http://readthedocs.org/projects/artichoke/

  Web micro framework.  One file (very clever presentation).  Similar to
  TurboGears.

DocBook to Sphinx

  Sphinx - 30% faster by not doing index generation.  SOLR/Lucene does it
  better anyway.

Natural language processing and geocoding

  There is not a perfect solution, but that doesn't matter.  The beginning is
  usually good enough.  The first 70-80% is easy and fun. To get started, read
  the NLTK documentation.

Moin-Moin - Whoosh

  Fast, pythonic, pure python search library.  It is rather nice :) Can do
  highlighting and has a built in spell checker.  It is a library, not a
  separate server or process - just import it and use it.

  Dynamic fields are a nice feature - you don't need to know the name of the
  field - just give a ``glob`` field name.

  Works with Google App Engine.

  You can also time limit searches.

python Anywhere

  http://www.pythonanywhere.com/

PyCon UK

  Alex, PyCon UK is not dead.  Coventry TechnoCentre, early bird from Friday
  6th July, Friday 28th September for the weekend.

  Book tickets using EventBrite.

Building JavaScript Widgets

  | jBart
  | http://www.artwaresoft.com

Fitocracy.com

  Django application.  Django application.  We spend too much time sitting...
  but we do like playing games.

pyRserve

  A network bridge from python to the statistics package R

Social Eating Revolution

  Gian Luca Ranno, Gnammo

  Technology - Django, already have 2360 users and more than 30 events (within
  one year).

  Django (easy to learn for designers), Rabbit MQ, logging, social-auth, Django
  PayPal, Fabric, Supervisor

  Thank you for creating these great plugins.

Uploading to PyPI

  Pelle

  All of us should upload stuff.  It is very easy to do.

  @peralmq

Large XML with Unicode and namespaces

  Need to stream...

  Some people use ``codecs.open()`` and ``codecs.write()``, but this feels like
  desperation.

  Wrote our own ``loxun`` - pure python, only writes XML, streaming, raises an
  error for some errors.  Try it!!

How not to write a micro-framework

  | Daniel Pope
  | @lordmauve
  
Qubes - a secure client OS

  | Ariel Ben-Yehuda
  | http://invisiblethingslab.com/
  | http://theinvisiblethings.blogspot.it/
  | http://qubes-os.org/

Following #euro2012

  | http://paylogic.nl/

NHS Hack Day 2012

  | 22-23rd September in Liverpool
  | http://nhshackday.com

Django Bitcoin

  | ``django-bitcoin``
  | https://github.com/kangasbros/django-bitcoin
  | Open source currency.  Governments cannot control.

MoinMoin

  | Rewritten - now version 2 - look at it again!
  | Jinja 2, Flask, https://bitbucket.org/jek/flatland/ for validating forms
  | HTML5
  | Supports RST

batou

  | ct@gocept.com
  | Christian Theune

OpenStack and OpenShift
=======================

http://www.pixelbeat.org/talks/openstack_python/

Operational details of a large python project.

What is OpenStack?

  | IaaS (like Amazon AWS)
  | Open Source
  | 2 years old.
  | Mainly written in python (300k lines of python)

Public or Private

  | Sensitive logic or data
  | Amazon have partnered with Eucalyptus to offer a private cloud (March 2012)
  | OpenStack aims to support public and private.

Who uses OpenStack?

  | Rackspace
  | HP
  | Supports multi-tenancy

Overview

  | Nova == EC2 (central service)
  | Swift == S3
  | Glance, VM image, registration
  | Keystone, identity and auth
  | Horizon, Admin UI (Django)
  | Quantum, networking
  | Volume, EBS

Compute Service

  | Postgres or MySQL
  | Choice of queue e.g. RabbitMQ

python Technologies

  SQLAlchemy, Django, eventlet, paste, PasteDeploy, httplib2, webob, routes,
  python-cloudfiles, sqlalchemy-migrate etc, etc.

Project Packaging

  | Consume through distros.  Difficult to install yourself!!
  | 6 monthly release cycle.

Development

  | Always on trunk
  | Releases done to stable branch
  | git
  | Gerrit, patch review server (created by Google for Android). Looks nice :)
  | Jenkins (requires alot of ongoing maintenance).

Commit process

  | ``git branch; git commit``
  | ``./run_tests``, unit tests within a ``virtualenv``, nose used, pep8
  | ``git-review`` python tool, used to submit to ``gerrit``

Related python projects

  | OZ, ISO - image - glance - nova - libvirt - KVM
  | http://aeolusproject.org/oz.html
  | Heat API, AWS cloud formation, provision apps in the cloud.
  | https://github.com/heat-api
  | cloud-init, package install etc, https://launchpad.net/cloud-init/

Similar non python projects

  | oVirt, Java, for private data centres
  | Eucalyptus, C, less general, closed editions, EC2 functionality
  | CloudStack, Java, parts of this are closed
  | OpenNebula, C++ datacentres

Try it

  | http://trystack.org
  | fedoraproject.org/wiki/Getting_started_with_OpenStack
  | http://docs.openstack.org/

  You can run this on a VM!!

OpenShift
---------

https://github.com/openshift/

PaaS, you code the application, you want to deploy it.  You don't want to care
about the *deploy* stuff.

Is a free PaaS by Red Hat
Hosted at openshift.com
Based on Amazon EC2

python, java, node.js, php, perl, ruby

MySQL, PostgreSQL, mongoDB

Your app will still use the basic stuff

Open source project, tutorials, live CD, runs in a VM, Apache 2 license

Can be run on OpenStack

Run your own multi-node, multi-tenant PaaS using OpenShift, OpenStack and
Fedora on your own hardware.

A cartridge adds resources to your application e.g. PostgreSQL or MongoDB.

Check out the ``django-example`` on github

3 free apps on their hosted version.

juju - Service Orchestration and Deployment
===========================================

james.page@ubuntu.com

| ``jamespage`` on IRC
| ``#juju``

Written in python and Twisted.  Coordinates service install onto Ubuntu
servers.  Does not replace Puppet or Chef e.g. juju can deploy a database and
an application.  Can also scale up and down horizontally.  Abstracts you from
your underlying infrastructure.

The local provider is for developers.  Can deploy onto EC2, OpenStack or bare
metal servers.

Charms

  | Can be written in any language
  | Have a well defined structure.
  | Has configuration options to allow the application to be personalized.
  | Hooks - install, start, relation related (join, change), upgrade
  | Store - several charms built.  By default, charms will come from here.

Demo

  | Install demo Django application - Summit
  | Charm written by Mark Mimms, and uses Michael Nelson's generic Django charm
  | Majority of configuration is done using puppet.
  | Start (after installing local provider): ``juju bootstrap``
  | ``juju deploy postgresql``
  | ``juju deploy memcached``
  | ``juju deploy --config europython.yaml local:summit europython-summit``
  | (Summit is not in the Charm store, which explains the previous command)
  | ``juju add-relation europython-summit postgresql:db``
  | ``juju add-relation europython-summit memcached``
  | ``juju expose europython-summit``
  | (service is made public when it is exposed)
  | ``juju status europython-status``
  | ``juju debug-log`` (a log aggregation)
  | ``juju debug-hooks`` (uses a ``tmux`` session)

  PostgreSQL charm cannot currently scale...

  OpenStack is probably the most complicated charm set because of the multitude
  of options.  Ubuntu JuJu MAAS (metal as a service) project was started to
  allow installation of JUJU on bare metal servers.  Takes about 11 minutes to
  install OpenStack onto 9 servers.

  http://tinyurl.com/juju-at-scale  Testing on EC2 with 2000 nodes of Hadoop..
  Took 7 or 8 hours to provision!

  A couple of third party projects, https://launchpad.net/juju-jitsu/ and
  https://launchpad.net/charm-tools

  Switching provider is dead easy...

Questions

  Check out the Summit and Evernote charms to see how to pull code from source
  control systems.

  Switching provider is dead easy... Can use current version of Ubuntu server.
  On the client, will work with OS10 and Debian.

  **Be careful with your data - the current charms might not take care of it**

  No automation for intelligent scale up and scale down, but juju will replace
  nodes which disappear.

  Proposal to support verification e.g. smoke test, at some time in the future.

Diving into Flask
=================

A.Mishkovskyi

Switched away from PHP to python with Flask.  Second largest social network in
Netherlands.

Considered Django, Pyramid etc.

Simple start application.  Bus factor of one (everything written by one
person).  Loads of code behind the simple looking starting app.

End up with complex routes, loads of parameters...  Flask has the ability to do
things in many different ways e.g. method specific parameters.  How does this
work.  Explored class based views.  Can use manual dispatching.  Much easier to
use a decorator... Or use class based views with method names e.g.  ``get``...
Check out the source code in the ``View`` class.

Routes...  ``Rule`` creates regexp.  ``Map`` holds all rules.  ``Converters``
map to python code.  Rules can match URLs *and subdomain*.  ``Rule`` objects
are stored in a ``Map`` in sorted order.

Modular applications - easier to develop.  Pluggable.  Blueprints - needed API
versioning, ``url_prefix``, splitting admin and API endpoints, each blueprint
has it's own template folder.  Blueprints are a simple proxy object.  Great
example for writing plugins.

Wanted to use a proper ORM.  There is only one - SQLAlchemy...  Not obvious how
``Flask-SQLAlchemy`` actually works.  Code just helps with debugging.  ``Bind``
is the SQLAlchemy engine or pure connection object.  Bare metal, so you really
have to know what you are doing.  If you specify ``__bind__`` it will do the
proper thing...  See ``get_bind`` in ``Flask-SQLAlchemy``.  To achieve
master-slave support, ``db.session.using_bind('slave')...`` (custom code)!
Could use the bind for sharding etc...  Using ``SQLAlchemy-migrate`` which is
very old and not being actively maintained.  Had to write a wrapper to run
``migrate``.  Consider switching to Alembic, which is written by Mike Bayer.
Is very mature right now.

Deferring tasks.  Can now use Celery in Flask.  Removes the hassle of using
amqplib/pika.  Documentation is confusing and misleading.  ``Flask-Script`` is
a requirement for ``Flask-Celery``.  Most of the commands work!!  Is
over-engineered in many ways.  Celery colourizes logs - they don't like
colours!  Solution - add ``after_setup_logger`` signal and reassign our own
formatters.  Also, set ``CELERYD_HIJACK_ROOT_LOGGER`` to ``False``, but this
caused more problems.  Solution - do not use root logger!!  Two years old, but
nothing has been fixed.  To monitor celery, subclass ``Polaroid``...  Celery +
SQLAlchemy + MySQL issues - solution to drop whole connection each time the
worker starts - loses all connections (sounds like a complete nightmare)!!

``Flask-Cache``, all views are non-cacheable, so not very useful.  Wrote their
own.  ``libredis`` was in a pretty bad shape - have improved it.

``Flask-DebugToolbar``, very good at identifying bottlenecks.  Is a very good
example of blueprint based design.

Is no longer an April Fool's joke.  Still micro, but not in terms of features.

ecosystem, is not on a par with Flask in places.  Interoperability is rough in
places.  Lacks BDFL for extensions - do not know which ones to use.

How to bootstrap a startup using Django
=======================================

Gidsy is a marketplace where anyone can explore and book activities.

| @gidsynews
| @__philw__
| @jezdez (Django core developer)

Why we chose Django

  | Big community
  | Network
  | Language
  | Many problems already solved
  | The admin
  | Proven technology by similar use cases
  | Stable APIs in a well defined release process
  | Good documentation with focus on prose
  | Huge community of 3rd party components (2600 apps on chishop)

Haystack

  Can write python, can integrate with Django.  City page on the site is based
  on search technology.  Spatial date will be very important in the future.

  | Customisable search abstraction
  | Indexing, filtering, faceting, "more like this"
  | Spatial search and sorting

TastyPie

  Can easily hook into Django..

  | Highly customisable Web API library
  | Hooks for auth, throttling, caching, custom serialisation etc
  | Backbone.js compatible

  Django has a very strong paradigm.

Celery

  | Async code execution, cronjobs (a few periodic tasks)
  | Thumbnails, search index updates, caching etc.
  | Collect stats without blocking

  Very easy to put on a separate server.

Memcache

  | Periodic cache refreshing for high traffic sites
  | Fragment caching with dates and cache version
  | Cache warmup during deployment.

  Using Celery to build data for pages.  37 signals had a great article on this
  a few months ago.  Special field, ``refresh_date``... if something was
  changed by the user, then all keys are invalidated.  Tried redis, were not
  completely happy with it - have found memcache super simple.

A strong pattern.  Framework based solutions from the Django community.  Don't
have to think about all these things.  Major usefullness of the Django
ecosystem.

Workflow

  | Main branch is always deployable
  | Development happens in feature branches
  | Code reviews via pull requests
  | Shared responsibility

  Stopped using gitflow - now use github workflow - very successful.  Code
  reviews is a great way to improve the quality.  Shared responsibility.

Testing

  | Separation of fast and slow tests
  | Full test suite via Jenkins, soon Travis CI
  | Fast tests locally via ``tox``

  If you use the github workflow, Travis CI will test the feature branches :)
  Super important to make sure the product is ready for the customers.

Releasing

  | ``virtualenv`` (wrapper) + pip
  | ``localshopi`` for in-house software releases
  | ``django-setcon`` for Django configuration.  Class based settings files.
  | ``foreman`` for process management (written in Ruby).

  Using ``foreman``, one command will set up an environment for a developer.
  Not using virtual machines because they take too long to set up.

Scaling Up

  Initial set-up by hand.

  Gets more difficult, each server downloads dependencies, external services
  could be down, which server is in charge?

  Built their own deployment server which builds the latest release as a
  ``tar`` file.

  | Builds are virtual envionments
  | Atomic and orchestrated releases
  | collectstatic, migrate and other command centralised.
  | Web interface for deploying and rolling back
  | Pushes status updates to New Relic and HipChat

  Will be relased as an open source package soon.

Provisioning

  | Follows DRY
  | Chef/Puppet/Salt (decided to use Chef)
  | Documents infrastructure and change
  | Place to share and store secure date
  | Roles can be on one or many servers
  | Challenge - separating deployment from the application.

  Dependencies come from the deployment server.  On a new deploy, there is
  really nothing that Chef needs to do.

  Use ``knife`` to run commands on the servers e.g.
  ``knife ssh "role:web" "sudo chef-client"``

  Instagram tool, ``ec2-ssh``, has a simple syntax and the name never changes.

  ``pychef`` to access node data and manipulate it with python.  Use it in
  ``fabric``.

Operations

  | Log everything you could need for debugging
  | If you deploy often then you need immediate feedback
  | Use services if you can: Mixpanel, NewRelic, Librato, Papertrail, Pagerduty

  ``django-app-metrics`` to push data to the services.

Summary

  | Only scale when you need to, but be prepared
  | Be pragmatic
  | Automate
  | Continuous integration and continuous deployment.
  | Make routine tasks really easy

Questions

  | Django community is smaller than Ruby.  Not necessarily harder to recruit.

Logging Module
==============

http://lokai.redholm.com/

Two targets for notifications: data related (errors in a file, new data,
warnings) and system related (all other errors).

Requirements

  | Route messages to different people
  | Accumulate messages relating to a single input
  | Remember types of messages to decide action
  | Store messages as actions in the database.

Development Requirements

  | Simple API
  | Avoid passing notification objects from place to place
  | A single process might handle many files in sequence

Logger

Root logger

::

  basicConfig()

Get the logger and send a message

::

  getLogger().error(error_message)

Or... use a named logger:

::

  my_logger = getLogger('main.special')

``Handler`` does the actual output...

Might be helpful to think of it as follows:

  | What went wrong - Message
  | Where did it go wrong - Logger name
  | How important is it - ``Level``
  | Who needs to know - ``Handler``

Filters are given a copy of the log record.  Message is not processed if filter
fails.

Multiple handlers can be defined.

Logger hierarchy

  | Messages sent to X.Y.Z also go to X.Y and X (depending on filtering).
  | ``getLogger('X.Y.Z').warn(text)``

  The logger does level cut off test and filtering before it does anything
  else.  So, the hierarchy will not get checked if the level doesn't match.

Filtering is possibly best done by the handler...

Lessons in Testing
==================

| David Cramer, DISQUS
| twitter.com/zeeg
| https://speakerdeck.com/u/zeeg/p/lessons-in-testing

5 billion page views.  Use Django and Flask.  Less than 20 engineers.  Terrible
at testing.

Lessons

  No one likes writing tests.  Time consuming to write.  At least 50% of time
  writing tests.

  Legacy (untested) code is expensive.  Very expensive to add tests later.
  Add tests for regressions.  Always write tests for new code.  Becomes easier
  and easier to write them.

  Slow or inaccurate - you can spend more time writing tests, or much more time
  running tests.  So, *moving towards integration tests*.  Interface contracts
  yield inaccuracy (i.e. they change).

  Higher level tests are slower, but easier to write and understand i.e. unit
  vs integration tests.

  Mocking is great, but is very fragile (they use ``mock.readthedocs.org``).
  Very useful for testing services e.g. Twitter and internal APIs.  Record live
  data for mocking - check out the Ruby VCR library.

  Limit what you test.

  Assume APIs don't change (it is mostly true).

  Smoke tests... Very high level Selenium test.

  Test the life-cycle of requests.  Selenium *kind of* works...  Very fragile,
  swapping some of the tests out to PhantomJS.

Don't admit defeat!!

  Start with a goal - **write testable code** - things will become much, much
  better.

  Break up your code into functions e.g. abstract out the database calls.

  **Start writing tests**, add helpers wherever it makes sense - tests will
  become much cleaner.

  **Create structure** in the test suite.  Don't like the Django pattern (they
  have a much deeper folder structure).

  **Document best practices**, make it obvious how to use your helpers.  Help
  people write tests.

  **Continuously run tests**, make people fix stuff immediately.  Having
  visibility.  Nobody cared about JavaScript tests until they were added to
  Jenkins.

  **Drive it into your culture**.  We don't like to break production code.

  **Use code review** Everything goes into code review... Breaking stuff into
  smaller chunks so development life-cycle can go faster.

Tools

  If the right tools don't exist, then build them.

  Switched off the standard Django test system.  They use **nose** for test
  discovery and uses standard unit test style.  Can drop into ``pdb`` on test
  failure: ``nosetests --pdb --pdb-failure``.  Check out ``nose-quickunit`` and
  ``django-nose``.

  Record code coverage using ``coverage.py``.  Use ``coverage run`` in place of
  ``python``.

  Sentry, exception reporting, because tests are not enough!  Data usually
  breaks code.  Check out the stack trace - can often avoid having to contact
  the user.

  CI - Jenkins.  Has been mangled into something it is not at the moment.
  Wanted to **test every commit** (couldn't do this with Jenkins).  Have
  separated tests into chunks e.g. JS, integration, unit test.

  Code review - http://phabricator.org/, (PHP), very well written.  Very well
  integrated with GIT.  Makes your commit message useful.  ``arc`` is the
  command line interface - runs ``lint`` and unit tests.

  Gargoyle, selectively enable features in code.  Silently launch features.
  Ease performance and for load testing.  They call this *dark launching* -
  managed to test their real time module before anyone was using it.  It has
  also failed several times without affecting anything.

Takeaway

  Very hard for us to adopt it.

  Test suite still has alot of holes.

  Global fixture is a problem - speeded up - but hard to understand and creates
  problems with test isolation.

  Alot of problems with people arriving from environments where they are not
  used to testing.

  Integration testing has been awesome for us.  Use Django, so database testing
  is pretty awesome.  Unit testing can work right - if you do it from the start
  - works perfectly for a library.  Ship fast - or a perfect product - you have
  to find the balance.

  The process is evolving.  **Culture is key**.  Very hard to adopt.  Came from
  PHP - had no idea what tests were at that point.  Alot of people come from
  this *hackish* world.  Wanted to release often, and didn't want an expensive
  QA team.

  Figure out the value for your own company.

  **Just do it?**

Questions

  For lint, use ``pyflakes`` and ``pep8``.  Check out the modified version of
  ``pyflakes`` on his github page.

  git branches - follow the pattern used by the review tool.  Developer works
  on feature branch.  ``rebase`` so the branch is a single commit (for code
  review).  ``master`` has to be stable.  Similar to gitflow (but not the
  same).

  Deploy - use ``fabric``, ``rsync`` etc.

  Making the case - Why are we deploying broken software to production?  Could
  calculate the cost of failure and compare it to the cost of prevention.  Must
  be doing something right, as we have no QA people - and are fairly stable.

  Arbitrarily assign code reviewers.  Don't currently have a great solution.
  Not really sure how to guide reviewers.  When to accept, and when to reject.
  When should we spend time doing it.  Comment from audience - Review board is
  good, but not great.

  Has personally only been successful using TDD when fixing a bug/regression.
  Culture for TDD is much harder to adopt.  Has been some very impressive
  stories from companies with this culture.  Wouldn't stop a developer doing
  TDD as long as the code is good.

  For a while, only wrote positive tests...  The code reviewers and the
  developer will decide if the tests are worth writing.  Alot of it is trial
  and error.  Have mentors, peer review, discussions.

  Test data - Django fixtures were a problem, so implemented global fixtures.
  Use a modified version of ``django-nose``.  Set-up global fixture before
  running tests.  Loads using SQL and sets up REDIS.  Rely on the test not
  being too absolute about what is in the fixture.  Do not mock the database.
  Kind of *iffy*.  Released ``django-mock``, but sounds like they don't use it.
  All trade offs.  No perfect solution.

  Eventual goal is for Jenkins to test each patch in isolation before merging.

eGenix PyRun
============

| Marc-Andre Lemburg
| Core Developer, CEO of eGenix

Open source project.

Motivation

  Simple installation without side effects.  Often difficult on linux.  Disk
  space is cheap.

  Small footprint and download.

  Easy to add to installers.

  Extensible - load .py, .pyc and C extension modules.

Project

  Builds upon old mxCGIPython project

  Support for 2.7 (not 3 yet)

  Binaries available for linux, Mac OSX

Use Case

  Distribution of scripts and applications.  Loads almost twice as fast as
  regular python.  Uses only a fraction of the space - 12MB file.

  ``virtualenv`` replacement.  Simply copy into a folder.  For ``pip`` etc, you
  will want to create a folder structure.  Don't need an activation script.
  Independant of python installation.  Works without python installed.  No
  symlinks to manage.  Fully relocatable.  Small enough to have multiple
  copies - 13MB with ``pip`` and ``setuptools``.  36MB is you want to compile
  extensions (after compile, you can remove alot of this).

  Testing and scripting

  Application private python installations e.g. dedicated python for Trac.

  Embedded devices (just a thought - not tested).

How does it work?

  Based on python's ``tools/freeze`` (with a couple of patches).  Is used on
  the whole standard library.

  PyRun searches relative to it's executable folder making it easily
  relocatable.

  Uses it's own lib/directory for extensions.

  Added tricks to make it compatible with ``distutils``, ``setuptools`` and
  ``pip``.  Not yet tested with ``buildout``.

  If you find things which don't work, then please let us know.

Missing

  dbm, crypt, readline, parser, tkinter, multi-processing, test packages.
  These modules can be loaded as regular external ``.so`` modules.

What doesn't work?

  When run with ``regrtest.py`` - some of the test suite modules do not work.
  They do work when run standalone.

  Standard libary modules that require access to resources.

Alternatives

  | py2exe
  | cx_Freeze
  | bbfreeze
  | etc

Future

  Better documentation.

  More flexible configuration.

  Windows support

  ``setup.py``

Demo

::

  tar
  # only need the bin folder
  bin/pyrun

  tar setuptools
  ../bin/pyrun ...

  tar pip
  cd pip

  bin/pip install

Continous introspection
=======================

| @nicvenegas
| Works for Atlassian bitbucket

Cast

  | @erikvanzijst - author of ``dogslow`` and ``interruptingcow``
  | @brodie - author of ``geordi``

Performance Problems

  ``conq``, their ssh shell was importing Django and Bitbucket code, and took
  nearly 1.5 seconds per request.  Switched to using direct SQL, and massive
  reductions in load.  60% load decrease on all web servers.  16 times faster
  to start up.  To learn - this wouldn't have been seen in the development
  environment, but did cause problems to all of their users.

Common Causes

  Slow SQL queries (or too many).

  Lock contention - between threads, database table/row locks, file locks
  (hg/git).

  Excessive IO (disk/network)

  Regular expressions - the a fast regular expression can sometimes take
  forever.

  503 - worker pool full.  Could be a denial of service attack.

  500 - if request times out (Gunicorn ``SIGKILL``).  Process does not know
  that it is going to be killed.

Libraries to help

  ``dogslow`` is Django middleware which emails traceback of slow requests.
  Has no performance penalty.

  ``django-geordi``, selectively profile individual requests.  Add
  ``?__geordi__`` to any URL to enable the ``VisorMiddleware``.  Produces a PDF
  call graph showing where the process takes the time.  It runs outside the
  worker pool as a Celery task, so shouldn't cause load problems.

  ``interruptingcow`` - allows you to time-box chunks of python code e.g. allow
  the process to take up to 20 seconds - throw an exception if it takes longer.
  Supports nested timeouts - can be used to make parts of a request optional.

Becoming a better programmer
============================

| Harald Armin Massa
| Lightning Talk Man

Shortcut

::

  apt-get --purge remove java

Use mind-maps to help you process information.  Not very useful for other
people.

Very funny talk...  although you probably had to be here!

BDD at BSkyB, Collaboratively coding correctly
==============================================

| @saley89
| @russellsherwood

Replace a legacy sales system.  python 2.7, REST API.  Cannot afford defects
when selling.  Cannot afford to price incorrectly.

Why we use BDD

  | Do it right the first time
  | Deliver what was required with high quality code
  | Testers and developers write tests
  | Easy reuse
  | Refactoring

Testing is everyones responsibility

  History - Developers did testing - testing is role of dedicated QA team -
  introduction of agile - testing is everyones responsibility TDD/BDD

  Other tools - Fitnesse, Selenium, nose

  Agile - Sprints, planning games, retrospectives, fail fast, adapt quickly

  Two weekly sprints, only two bugs and they have never been deployed.

What is BDD

  | Focus
  | Collaboration
  | Simple
  | Feedback cycle

Gherkin

  | Given
  | When
  | Then
  | And
  | Feature
  | Background
  | Scenario
  | Scenario Outline

Process

  | Story card
  | Defuzz (15-20 minute chat with business analyst)
  | QA - BDD (write the test)
  | Write code (using TDD)
  | Review with business analyst
  | Card complete

Test

  | Understood by all stakeholders
  | Simple - plain English
  | Steps file - regular expressions,

Tools

  | Cucumber - Ruby
  | Lettuce - almost a direct port of Cucumber
  | Freshen - used by BSkyB - uses ``nose`` test runner
  | Behave - seems to be gathering momentum.  Almost identical to Cucumber.

  All pretty much the same.

Demo

  ::

    nosetests --with-freshen -v --nocapture my.feature

Do it right the first time every time.

Questions

  Step re-use is done by simple collaboration - team share and help each other.

  The testing team work with the business analyst to write useful tests.  Need
  someone in the team who understands how the test will be written.

  Do unit testing before writing any code.  Acceptance tests are written up
  front in Freshen.

  Work in two weekly sprints.

  Can the tests serve as documentation?  BSkyB have separate documentation
  which is written by the business analyst.

  How much time does it take?  We can spend so much of time writing tests.  BDD
  tests are verbose.  BDD clarifies exactly what needs to be done.

  How do you know how much a feature will change?  The application has a road-
  map and the BDD tests define the features.

zc.buildout
===========

http://gocept.com/

Problems to solve

  Install and configure software in a reroducible way

  python and other packages

  Does **not** build software from source (``make`` etc)

  Isolated from other applications on the same machine - and from other
  buildout environments on the same machine.

What is zc.buildout

  Developed by Jim Fulton (Zope) in 2006

Demo

::

  # download
  wget bootstrap.py
  # create a config file, then bootstrap the environment
  python bootstrap.py -d

  bin/buildout

The work is done by a recipe.  They are downloaded when buildout runs.  The
recipe comes as an egg e.g. ``zc.recipe.egg`` invokes ``easy_install`` API.

When the configuration is changed, everything previously installed by that
recipe will be removed and re-installed.

Each script sets up it's own python path, so the eggs do not have to be
installed into the system python folders.

The recipe sets up the ``bin/buildout`` script.

Versions are *pinned* ``[versions]]``, they will always be honoured.  Good
practice to set ``allow-picked-versions = false``

KGS - known good set of pinnings

e.g. Can install nginx, recipe - ``zc.recipe.cmmi``

Python Web Applications in Multihost, Low Latency Environments
==============================================================

| Pavel Schon
| diverman on Django snippets
| pavel@schon.cz
| pavel.schon@deutsche-boerse.com

Trading systems.  Using python on the web server, and JavaScript, jQuery SVG on
the browser.

WSGI Frameworks works in similar ways

  | Create request object from an environment provided by web server
  | Dispatch URL to an appropriate controller function which returns a response
  | Execute the controller function
  | Returned to web server.

Request Object

  | Environment - method
  | Session
  | etc...

Dispatch URL

  | Regular expressions
  | Rewrites (``mod_rewrite``)
  | Wildcards
  | Decorators

Controller Function

  | Generate the content
  | Handle ORM, cache, cookies
  | Return response
  | Error handling

State

  | Browser state
  | Server state
  | Process state
  | Session state

Shared State

  | Get or create a session, modify, store session
  | Race conditions - need to synchronise

  How to synchronise?  SQL, lock file, messaging, RPC, DLM (distributed lock
  manager).

  ``dlm.py`` published on ActiveState.com.  If app crashes, all other processes
  will wait.  Single point of failure.

  Apache ``mod_wsgi`` can run background processes.  Apache will start, end and
  restart the process.  See ``WSGIDaemonProcess`` for details.

Fun with GET or POST data

  How to check equivalency?  Encode multiple forms into a single query string.
  *Not sure about this - don't know why you would*

Guidelines to writing an API with python
========================================

| @peristerakis
| George Peristerakis

Reuse existing frameworks and customise them according to our customer needs.
This did not work in one case, because the framework did not support an
important feature.  Patches to the framework were not accepted - so they tried
a monkey patch (so they could keep using updates to the framework).  They then
put it in a middleware.  So... what should the strategy have been?

How about writing an API to replace the existing framework implementation?

Steps

  What is a discount calculator?  Start by saying what it is not e.g. it is not
  reporting...  This will allow us to concentrate on the API without
  contaminating our thought process with other concerns.

  Understand the data.

  Started by using a dictionary to collect the data - then converted to a
  class.

  | http://docs.python.org/reference/datamodel.html
  | http://wiki.python.org/moin/HowTo/Sorting/

Lessons learned the hard way

  Evolve - from ``__init__`` to infinity.  Don't try to do too much.  Don't try
  and satisfy too many people.  Always try and find the most simple form of
  what you are trying to do.  If you talk about it, and find yourself talking
  about multiple conditions, then simplify.

  Know your domain from different angles.

  Document your process.  **Why** is more important than the **How**.

  Don't be afraid to test your hypothesis and then throw it away.

Other Stuff
===========

Downloads for Android gaming:
http://thp.io/2012/europython/downloads.html

Keynote about https://www.torproject.org/
Tor is free software and an open network that helps you defend against a form
of network surveillance that threatens personal freedom and privacy,
confidential business activities and relationships, and state security known as
traffic analysis.

Slides for `Programming mobile apps with python`_

Check this out `Advanced REST client Application`_

To Do
=====

Check out the ``with`` statement in connection to unit testing...

How about a python contractors cooperative?  If interested, contact
rob.collins@pythonpro.co.uk.  http://pycontract.com

Use mind-maps to help you process information.  Not very useful for other
people - but will help your own brain.

Check out the ``Background`` keyword in *Freshen*.  What is the equivalent in
Lettuce?

Read the following:

| http://docs.python.org/reference/datamodel.html
| http://wiki.python.org/moin/HowTo/Sorting/

Check out https://github.com/inglesp/prescons

Check out ``django-ztask`` (should not use Celery apparently)

Check out ``django-pjax``  JavaScript library written by some guys from GitHub.
Manipulates browser history.

Check out http://discorporate.us/projects/flatland/  Form validation etc...

Advanced Flask Patterns
=======================

Mysteriously applicable to other things...

Will only work with new version of Flask (released on Sunday).

Apps are entirely independent.  Now have an ``app.app_context()``, the
``current_app`` will point to the current application.  Similar for the request
object.

Request stack and application stack are independent:

::

  with app.request_context() as ctx:

Because requests are expensive, you can now use the application context.

Runtime state is request bound (short lived), test bound, user controlled.  If
your view function returns, your context will disappear.

State bound data:

::

  request - HTTP request and session data
  app     - Database connections and object caching.

Old pattern had issues:

  - Requires an active request for a database connection.
  - Always connects to the database even if it isn't used.
  - Once you start using ``g.`` you expose an implementation detail.

New pattern seems weird and complicated.  The *trivial* example will not work
with multiple applications.  Not so bad in actual use...  **Slides are
incorrect**

Teardown always happens unless a chained teardown failed.  Could move
transaction ``commit`` or ``abort`` to teardown method.

Recommend using an extension for database handling.

Explicit response creation - using ``make_response``.  Normally you don't want
to do this (you can call ``make_response`` on the object returned from
``make_response`` - this is useful for decorators - one person in the
room had made a custom return type which converted objects into JSON data*).

Deep copying objects in python is slow and nearly impossible!  Faster to use
JSON!

How to share between applications?  Blueprints are similar to applications.
Solution seems ugly - Armin would welcome suggestions.

Extension Primer

  - Are very vaguely defined
  - Do not use a plug-in system.

Extensions should no longer use ``self.app``.  They should use the application
object from the context.

Making DISQUS Realtime
======================

| Adam Hitchcock
| @NorthIsUp

Back-end Django and Postgres

Real time is an entirely new architecture.

Why do real time (less than 10 seconds)?

  | Getting new data to the user ASAP
  | Increased engagement
  | Looks awesome
  | We can sell it

Old realtime used polling which used jQuery to poll memcache.  Was kinda
#failscale!

Real*er* Time

  | Tested dark on 50% of network as is still a WIP
  | Have seen 1.5 million concurrently connected users
  | 45 thousand connections per second
  | 165 thousand messages per second
  | .2 seconds latency end to end

How do we do it?

  | nodejs and mongodb (**no** this is a python conference)
  | gevent, gunicorn, flask, thoonk (a queue built on redis)
  | redis (pub-sub), nginx, haproxy

Architecture

  Django - new posts onto redis queue - backend gevent server - redis pub/sub -
  frontend gunicorn and flask - nginx and haproxy

Backend

  - Listens to Thoonk queue
  - Cleans and formats message - this **is** the final format before http
    publish - compress data now (gzip)
  - Publish message to pubsub forum:id, thread:id, user:id, post:id

  Average processing time is 0.2 seconds.  Queue maintenance - timeout 5
  seconds.  Separate pub/sub and non pub/sub redis.  Quarantine failing
  messages (what jobs to re-queue, get and cancel jobs).  Transactions can be
  picky.  Planning on using zookeeper??

``gevent`` is nice

  gevent spawn helpers, https://gist.github.com/3053495

  Start, fail, start, fail, start, fail, **kill**

  To yeild a thread ``sleep(0)``

Front End

  - Needs to be fast
  - Pools redis connections
  - Routes messages from pubsub to http

  New request - create/register a subscription with the pool - sub/queue
  returns a python queue based on the channel.

  Listener receives the message on a pubsub channel.  If that channel has a
  subscriber, pass it on.

  Long pollingish.  Long help HTTP connection.  Stream JSON over this
  connection.  Why not web-sockets - because they don't work yet - and are not
  stable.  They will use them, with a fall back to long polling-ish.  Must
  be JSON - as text will get buffered.  With millions of connections, had to
  pool redis pub/sub.

  Timeouts - needless reclaiming of resources.  Maximise usage of cheap things
  (connection count).  Minimise expensive things (requests per second).
  Getting rid of timeouts and increasing timeouts has increased concurrency.

Testing

  Darktime - Use existing network to load test (at the beginning a few user
  complaints - cannot hide them from the browser console).

  Darkesttime - load testing a single thread.  Discovered alot of flaws in the
  architecture.

  Have knobs you can twiddle.

Stats

  Measure all the things

  Especially hard when numbers don't line up.

  Try to express things as +1 and -1 if you can.

  Is hard in distributed things.

  I used ``scales`` from greplin *metrics for py*

Lessons

  Do hard work early

  Defer work you might never need

  End to end ACKs are good, but expensive.

  Timeouts are not free.

  Greenlets are effectively free

  Pub/sub is effectively free.

  Nginx for real time, you must have ``proxy_buffering off``

Questions

  Something faster than ``pywsgi``?  ``FapWS``

  Between WSGI and Web-Sockets, you could use ZeroMQ.  Don't think it works
  cross language.

  Flask just loads the routes..  Use Blueprints to load the same endpoints
  multiple times.  No database access.

  Do you have to have Nginx and haproxy - can we run Gunicorn straight onto the
  web?  No - you need Nginx and haproxy.

  Gargoyle also has JavaScript options to switch things on and off.

  Why REDIS?  Needed pub/sub and a queue.  ZeroMQ also provides pub/sub, but
  uses a broker - so hard to measure.

  ``nydus`` - consistent hashing for Redis.

Discovering Descriptors
=======================

https://github.com/inglesp/Discovering-Descriptors

| Peter Inglesby
| @inglesp
| peter.inglesby@gmail.com
| git://github.com/inglesp/Discovering-Descriptors.git

``__get__``, ``__set__`` and ``__delete__``  makes it a descriptor.

Slots restricts the attributes that a class can have.

Properties - similar to descriptor in many ways.  Good for storing a single
value but representing it in different ways.

- Properties work best when they know about the class
- Descriptors are more general, can often apply to any class.
- Use descriptors if behaviour is different for classes and instances
- Properties are syntactic sugar.

Read

- Data Model Reference
- Descriptor HowTo Guide
- Unifying types and classes in Python 2.2
- Guido's History of Python blog.

Read Code

- Lots of good examples in Django such as related objects.
- Hybrid attributes in SQLAlchemy
- python source ``Tools/demo/eiffel.py``
- ``$ grep __get__ site_packages``

Play

- Implement methods, ``__slots__``, properties in pure python.

Cubes - lightweight OLAP
========================

https://github.com/Stiivi/cubes

| @stiivi
| Stefan Urbanek
| stefan.urbanek@gmail.com

Small, lightweight framework.  Is one year old - does not have permissions etc.

Aggregation browsing, slicing and dicing.

Two parts - modelling and reporting (aggregating).

Four parts: Model, Aggregation Browser, Backends, http Server

Model

  Business analyst view of the data.  Different to your normal transactional
  view of the database.  Smallest part of the data is called a *fact*.  A cube
  is a collection of measurable facts.

  Dimensions e.g. time, type - provides context for facts - used to filter -
  has a hierarchy.

  Label attribute describes the data.  The key allows for slicing.

  Cubes can be localised.

Browser

  Displays data

  No pre-defined ways to store the data.  Denormalised or snowflake.

  For the browser to work, you need the model and the data.

  The *cell* provides the data from a filter or selection.  Can be multi-
  dimensional.  Cells have a path - which describes the meaning of the key.

  Three cut types - point, set, range.

  Has an implicit hierarchy e.g. months within a year.

  Can create ``cross_table``

  Slicer is an OLAP server which uses HTTP and JSON:
  ``slicer serve slicer.ini``.  Also a ``slicer`` command line tool.

SQL Backend

  Supports star or snowflake (extended star) schema.  Can also browse a
  denormalised table.

Future

  Would be nice to have some formatters for visualisation libraries.

  JavaScript library (check out ``cubes-js``)

  More backends.

  Open Data

  - Shared repository of models
  - Shared repository of dimensions
  - Public cubes - open slicer HTTP APIs

  Simple module for Django i.e. read the Django models and then use the slicer
  server.

  Stay light.  Want to keep it simple and lightweight.

Python @ Layar
==============

| http://layar.com
| http://stiktu.com

or, building complex and scalable systems using python and AWS

| @jfdsmit
| Jens de Smit

Case Study - Mobile augmented reality.  Alot of python in the back end.  Mobile
clients are native code.

Django back end

  | Comprehensive feature set
  | Build web pages and API
  | Active community
  | Many good extensions
  | Can handle high volumes (Christophe Pettus, http://thebuild.com)
  | Handles user registration, catalogue, web hosting

  Files are stored on S3 (slow), database is MySQL on Amazon RDS (not the best
  choice for Django, but easier on AWS as it is setup for you).

Web facing

  | Two Django boxes with AWS load balancer
  | Django instances autoscale when load goes up
  | Popular data in memcached
  | Scaling database - bigger machine or read replicas

Logging

  | Sentry
  | Group and count on similar messages
  | One Sentry install for all your services

Visual Search Engine

  | Image recognition - Catchoom
  | Tornado with ``Boost.Python`` interfacing to C++ binaries
  | Sharded for scale-out, redundant for HA and read speed
  | Storage on EBS volumes (more expensive, but much faster)

Analytics

  | MySQL database collects data
  | Django app stores SQL queries for aggregation
  | cron job executes queries and stores results
  | More SQL queries feed HighCharts for fancy graphics

  Note: this does not scale.

Long Running Jobs - (Spencer - home grown Twisted app)

  | Extracting images from PDFs, analyse images
  | Multiprocessing rather than multi-threading
  | Default 1 instance, easily scales to 20
  | Calling separate programs to do processing lets you use anything
  | Only 1300 lines of Twisted

  Basically simple queuing with background tasks.

AWS

  | Convenient
  | Pay for what you use
  | Basic monitoring
  | Web interface and command line tools
  | *Not the most bang for your buck*
  | Assume no guarantees
  | Does not excuse you from having Ops!
  | *Databases are very expensive*
  | Backup outside of Amazon

Tips

  | python has alot to offer
  | Automate - Fabric and Chef
  | Deploy early, darktest, waffle, gargoyle
  | Use ``django-ztask`` not Celery
  | Cache from the beginning.  Think about every query as you write it.

Going massive with uWSGI and nginx
==================================

| Roberto De loris
| @unbit
| https://github.com/unbit/
| Main contributor to uWSGI and a little contributor to Nginx
| https://github.com/unbit/uwsgi
| http://projects.unbit.it/uwsgi
| http://projects.unbit.it/uwsgi/wiki/Emperor
| http://projects.unbit.it/uwsgi/wiki/FastRouter
| http://projects.unbit.it/uwsgi/wiki/SubscriptionServer

Identify your context - trusted or untrusted?

System resources - memory, CPU, disk space, network bandwidth

How many sysadmins do you have?

Try to never reload system services for updating config

Let users do hard work.  Good docs needed.

nginx - cheap, fast HTTP, SPDY proxy

uWSGI - for app hosting and management

::

  server {
    listen 80;
    servername $hostname;

    location / {
      include uwsgi_params;
      uwsgi_pass unix:/tmp/$host.socket;

Read about ``vassal`` (I think these might be configuration files)

::

  # single folder
  uwsgi --emporer /etc/vassals
  uwsgi --emporer "/etc/vassals/*/*.ini"

::

  [uwsgi]
  customer = customer001
  uid = %(customer)
  gid = %(customer)
  socket = /tmp/example.com.socket
  wsgi-file=/var/apps/yourapp/ap...

Linux Control Groups (``cgroups``)

  For security to limit CPU and memory

Is getting too complicated for me now!!  Check out the slides...

  | uWSGI ``fastrouter`` for single Nginx and multiple uWSGI servers.

What is missing

  | Static files serving
  | Long running tasks and external daemons
  | database


  ``ssh`` give ``ssh`` to users... (please)... Why?

Working on

  | ssh keys for secured subscription
  | Other event systems (zeromq, redis)
  | etc, etc

Questions

  | Is Nginx really needed?  Yes
  | Can I build the next PaaS/ISP/hosting platform?  Yes
  | HA Proxy is really good at something??

In Search of Reduced Loading Times
==================================

| Apostolis Bessas
| @mpessas
| Transifex

Uses Django and PostgreSQL

Optimizing SQL

  | ``django-debug-toolbar``
  | ``django-devserver``
  | ``django.db.backends`` logger
  | Database logging, ``log_min_duratiion_statement`` in PostgreSQl

Less Queries

  ``select_related`` - adds a ``JOIN`` to get the data for the related table.

  ``prefetch_related`` for many to many and reverse for foreign keys.  Will
  write a query to get all the data in just two requests from the database.

``.iterator()``

  Tells Django to not cache the results from the database.  Prevents
  unnecessary caching of results.

``annotate``

  **Always** use ``values()`` before ``annotate``, so the SQL query only does a
  ``GROUP BY`` on the required columns.

Raw SQL

  Don't be afraid to use raw SQL.  Two methods, ``Manager.raw()`` and
  ``django.db.connection.cursor``

  ``RawQuerySet`` is like a ``QuerySet``, but is not a ``QuerySet``.  The
  objects returned are valid models.

``defer()`` and ``only()``

  | ``defer`` - columns to omit from the ``SELECT`` list
  | ``only`` - columns to specify in the ``SELECT`` list

Bulk Operations

  | ``bulk_create`` (``django-bulk`` for older versions of Django)
  | ``COPY`` for PostgreSQL

  Don't forget to take advantage of the native features of your database.

De-normalisation

  | Mostly for read-only data - and only when you see performance issues.

``Meta.Options.ordering``

  **Don't use it!!!** as it will add an ``ORDER BY`` statement to every query.

Caching

  **Don't use the database for sessions**.  Use ``memcached`` or signed
  cookies.

Template Compilation

  You can pre-compile templates: ``django.templates.loaders.cached.Loader``.

  Be very careful not to use any state in your template e.g. different
  template output for each user.

Entity Tags/Last-Modified

  Allow to use browser cache (304 status code)

  Worth doing only if it is easy to calculate the entity tag.  No point doing
  anything expensive.  Will save you bandwidth.  Often good for home-pages if
  they don't change very often.  You could store the last updated time in your
  cache.

  Will not work with personalised pages.  Could think about using JavaScript
  for personalised sections.

  Proxy might intercept the 304 status code.  The request might not even get to
  your server.

Optimising Algorithms

  Be careful with regular expressions...

I/O

  | Threads for I/O
  | Async I/O

PJAX

  ``django-pjax``  JavaScript library written by some guys from GitHub.
  Manipulates browser history.

Kivy
====

| Leader of Kivy organisation.  Cross platform python framework.
| Freelance since 2010
| https://github.com/kivy/kivy
| http://kivy.org/docs/
| http://wiki.kivy.org/
| https://github.com/kivy/python-for-android/
| https://github.com/kivy/kivy-ios

Runs on Android, iOS, Windows, OSX and Linux

Based on OpenGL ES 2.0.  API for 2D and 3D graphics.  OpenGL managed by Khronos
Group.

Available for 90% of Android and 84% of iOS devices.  Number is always growing.

Goal

  | Create a framework
  | Handle all devices
  | Code once in python - deploy anywhere
  | Based on Cython
  | Rapid prototyping

Community

  | 5 core developers
  | 35 contributors
  | Over 500 users on mailing list

Performance improving with each release.

New language, ``kv`` for widgets (a bit like CSS)

Demo

  Multi-touch does not work with QT.  Can only receive one event at a time.
  Kivy is multi-touch by default.

  Android Play store has a Kivy app showing all the widgets.

Not doing native applications - applications will look the same on all devices.

Next version

  | SVG graphics
  | Simple 3D model loader
  | Better documentation

Future

  | Grow the community
  | More widgets
  | Unified build/packaging
  | Faster execution
  | HTML5? :)

Questions

  | License - LGPL - Will do a blog post
  | Size of binaries


.. _`Advanced REST client Application`: https://chrome.google.com/webstore/detail/hgmloofddffdnphfgcellkdfbfbjeloo
.. _`Programming mobile apps with python`: http://lanyrd.com/2012/europython/srzmt/

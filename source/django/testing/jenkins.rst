Jenkins
*******

Note: The following notes use the Django application name ``pk_common`` as an
example.

Links
=====

- http://pypi.python.org/pypi/django-jenkins
- `django-jenkins on github`_
- `A Python Love Story: Virtualenv and Hudson`_

Configuration
=============

Application
-----------

- Install ``django_jenkins``:

  ::

    pip install django-jenkins

- In your project ``settings.py``, add the following application:

  ::

    INSTALLED_APPS = (
        'django_jenkins',

- Tell ``django_jenkins`` which applications you want to test:

  ::

    # For Django, Jenkins run the tests for the following applications:
    PROJECT_APPS = (
        'pk_common',
    )

Jenkins
-------

- Install the following plugins:

  - Jenkins Violations plugin
  - Jenkins Cobertura Plugin
 
- Create a new Jenkins *Job*.  Choose *Build a free-style software project*...
- It is easiest to get Jenkins to run a shell script to run the tests.  This
  script can be used to create a virtual environment (and anything else you
  want to do.  See ``misc/jenkins-build.sh`` for a sample script.
- To configure the Jenkins project:

  - Set the *Project name*.  If using the ``misc/jenkins-build.sh`` script,
    then the *Project name* should be the name of the application folder.
  - Tick *Poll SCM* and use the following *Schedule*:

    ::

      */5 * * * *

  - *Add build step*, *Execute shell*, setting the *Execute shell*, *Command*
    to:

    ::

      bash -ex ./jenkins-build.sh ${JOB_NAME}

  - Tick *Publish Cobertura Coverage Report* and set the *Cobertura xml report
    pattern* to:

    ::

      pk_common/reports/coverage.xml

  - Tick *Publish JUnit test result report* and set the *Test report XMLs* to:

    ::

      pk_common/reports/TEST-*.xml

  - Tick *Report Violations* and set the *XML filename pattern* for *pylint*
    to:

    ::
      
      pk_common/reports/pylint.report

Issues
======

Fail Silently
-------------

``django_jenkins`` will fail silently if there are no unit tests to run.


.. _`django-jenkins on github`: https://github.com/kmmbvnr/django-jenkins
.. _`A Python Love Story: Virtualenv and Hudson`: http://jenkins-ci.org/content/python-love-story-virtualenv-and-hudson


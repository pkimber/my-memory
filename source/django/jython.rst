jython
******

Links
=====

- `Screencast - Django setup for GlassFish v3`_
- `Run Django applications on GlassFish v3 Preview`_

  - `Using Django on Jython`_
  - `Getting Started with Django Applications on GlassFish v3`_

- `More Django on SQL Server 2000`_
- `One Pager: Scripting support in GlassFish v3`_

Getting Started
===============

Glassfish
---------

- Download ``glassfish-v3-web-preview.zip`` from `v3 Preview`_.

  Note: This is smaller *Web Profile Preview*.

- Extract the GlassFish archive.  I installed to:

  ::

    c:\tools\glassfishv3\

- Start GlassFish:

  ::

    \tools\glassfishv3\bin\asadmin.bat start-domain

- To check GlassFish is running, browse to http://localhost:8080/, or for
  the admin interface, http://localhost:4848/
- Install the jython container:

  - Make sure the update tool is installed:

      ::

        cd \tools\glassfishv3
        bin\updatetool.bat

  - Run the update tool:

      ::

        updatetool\bin\updatetool.exe

  - Select *GlassFish v3 Jython Container*... and click *Install*.

- Set the path to your ``jython`` home:

  ::

    \tools\glassfishv3\bin\asadmin create-jvm-options -Djython.home="C\:\\tools\\jython2.5rc3"

Django
------

- Download and extract the Django archive.
- Install Django into jython:

  ::

    cd Django-1.0.2-final
    jython setup.py install

Project
-------

- Create a test Django project (in this example the project is called
  ``django_on_glassfish``):

  ::

    C:\tools\jython2.5rc3\Lib\site-packages\django\bin\django-admin.py startproject django_on_glassfish

- Don't forget to set the path to your ``jython`` home (see above).
- Change into your project folder and deploy the application:

  ::

    cd django_on_glassfish
    \tools\glassfishv3\bin\asadmin deploy .

  Note: If the command fails, check the GlassFish logs in
  ``glassfish/domains/domain1/logs/server.log`` (my original deployment
  failed because my ``jython.home`` was not set correctly).

- Browse to http://localhost:8080/django_on_glassfish
  (in this example ``django_on_glassfish`` is the name of my project).


.. _`Screencast - Django setup for GlassFish v3`: http://blogs.sun.com/alexismp/entry/new_screencast_django_setup_for
.. _`Run Django applications on GlassFish v3 Preview`: http://weblogs.java.net/blog/vivekp/archive/2009/06/run_django_appl_1.html
.. _`Using Django on Jython`: http://wiki.python.org/jython/DjangoOnJython
.. _`Getting Started with Django Applications on GlassFish v3`: http://blogs.sun.com/arungupta/entry/totd_85_getting_started_with
.. _`More Django on SQL Server 2000`: http://crankycoder.com/2009/01/15/more-django-on-sql-server-2000/
.. _`One Pager: Scripting support in GlassFish v3`: http://wiki.glassfish.java.net/attach/V3FunctionalSpecs/Scripting-one-pager.html
.. _`v3 Preview`: https://glassfish.dev.java.net/downloads/v3-preview.html


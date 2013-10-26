Google App Engine
*****************

- Install ``GoogleAppEngine_1.1.2.msi``:

  I installed to ``\\tools\\Google\\google_appengine\\``

- Install your sample application:

  I installed to
  ``C:\development\learn\python\google-app-engine\code-lab\wiki_step1``

  ::

    cd \tools\Google\google_appengine
    dev_appserver.py C:\development\learn\python\google-app-engine\code-lab\wiki_step1

  Note:

  - There are options for ``dev_appserver.py``, which allow it to behave as an
    SMTP server.
  - For the sample application, we are using the *markdown* third party library
    for Wiki text.

- http://localhost:8080

Notes
=====

- Can clear the database with a start-up option on ``dev_appserver.py``.
  When the app is deployed live, you have to use code to delete the objects.
- Can do a ``urlfetch`` to allow you to do RESTful type applications:
  http://code.google.com/appengine/docs/urlfetch/
- Mail API - Sender must be an application administrator or the current
  user.
- http://sites.google.com/site/io/


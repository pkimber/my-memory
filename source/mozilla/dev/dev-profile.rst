Profile
*******

Links
=====

`Setting up an extension development environment`_

Set-up
======

When doing development with Firefox (or Thunderbird), it is a good idea to
create a profile separate from your standard browsing environment.

For this example, my development profile will be called ``dev-xpcom-test``:

- Start a new instance of Firefox passing the name of your new profile:

  ::

    "%ProgramFiles%\Mozilla Firefox\firefox.exe" -no-remote -P dev-xpcom-test

- The first time you use the profile, a *Profile* dialog will appear where you
  can create the profile.  If the profile is already created, the browser will
  start without prompting.
- By default the profile is created in this folder:

  ::

    C:\Users\Patrick\AppData\Roaming\Mozilla\Firefox\Profiles\h33vgw96.dev-xpcom-test

Preferences
-----------

Setting development preferences can be done by typing ``about:config`` in the
Firefox toolbar:

::

  javascript.options.showInConsole                    true
  javascript.options.strict                           true




.. _`Setting up an extension development environment`: https://developer.mozilla.org/en/Setting_up_extension_development_environment


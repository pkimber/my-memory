Add-Ons
*******

ember-cli-update
================

Update Ember CLI Ember.js apps and addons (and Glimmer.js apps)::

  # cd into ``front`` (the folder containing 'package.json')
  yarn add ember-cli-update
  ember update

  # install new packages
  yarn

Issues
------

From `ember-cli-update`_, If you run into an error like::

  error: unrecognized input

You may need to update your git config color option like::

  git config --global color.ui auto


.. _`ember-cli-update`: https://github.com/ember-cli/ember-cli-update

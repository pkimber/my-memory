Getting Started
***************

.. highlight:: bash

Install
=======

Install nodejs: :doc:`../node/install`

Install the command line interface globally::

  sudo npm install -g grunt-cli

Getting Started
===============

Create a skeleton ``package.json`` in the root of your project:

.. code-block:: json

  {
    "name": "hatherleigh_info",
    "version": "0.0.01",
    "devDependencies": {
    }
  }

.. note:: Replace ``hatherleigh_info`` with the name of your project.

Install the Grunt task runner locally::

  npm install --save-dev grunt

.. note:: This will update your ``package.json`` file.

Create a skeleton ``Gruntfile.js`` in the root of your project:

.. code-block:: javascript

  module.exports = function(grunt) {

    // Project configuration.
    grunt.initConfig({
      pkg: grunt.file.readJSON('package.json'),

      // Task configuration goes here.

    });

    // Load plugins here.

    // Register tasks here.
    grunt.registerTask('default', []);
  };

Plugin
======

Combining static media::

  npm install --save-dev grunt-contrib-concat

.. code-block:: javascript

  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    // Task configuration goes here.
    concat: {
      app_css: {
        src: ['../../app/base/base/static/base/**/*.css'],
        dest: 'project/static/app.css'
      },
      vendor_css: {
        src: ['../../app/base/base/static/vendor/**/*.css'],
        dest: 'project/static/vendor.css'
      },
      app_js: {
        src: ['../../app/base/base/static/base/**/*.js'],
        dest: 'project/static/app.js'
      },
      vendor_js: {
        src: ['../../app/base/base/static/vendor/**/*.js'],
        dest: 'project/static/vendor.js'
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-concat');

Run::

  grunt --gruntfile=Gruntfile.js concat

Uglify
======

.. note:: ``uglify`` is for JavaScript only (not CSS)!

::

   npm install --save-dev grunt-contrib-uglify

Run::

  grunt --gruntfile=Gruntfile.js uglify


Usage
=====

If your project already contains a ``package.json`` file, then install the
dependencies by running::

  npm install

To run grunt::

  grunt --gruntfile=Gruntfile.js --base=.

Maven Site
**********

Intro
=====

Hudson makes the Maven site really easy...

Procedure
=========

To build a Maven site using Hudson:

- Create a new job in Hudson:

  - Easiest to copy an existing site.

    **Note**: I prefix all site builds with ``site__`` so they group nicely on
    the front page.

  - Set-up version control to just check out the individual module.  This works
    fine for a multi-module build as well (I guess we need up to date artifacts
    in the local Maven repository, but we would normally have a job which is
    installing everything).
  - For the Maven goals, just enter ``clean site``.  No need to deploy
    anything.

- Build the job...
- The Maven generated site can be viewed by clicking *Maven-generated site* on
  the front page for the project e.g:

  http://dev.stuff:8080/job/site__language_services/


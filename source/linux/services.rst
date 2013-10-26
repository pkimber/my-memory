Services
********

Links
=====

- `An introduction to services, runlevels, and rc.d scripts`_

Questions
=========

How do I run a service as a specified user?
-------------------------------------------

In the init script, ``su -c`` to the user you require.

25/10/2006 11:14 See *Notes* below...

How do I set the environment for a service?
-------------------------------------------

Either:

- Run the profile for the specified user e.g.
  ``source .bashrc`` or ``source .profile``
- Set-up the environment in the init script.

25/10/2006 11:14 See *Notes* below...

Notes
-----

::

  From: Paul B
  Sent: 25 October 2006 11:04
  To: Patrick Kimber
  Subject: Running a daemon as non-root

  Hi Patrick,

  I had a random thought about what we were discussing (briefly) yesterday.  I
  suggested that you should "su" to another user and source their profile..
  however.. it occurred to me that you dont know where their profile is
  (it could be ~/.profile or ~/.bashrc or similar depending on distro and
  configuration).. nightmare..

  Ive done some reading on the "su" command and found that if the first argument
  to su is a hyphen, the current directory and environment will be changed to
  what would be expected if the new user had actually logged on to a new session
  (rather than just taking over an existing session).  This removes the
  complications of setting up the environment for the user you have changed to.

  example;
  su - patrickk

  Hope this helps..

  Paul.


.. _`An introduction to services, runlevels, and rc.d scripts`: http://www.linux.com/article.pl?sid=06/01/03/1728227


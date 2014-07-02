clone
*****

`Mercurial clone through ssh`_

.. _`Mercurial clone through ssh`: http://www.k4ml.com/node/205

Usage
=====

To clone over ``ssh``::

  hg clone ssh://patrick@192.168.11.62//home/patrick/env env
  hg clone . ssh://patrick@server//home/patrick/repo/markdown

Note:

- Use an extra slash at the start of a path to specify an absolute path.
- If you get ``permission denied``, it might be because you don't have
  permission to write to your local folder!

Issues
******

.. note:

  Start by checking that the versions of Salt on ``master`` and ``minion`` are
  both up to date!

mapping values are not allowed here
===================================

Check the YAML file for a missing ``:``:

e.g. ``ssh.set_auth_key_from_file`` should have a colon appended...

Minion/Master public key does not match
=======================================

::

  The Salt Master server's public key did not authenticate!

The message will tell you where the master key is located e.g::

  The master public key can be found at:
  /etc/salt/pki/minion_master.pub

::

  rm /etc/salt/pki/minion_master.pub
  start salt-minion

None issues in template variables
=================================

When passing ``None`` to a template e.g::

  {% set option = pillar.get('option', None) %}

  /etc/cron.d/{{ site }}:
    file:
      - context:
        option: {{ option }}

The variable will be set to the string ``None``.  If you do a test on the
variable in the template e.g. ``{% if option %}``, then ``None`` will be
evaluated as ``True`` which is not what we want.

To solve this issue, set the variable to ``False`` if it doesn't exist e.g::

  {% set option = pillar.get('option', False) %}

e.g.
https://github.com/pkimber/salt/commit/f0c9dde501cfcbe7f4e9f48dc82e8061b8b16876

Pillar failed to render
=======================

Had an issue where the parse error, ``expected <block end>, but found
'<scalar>'`` was complaining about a line which I removed from the file.  To
solve the issue, I refreshed the pillar::

  salt '*' saltutil.refresh_pillar

State found in sls is unavailable
=================================

::

  State ssh.set_auth_key_from_file found in sls default.user is unavailable

I was trying to use a module when I should have been using a state!!

Undefined jinja variable
========================

This issue affects Salt version 0.17.1.  Both the master and the minion need to
be updated to solve the issue.

| https://github.com/saltstack/salt/issues/7625
| https://github.com/saltstack/salt/issues/8079

Need to replace the following file with the new version::

  /usr/share/pyshared/salt/utils/jinja.py

.. note::

  ``/usr/lib/pymodules/python2.7/salt/utils/jinja.py``
  is a symbolic link to
  ``/usr/share/pyshared/salt/utils/jinja.py``

To fix, copy the new ``jinja.py`` onto your master and minion::

  cd ~/repo/temp/
  cp /usr/share/pyshared/salt/utils/jinja.py jinja.py.orig
  wget https://raw.github.com/johnnoone/salt/1309ef98877b80990acba0a386bbe555882c4649/salt/utils/jinja.py
  cp ~/repo/temp/jinja.py /usr/share/pyshared/salt/utils/jinja.py

Restart the master and the minion... and you should be able to get Salt
version 0.17.1 working.

Issues
******

mapping values are not allowed here
===================================

Check the YAML file for a missing ``:``:

e.g. ``ssh.set_auth_key_from_file`` should have a colon appended...

Minion/Master public key does not match
=======================================

::

  The Salt Master server's public key did not authenticate!

The message will tell you where the master key is located e.g:

::

  The master public key can be found at:
  /etc/salt/pki/minion_master.pub

::

  rm /etc/salt/pki/minion_master.pub
  start salt-minion

Pillar failed to render
=======================

Had an issue where the parse error, ``expected <block end>, but found
'<scalar>'`` was complaining about a line which I removed from the file.  To
solve the issue, I refreshed the pillar:

::

  salt '*' saltutil.refresh_pillar

State found in sls is unavailable
=================================

::

  State ssh.set_auth_key_from_file found in sls default.user is unavailable

I was trying to use a module when I should have been using a state!!

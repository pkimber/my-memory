Firewall - UFW
**************

- :doc:`../../synergy`
- :doc:`../../ssh/issues`

Status
======

To see the status::

  ufw status

To view the log::

  tail -f /var/log/ufw.log

To open post ``24800`` for ``tcp`` from anywhere::

  ufw allow 24800/tcp

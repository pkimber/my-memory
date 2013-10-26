Ideas
*****

Strategy
========

- It is relatively simple to minimise attack profile/vectors on linux.
- Check out the *Ubuntu minimal install* for servers.

  - strip out what you don't need.
  - only install what you need

- Use the ``iptables`` firewall - only let in what you need.
- Ubuntu server is fine - could also consider Centos or Red Hat.
- Use the *CIS Security Benchmarks* from :doc:`links`.  Guides are available
  for hardening different operating systems - they are good because they show
  you step by step commands rather than running automated scripts.
- Could remove ``inetd``.  See *CIS Security Benchmarks* (above) for more
  information.
- Could consider integrating *SELinux*.  This has the concept of ``domains``
  which can be used to enhance security.

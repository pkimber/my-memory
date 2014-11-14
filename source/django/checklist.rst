Checklist
*********

Check out http://webdevchecklist.com/

Accessibility
=============

- http://michelf.com/projects/sim-daltonism/
- http://laneshill.me/2012/12/10-easy-things-all-web-developers-should-do-for-web-accessibility/

Security
========

- `2011 CWE/SANS Top 25 Most Dangerous Software Errors`_
- `Open Web Application Security Project (OWASP)`_
- sqlmap_ Automatic SQL injection and database takeover tool

.. _`2011 CWE/SANS Top 25 Most Dangerous Software Errors`: http://cwe.mitre.org/top25/
.. _`Open Web Application Security Project (OWASP)`: https://www.owasp.org/
.. _sqlmap: http://sqlmap.org/

Server
------

- Production machines should never have private keypairs (``authorized_keys``
  is OK) (from `Real-world Python deployment`_).
- Make a new ``virtualenv`` every time you deploy! (from `Real-world Python
  deployment`_).

.. _`Real-world Python deployment`: http://slacy.com/blog/2012/08/real-world-python-deployment-using-pip-virtualenv-outline/

Templates
=========

- Will it work with SSL?

Users
=====

- `Falsehoods Programmers Believe About Names`_

.. _`Falsehoods Programmers Believe About Names`: http://www.kalzumeus.com/2010/06/17/falsehoods-programmers-believe-about-names/

Views
=====

- :doc:`cache`
- Security?

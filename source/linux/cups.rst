CUPS
****

Administration
==============

http://localhost:631/

PDF
===

To install a CUPS PDF printer::

  sudo apt-get install cups-pdf

To check the install, you should see a *PDF* printer in *System*,
*Administration*, *Printing*.

If you print to this printer, the PDF file will appear in the following
folder::

  ~/PDF/

Issues
======

``/usr/lib/cups/backend/hp failed``
-----------------------------------

To solve this problem, log into the *Administration* interface:

- *Administration*
- *Manage Printers*
- Select the printer...
- *Maintenance*
- *Restart Printer* (or something like that).

Service
=======

::

  sudo /etc/init.d/cups restart

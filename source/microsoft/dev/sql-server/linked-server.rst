Linked Server
*************

Links
=====

sp_addlinkedserver_ (Looks a bit complicated...)

Management Studio
=================

Linked servers and their aliases will be displayed in *Server Objects*, *Linked
Servers*...

SQL
===

::

  SELECT TOP 10 * FROM [BOB].addresses.dbo.postcode_district WITH(NOLOCK)

In this example:

- ``BOB`` is the alias of the *Linked Server*.
- ``addresses`` is the name of the remote database.
- ``postcode_district`` is the name of the table.


.. _sp_addlinkedserver: http://msdn.microsoft.com/en-us/library/ms190479.aspx


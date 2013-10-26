python - pysvn
**************

Links
=====

- http://pysvn.tigris.org/
- `Nabble - tigris - pysvn`_
- Also see :doc:`python-bindings`

Download
========

For python 2.5, download ``py25-pysvn-svn152-1.6.1-1024.exe`` from
http://pysvn.tigris.org/project_downloads.html

Install
=======

Just run the installer.

Usage
=====

`pysvn Programmer's Guide`_

Determine pending changes
-------------------------

::

  import pysvn
  client = pysvn.Client()
  changes = client.status('./examples/pysvn')
  print 'files that have changed:'
  print [f.path for f in changes if f.text_status == pysvn.wc_status_kind.modified]

Folder
------

*Create*

See *Determine pending changes* (above) for details on creating the
``client`` object:

::

  client.add(folder_name)

*Move*

See *Determine pending changes* (above) for details on creating the
``client`` object:

::

  client.move(folder_name, move_to_path)

Properties
----------

*List*

::

  >>> import pysvn
  >>> client = pysvn.Client()
  >>> client.proplist(r'C:\create_everything.sql')
  [('C:\\create_everything.sql', {'svn:mime-type': 'application/octet-stream'})]

Also see ``getProperty`` method in source repository
``utility/delete_properties_all_sql_files_in_folders.py``

*Delete*

Create the client object (as above):

::

  >>> client.propdel('svn:mime-type', r'C:\create_everything.sql')
  >>> client.proplist(r'C:\create_everything.sql')
  []

Status
------

Also see ``isVersionControlled`` method in source repository
``utility/delete_properties_all_sql_files_in_folders.py``

::

  >>> results = client.status(r'C:\create_everything.sql')
  >>> if len(results):
  ...   isVersioned = results[0].get('is_versioned')
  ...
  >>> isVersioned
  1

::

  >>> s = client.status(r'C:\answer.sql')
  >>> for i in s:
  ...     print i
  ...     for k, v in i.iteritems():
  ...         print k, v
  ...
  <PysvnStatus u'C:\\answer.sql'>
  repos_lock None
  text_status unversioned
  repos_text_status none
  is_locked 0
  is_copied 0
  is_switched 0
  is_versioned 0
  prop_status none
  entry None
  path C:\answer.sql
  repos_prop_status none
  >>>


.. _`Nabble - tigris - pysvn`: http://www.nabble.com/tigris---pysvn-f10588.html
.. _`pysvn Programmer's Guide`: http://pysvn.tigris.org/docs/pysvn_prog_guide.html


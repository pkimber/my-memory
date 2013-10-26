Plugins
*******

CustomFieldAdminPlugin
======================

http://trac-hacks.org/wiki/CustomFieldAdminPlugin

::

  [components]
  customfieldadmin.api.* = enabled
  customfieldadmin.customfieldadmin.* = enabled

datefieldplugin
===============

Download
--------

Download ``datefieldplugin.zip`` from
http://trac-hacks.org/wiki/DateFieldPlugin.

Install
-------

Extract the archive to a temporary folder.  Change into the folder (Note: I
don't think we need to run the ``install`` command):

::

  cd datefieldplugin\0.10\
  python setup.py build
  python setup.py install

The ``TracDateField-1.0.1-py2.5.egg`` file, will be created.  Check the output
of the ``install`` command to find its location.  On our server, it was created
in:

::

  \tools\Python25\Lib\site-packages\

Copy the ``egg`` file to your Trac, ``plugins`` folder.

Configuration
-------------

28/03/2008 16:31:11 We have installed the ``datefieldplugin`` plugin.

Here are copies of bits of the install from the command line:

::

  C:\Documents and Settings\Administrator\Desktop\datefieldplugin\datefieldplugin\0.10>
  python setup.py build
  python setup.py install
  Installed c:\tools\python25\lib\site-packages\tracdatefield-1.0.1-py2.5.egg
  Processing dependencies for TracDateField==1.0.1
  Finished processing dependencies for TracDateField==1.0.1

Looks like the original download was possibly ``datefieldplugin.zip``.

Here is a copy of the ``trac.ini`` file: :download:`misc/trac.ini`

Looking at the file, I guess the important bits are:

::

  [ticket-custom]
  due_date = text
  due_date.date = true
  due_date.date_empty = true
  due_date.label = Date Due (dd-mm-yyyy)

  [components]
  datefield.* = enabled

  [datefield]
  format = dmy
  separator = -

Discussion Forum Plugin
=======================

http://trac-hacks.swapoff.org/wiki/DiscussionPlugin

email2trac
==========

Links
-----

- https://subtrac.sara.nl/oss/email2trac
- `Email2Trac on Windows`_

Setup
=====

Install Apache, James using the Drop Folder configuration,
:doc:`../../../java/apps/james/config`

Download ``email2trac.tar.gz``.

Extract ``email2trac.py.in``, copy to a *script* folder, and rename to
``email2trac.py``

Edit ``email2trac.py``, changing the location of the configuration file:

::

  if __name__ == '__main__':
      configfile = 'email2trac.conf'

Create and edit the ``email2trac.conf`` file:

::

  [DEFAULT]
  project: C:\repository\trac\my-test-trac
  ticket_update: 1
  tmpdir: C:\repository\temp\email2trac
  trac_version: 0.11
  debug: 5

Note:

- The ``project`` is the location of your Trac environment.
- Make sure the temporary folder exists...
- Set ``debug`` to view output...

Test the script by passing in the location of the configuration file and piping
in a single email file:

::

  cd c:\repository\trac\script\email2trac\
  python email2trac.py -f email2trac.conf < c:\repository\james\drop\trac\4D61696C313231303834393635383534342D31.Repository.FileStreamStore

Eclipse - Mylyn
===============

See Eclipse plugins, Mylyn, :doc:`../../../eclipse/plugins`

NavAddPlugin
============

Note: I think this feature is built into Trac 0.11.  For more information see
`Trac Navigation`_.

http://trac-hacks.org/wiki/NavAddPlugin

I didn't install this plugin, but here is an extract from ``trac.ini``:

::

  [components]
  navadd.* = enabled

  [navadd]
  add_items = mytickets
  mytickets.title = My Tickets
  mytickets.url = /trac/myrepo/report/7

PrivateTicketsPlugin
====================

Download
--------

Download ``privateticketsplugin.zip`` from
http://trac-hacks.org/wiki/PrivateTicketsPlugin

Build
-----

Use an SVN client to check out the source code for the plugin:
http://trac-hacks.org/svn/privateticketsplugin

Note: We had so many problems with the latest version of Trac... so I don't
know if this works!

(11/12/2008 13:16:18) Apply the patch described in this ticket,
http://trac-hacks.org/ticket/4154:

::

  +++ 0.11/privatetickets/policy.py       (working copy)
  @@ -68,8 +68,11 @@

           if perm.has_permission('TICKET_VIEW_CC'):
               had_any = True
  -            if perm.username in [x.strip() for x in tkt['cc'].split(',')]:
  -                return None
  +            # Patch from this issue:
  +            # http://trac-hacks.org/ticket/4154
  +            if tkt['cc'] is not None:
  +                if perm.username in [x.strip() for x in tkt['cc'].split(',')]:
  +                    return None

           if perm.has_permission('TICKET_VIEW_OWNER'):
               had_any = True

Change into the ``0.11`` folder:

  ::

    cd privateticketsplugin\0.11\
    python setup.py bdist_egg

The ``dist/TracPrivateTickets-2.0-py2.5.egg`` file, will be created.

Install
-------

Copy the ``egg`` file to your Trac, ``plugins`` folder.

Configuration
-------------

Enable the plugin by adding the following to your ``trac.ini`` file:

::

  [trac]
  permission_policies = PrivateTicketsPolicy, DefaultPermissionPolicy, LegacyAttachmentPolicy

  [components]
  privatetickets.* = enabled

  [privatetickets]
  group_blacklist = anonymous, authenticated

Sample permissions using the new ``TICKET_VIEW_GROUP`` permission can be
viewed by clicking here - :doc:`sample-permissions`

Note: For useful configuration information, see the ``README`` file in the
source distribution.

SearchAttachmentsPlugin
=======================

http://trac-hacks.org/wiki/SearchAttachmentsPlugin

Syntax Coloring
===============

`Syntax Coloring of Source Code`_

::

  easy_install Pygments

That is all you are supposed to have to do... but it doesn't work for me :(
Perhaps we need to re-start the process?

Have a look at http://trac-hacks.org/wiki/TracPygmentsPlugin.

Timing and Estimation Plugin
============================

http://trac-hacks.org/wiki/TimingAndEstimationPlugin

Download ``timingandestimationplugin_branches_trac0.11.zip``.

Extract to a temporary folder.  I extracted to:
``C:\\temp\\timingandestimationplugin\\``

Use ``easy_install`` to install the application:

Note: I could not get the plugin to install by just pointing ``easy_install``
at the ``svn`` repository...  In the end I created a command prompt,
*Run as administrator*, before running this command:

::

  easy_install -v c:\temp\timingandestimationplugin\branches\trac0.11\

Enable the plugin in your ``conf/trac.ini`` file:

::

  [components]
  timingandestimationplugin.* = enabled

Upgrade the Trac database:

::

  C:\>cd c:\repository\trac
  C:\repository\trac>trac-admin my-test-trac upgrade
  Timing and Estimation needs an upgrade

Re-start your web-server.

xmlrpcplugin
============

Links
-----

http://trac-hacks.org/wiki/XmlRpcPlugin

Eclipse plugins, Mylyn Trac, :doc:`../../../eclipse/plugins`

`Trac Repository Connector for Netbeans`_

Build
-----

Check out of SVN:

::

  svn co http://trac-hacks.org/svn/xmlrpcplugin xmlrpcplugin

Build:

::

  cd xmlrpcplugin\trunk\
  python setup.py bdist_egg

Deploy

::

  copy dist\TracXMLRPC-1.0.0-py2.5.egg c:\repository\trac\my-test-trac\plugins\

Configuration

Edit ``conf/trac.ini`` and add the following:

::

  [components]
  tracrpc.* = enabled

Test

  Login as an authenticated user and browse to:

  http://localhost/trac/my-test-trac/login/xmlrpc

Sample

::

  import xmlrpclib

  server = xmlrpclib.ServerProxy("http://patrick:password@localhost/trac/my-test-trac/login/xmlrpc")
  for method in server.system.listMethods():
    print method
    print '\n'.join(['  ' + x for x in server.system.methodHelp(method).split('\n')])
    print
    print


.. _`Email2Trac on Windows`: http://functionalelegant.blogspot.com/2008/03/email2trac-on-windows.html
.. _`Trac Navigation`: http://trac.edgewall.org/wiki/TracNavigation
.. _`Syntax Coloring of Source Code`: http://localhost/trac/my-test-trac/wiki/TracSyntaxColoring
.. _`Trac Repository Connector for Netbeans`: http://www.nabble.com/Trac-Repository-Connector-for-Netbeans-to20664618.html
